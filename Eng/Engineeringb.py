import torch
from torch import nn
import torch_geometric.nn as pyg_nn
from torch.nn import GRU
from torch_geometric.nn import Set2Set

class MOFNet_FNN(nn.Module):
    def __init__(self, params, ni, dim, aggr):
        super(MOFNet_FNN, self).__init__()
        
        self.topo_emb = nn.EmbeddingBag(params["topo_num"], params["embed_dim"], padding_idx=params["topo_pad"])
        
        layers = [] 
        layers.append(nn.Linear(ni + params["embed_dim"], 2 * dim))
        layers.append(nn.ReLU())
        layers.append(nn.Linear(2 * dim, dim)) 
        layers.append(nn.ReLU())
        layers.append(nn.Linear(dim, 1))
        self.layers = nn.Sequential(*layers)
        
    def forward(self, data):
        x = self.topo_emb(data.topo)
        x = torch.flatten(x, start_dim=1)
        
        if self.params["use_struc"]:
            x = torch.cat([x, data.struc], dim=1) 
        
        x = self.layers(x)
        return x