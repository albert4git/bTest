class Plist(list):

    def __init__(self, l):
        list.__init__(self, l)

    def push(self, item):
        self.append(item)

    def splice(self, offset, length, replacement):
        self[offset:offset+length] = replacement

if __name__ == "__main__":
    x = Plist([33,456,8,34,99])
    x.push(47)
    print(x)
    x.splice(2,3,["Hey", "you"])
    print(x)
