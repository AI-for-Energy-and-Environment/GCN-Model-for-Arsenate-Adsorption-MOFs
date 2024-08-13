def get_adjacency(smiles: str, path: str, index: int):

  mol = Chem.MolFromSmiles(smiles)
  adj_matrix = np.array(Chem.GetAdjacencyMatrix(mol))

  matrix_df = pd.DataFrame(adj_matrix)

  atom_symbols = get_atom_symbols(mol)

  matrix_df.columns = atom_symbols
  matrix_df.index = atom_symbols

  matrix_df.to_csv(f"{path}{index}.csv")

  return index + 1