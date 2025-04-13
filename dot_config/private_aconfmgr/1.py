if __name__ == "__main__":
    with open("./99-unsorted.sh", "r") as f:
        data = f.read()

    with open("./20-base.sh", "r") as f:
        base = f.read()

    for i in base.split("\n"):
        if i.startswith("#"):
            continue
        if i.strip() == "":
            continue
        if i in data:
            data = data.replace(i, "")
            print(i)

    with open("./99-unsorted.sh", "w") as f:
        f.write(data)
