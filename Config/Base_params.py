from Config.Module import *

def get_params(case):
    params = {}
    params["input_data"] = '.../...'
    params["output_path"] = '.../...'
    params["prop"] = ["Capacity"]
    params["struc"] = ["GLD", "PLD", "LCD", "q", "VSA", "GSA", "VF", "AV"]
    params["fact"] = ["Tem", "pH", "Dosage", "Concentration"] 

    params["rand_seed"] = 7

     # Data loader
    params["y_scaler"] = False
    params["run_state"] = False
    params["run_number"] = 12000

    # Neural network
    params["use_chem"] = True
    if not params["use_chem"]:
        params["output_path"] = ".../..."
    params["use_struc"] = True
    params["use_fact"] = True

    # Random test state
    params["rand_test"] = False
    params["rand_cycle"] = 10
    if params["rand_test"]:
        params["output_path"] = ".../..."

    # node2vec
    params["adj_gen_state"] = False
    params["n2v_emb_state"] = False
    params["use_n2v_emb"] = False

    params["embed_dim"] = 2

    # optimizer
    params["lr"] = 0.005
    params["epoch"] = 2000
    params["scheduler_patience"] = 5
    params["scheduler_factor"] = 0.9
    params["earlystop_er_patience"] = 10

    return params