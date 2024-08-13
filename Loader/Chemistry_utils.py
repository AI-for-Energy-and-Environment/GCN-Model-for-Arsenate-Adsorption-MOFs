from typing import List, Text
from rdkit import Chem

def dict_create(item, item_dict):
    item_list = item
    for n in item_list:
        item_dict[n]
    return item_dict

def get_iden(atom) -> Text:

    formal_charge = atom.GetFormalCharge()
    h_num = atom.GetTotalNumHs()

    if atom.GetIsAromatic():
        atom_symbol = atom.GetSymbol().lower()
    else:
        atom_symbol = atom.GetSymbol()

    return f"[{atom_symbol}H{h_num}|{'+' * formal_charge}-{'-' * -formal_charge}]"

def get_atom_symbols(mol: Chem.Mol) -> List[str]:

  symbols = []
  for atom in mol.GetAtoms():
    symbols.append(get_iden(atom))

  return symbols