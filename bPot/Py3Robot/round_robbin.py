def city_generator():
    cities = ["Paris","Berlin","London","Vienna"]
    for city in cities:
        yield city

def round_robbin(g):
    while True:
        for i in g():
            yield i

if __name__ == "__main__":
    for i in round_robbin(city_generator):
        print(i)



