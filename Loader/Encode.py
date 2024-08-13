from Loader.Processing import pre_processing

class MOF_encode():
    def __init__(self, name, node, linker, topo, prop,  struc=None, fact=None): 
        self.name = name
        self.node = pre_processing(node, False)
        self.linker = [".".join(pre_processing(linker))]
        self.topo = pre_processing(topo, False)
        self.y = prop
        self.struc = struc
        self.fact = fact