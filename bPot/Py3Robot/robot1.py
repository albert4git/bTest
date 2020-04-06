class Robot(object):
    def __init__(self, name):
        self.name = name

    def __del__(self):
        prnt(self.name + " -.Roboter wurde zerstoert ")

    def __GetName(self):
        return self.__name

    def __SetName(self, name):
        if name == "Hugo":
            self.__name = "Marvin"
        else:
            self.__name = name

    name = property(__GetName, __SetName)


x = Robot("Marvin")
print(x.name)

y = Robot("Yona")
print(y.name)
