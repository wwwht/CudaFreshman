import cv2
import numpy as np
import matplotlib.pyplot as plt 

def myWarpaffine(img,M,d_size,constant=(0, 0, 0)):
    # 其中 M 为 原图变为目标图的变换矩阵，将缩放后的图恢复到原图需要取逆变换
    M_inv = cv2.invertAffineTransform(M)
    # constant 填充的常量
    constant = np.array(constant)
    # o_h, o_w 图像的原始尺寸
    o_h, o_w = img.shape[:2]
    # 缩放后的尺寸
    d_h, d_w = d_size
    # 图像变换后的结果
    dst_img = np.full((d_h, d_w, 3), constant, dtype=np.uint8)
    # o_range bool lambda函数，判断
    o_range = lambda p: p[0] >= 0 and p[0] < o_w and p[1] >= 0 and p[1] < o_h
    # 思路：
    # 1. 找到目标图上的一点p，方向映射到原图上的四个点p1, p2,p3,p4
    for y in range(d_h):
        for x in range(d_w):
            # 缩放后图上的一点,变换矩阵的
            homogeneous = np.array([[x, y, 1]]).T
            
            # 恢复到原图的尺寸
            ox, oy = M_inv @ homogeneous
            # print(ox, oy)
            # p1   p2
            #    p
            # p3   p4
            #np.floor(ox) 类型为np.float64
            low_ox = int(np.floor(ox))
            low_oy = int(np.floor(oy))
            high_ox = low_ox + 1
            high_oy = low_oy + 1
            # 
            p = ox - low_ox, oy - low_oy
            p1_w = (1 - p[0]) * (1 - p[1]) # p,p1的面积
            p2_w = p[0] * (1 - p[1])
            p3_w = (1 - p[0]) * p[1]
            p4_w = p[0] * p[1]
            # 四个点的坐标，
            p1 = low_ox, low_oy
            p2 = high_ox, low_oy
            p3 = low_ox, high_oy
            p4 = high_ox, high_oy
            # 避免超出图片范围
            p1_value = img[p1[1], p1[0]] if o_range(p1) else constant
            p2_value = img[p2[1], p2[0]] if o_range(p2) else constant
            p3_value = img[p3[1], p3[0]] if o_range(p3) else constant
            p4_value = img[p4[1], p4[0]] if o_range(p4) else constant
            dst_img[y, x] = p1_w * p1_value + p2_w * p2_value + p3_w * p3_value + p4_w * p4_value    
    return dst_img

if __name__ == "__main__":
    img_o = cv2.imread("./cat1.png")
    print(img_o.shape)
    # 图片旋转中心、旋转角度、缩放倍数 
    # 旋转中心为左上角，旋转角度逆时针30°，缩放倍数0.6
    M = cv2.getRotationMatrix2D((0, 0), -30, 0.6)
    or_test = cv2.warpAffine(img_o, M, (320, 320))
    my_test = myWarpaffine(img_o,M,(320, 320))
    cv2.imwrite('./or_test.png', or_test)
    cv2.imwrite('./my_test.png', my_test)
    # cv2.waitKey(0)  