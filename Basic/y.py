def y_scaling(dataset): 
    items = dataset.items
    y = torch.Tensor([item.y for item in items]) 
    scaler = StandardScaler()
    scaler.fit(y) 
    print(scaler.mean_, scaler.var_) 
    for item in items:
        item.y = scaler.transform(item.y.reshape(1, -1))[0] 
    return dataset, scaler 
