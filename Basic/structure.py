import torch
from sklearn.preprocessing import StandardScaler

def struc_scaling(dataset):
    items = dataset.items
    y = torch.Tensor([item.struc for item in items]) 
    scaler = StandardScaler()
    scaler.fit(y) 
    for item in items:
        item.struc = scaler.transform(item.struc.reshape(1, -1))[0] 
    return dataset, scaler 