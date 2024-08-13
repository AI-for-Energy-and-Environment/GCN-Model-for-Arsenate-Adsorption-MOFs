def pre_processing(molecule_string, has_bracket=True):

  if has_bracket:
    atom_list = [atom for atom in molecule_string.replace(" ","").split("'")
                 if atom not in ["[","]",","]]
  else:
    atom_list = molecule_string.split(",")

  return atom_list