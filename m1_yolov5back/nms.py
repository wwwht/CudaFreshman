from torch import Tensor
import torch
import numpy as np

def box_area(boxes: Tensor) ->Tensor:
    """
    Computes the area of a set of bounding boxes, which are specified by its
    (x1, y1, x2, y2) coordinates.
    Arguments:
        boxes (Tensor[N, 4]): boxes for which the area will be computed. They
            are expected to be in (x1, y1, x2, y2) format
    Returns:
        area (Tensor[N]): area for each box
    """
    return (boxes[:,2] - boxes[:, 0]) * (boxes[:, 3] - boxes[:, 1])


box =  torch.tensor([[2,3.1,7,5],[3,4,8,4.8],[4,4,5.6,7],[0.1,0,8,1]]) 
print(box.shape)
print(box_area(box))