import json
from textwrap import indent


if __name__ == "__main__":
    with open("berita.json") as data_file:
        raw_data = json.load(data_file)
    
    print(raw_data)