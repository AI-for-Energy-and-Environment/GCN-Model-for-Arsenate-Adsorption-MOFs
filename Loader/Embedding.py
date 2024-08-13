def read_embeddings(path, embed_dict):
    with open(path) as f:
        for row in csv.reader(f):
            embed_dict[row[0]] = row[1:]
    return embed_dict