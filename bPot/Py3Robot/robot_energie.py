from datetime import date
today = date.today()

class Roboter:

    def __init__(self, name, baujahr, energie=100 ):
        self.name = name
        self.baujahr = baujahr
        self.energie = energie

    def __befinden(self):
        alter = today.year - self.baujahr
        if alter > 20:
            if self.energie < 50:
                return "In Anbetracht meines Alters nicht so schlecht!"
            else:
                return "Super. Vor allem in Anbetracht meines Alters!"
        else:
            if self.energie < 50:
                return "Ausgelaugt"
            else:
                return "Super!"

    befinden = property(__befinden)
  
if __name__ == "__main__":
    a = Roboter("Marvin", 1979, 49)
    b = Roboter("Caliban", 1993, 53)
    c = Roboter("Awesom-O", 2004, 90)
    d = Roboter("Clank", 2002, 30)
    print(a.befinden)
    print(b.befinden)
    print(c.befinden)
    print(d.befinden)
