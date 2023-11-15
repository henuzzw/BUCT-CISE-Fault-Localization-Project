import cvs

if __name__ == '__main__':
    img_path = "images/1.jpg"
    img_data = cv2.imread(img_path)
    # numpy数组转图片
    img_data = np.linspace(0,255,100*100*3).reshape(100,100,-1).astype(np.uint8)
    cv2.imwrite("img.jpg",img_data) #