import cv2
import mediapipe as mp
import time
import math


class poseDetector():
    def __init__(self):
        self.mpDraw = mp.solutions.drawing_utils
        self.mpPose = mp.solutions.pose
        self.pose = self.mpPose.Pose(min_detection_confidence=0.7)
    def findPose(self, img, draw=True):
        imgRGB = cv2.cvtColor(img, cv2.COLOR_BGR2RGB)
        self.results = self.pose.process(imgRGB)
        if self.results.pose_landmarks:
            if draw:
                self.mpDraw.draw_landmarks(img, self.results.pose_landmarks,
                                           self.mpPose.POSE_CONNECTIONS)
        return img
    def findPosition(self, img, draw=True):
        self.lmList = []
        if self.results.pose_landmarks:
            h, w, c = img.shape
            for id, lm in enumerate(self.results.pose_landmarks.landmark):
                # print(id, lm)
                cx, cy = int(lm.x * w), int(lm.y * h)
                test = (cx in range(0, w)) and (cy in range(0, h))
                self.lmList.append([test, id, cx, cy])
                if draw:
                    cv2.circle(img, (cx, cy), 5, (255, 0, 0), cv2.FILLED)
        return self.lmList

    def inPicture(self, img):
        if len(self.lmList) == 0:
            return "Step in front of the camera"
        else:
            for i in range(33):
                if self.lmList[i][0] == False:
                    return 'Step back until your whole \n body is in the picture'
            return "Follow the pose at the top left"


    def findAngle(self, img, p1, p2, p3, draw=True):
        # Get the landmarks
        x1, y1 = self.lmList[p1][2:]
        x2, y2 = self.lmList[p2][2:]
        x3, y3 = self.lmList[p3][2:]
        # Calculate the Angle
        angle = math.degrees(math.atan2(y3 - y2, x3 - x2) -
                             math.atan2(y1 - y2, x1 - x2))
        if angle == 0:
            angle += 360
        # print(angle)
        # Draw
        if draw:
            cv2.line(img, (x1, y1), (x2, y2), (255, 255, 255),2)
            cv2.line(img, (x3, y3), (x2, y2), (255, 255, 255), 2)
            cv2.circle(img, (x1, y1), 7, (0, 0, 255), cv2.FILLED)
            cv2.circle(img, (x1, y1), 10, (0, 0, 255), 2)
            cv2.circle(img, (x2, y2), 7, (0, 0, 255), cv2.FILLED)
            cv2.circle(img, (x2, y2), 10, (0, 0, 255), 2)
            cv2.circle(img, (x3, y3), 7, (0, 0, 255), cv2.FILLED)
            cv2.circle(img, (x3, y3), 10, (0, 0, 255), 2)
            cv2.putText(img, str(int(angle)), (x2 - 50, y2 + 50),
                        cv2.FONT_HERSHEY_PLAIN, 2, (0, 0, 255), 2)
        return angle
def main():
    cap = cv2.VideoCapture(0)
    pTime = 0
    detector = poseDetector()
    while True:
        success, img = cap.read()
        img = detector.findPose(img)
        lmList = detector.findPosition(img, draw=False)
        if len(lmList) != 0:
            print(lmList[14])
            cv2.circle(img, (lmList[14][1], lmList[14][2]), 15, (0, 0, 255), cv2.FILLED)
        cTime = time.time()
        fps = 1 / (cTime - pTime)
        pTime = cTime
        cv2.putText(img, str(int(fps)), (70, 50), cv2.FONT_HERSHEY_PLAIN, 3,
                    (255, 0, 0), 3)
        cv2.imshow("Image", img)
        cv2.waitKey(1)

if __name__ == "__main__":
    main()