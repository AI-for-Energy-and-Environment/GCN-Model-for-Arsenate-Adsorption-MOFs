def convert_to_tensor(data):
    return torch.tensor(data, dtype=torch.float32)

def items2data(items):
    names, mx, me, mn, mt = zip(*[(item.name, item.x, item.edge_index, item.node, item.topo) for item in items])
    y = [item.y for item in items]
    return names, mx, me, mn, mt, convert_to_tensor(y)