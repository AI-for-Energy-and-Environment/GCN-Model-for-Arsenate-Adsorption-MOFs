class EarlyStopping():
    def __init__(self, patience=5, min_delta=0): 
        self.patience = patience 
        self.min_delta = min_delta 
        self.counter = 0 
        self.best_loss = None 
        self.early_stop = False 
        self.update = False 

    def __call__(self, val_loss): 
        if self.best_loss == None:
            self.best_loss = val_loss
            self.update = True 
        elif self.best_loss - val_loss > self.min_delta:
            self.best_loss = val_loss
            self.counter = 0
            self.update = True 
        elif self.best_loss - val_loss < self.min_delta:
            self.update = False
            self.counter += 1
            if self.counter >= self.patience:
                print('INFO: Early stopping')
                self.early_stop = True 
