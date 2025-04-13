if __name__ == "__main__":
    with open("./99-unsorted.sh", "r") as f:
        data = f.read()

    new_data = []

    try:
        for i in data.split("\n"):
            if i.startswith("#"):
                continue
            if i.strip() == "":
                continue
            if i.startswith("AddPackage"):
                print(i)
                get = input("[N/y]:")
                if get.lower() == "n" or get == "":
                    continue
                elif get.lower() == "y":
                    new_data.append(i)
                    data = data.replace(i, "")
                elif get.lower() == "q":
                    break

        with open("./99-unsorted_new.sh", "w") as f:
            f.write("\n".join(new_data))
        with open("./99-unsorted.sh", "w") as f:
            f.write(data)
    except Exception as e:
        print(e)
    except KeyboardInterrupt:
        print("KeyboardInterrupt")
