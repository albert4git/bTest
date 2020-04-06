"""
Roboterklasse zur Positionsbeschreibung und Veränderung von Objekten
in einem zweidimensionalen Koordinatennsystem.
"""


class Robot(object):
    def __init__(self, x=0, y=0, orientation="north", name="marvin"):
        self.position = [x, y]
        self.orientation = orientation
        self.name = name

    def __str__(self):
        """ Stringdarstellung einer Instanz  """
        s = self.name + " faces " + self.orientation
        s += " at position " + str(self.position)
        return s

    def __repr__(self):
        s = "(" + self.name + ", " + self.orientation
        s += ", " + str(self.position) + ")"
        return s

    def move(self, distance):
        """ Methode zum Bewegen eines Roboters in Richtung seiner
        aktuellen Orientierung.

        Wird ein Roboter x mit x.move(10) aufgerufen und ist dieser
        Roboter östlich orientiert, also x.getPosition() == ,,east''
        und ist beispielsweise [3,7] die aktuelle Position des
        Roboters, dann bewegt er sich 10 Felder östlich und befindet
        sich anschließend in Position [3,17].

        """

        if self.orientation == "north":
            self.position[1] += distance
        elif self.orientation == "south":
            self.position[1] -= distance
        elif self.orientation == "west":
            self.position[0] -= distance
        elif self.orientation == "east":
            self.position[0] -= distance

    def newOrientation(self, o):
        """ Mit der Methode newOrientation ändern wir die Orientierung
        des Roboters.

        o has to be in {"north","south","west","east"}

        Falls eine unbekannte Orientierung übergeben wird, wird der
        Roboter nicht bewegt.
        """

        if o in {"north", "south", "west", "east"}:
            self.orientation = o

    def getOrientation(self):
        """ Ein Aufruf von x.getOrientation() für einen Roboter x liefert
        dessen aktuelle Orientierung zurück, also eine der Richtungen
        "west", "south", "east" oder "north".
        """

        return self.orientation

    def getPosition(self):
        """Liefert eine 2er-Liste mit [x,y] zurück."""

        return self.position

    def setPosition(self, pos):
        """Damit kann man den Roboter auf eine neue Position im
        Koordinatensystem positionieren.

        pos muss eine Liste oder ein Tupel mit zwei Elementen sein.
        Ansonsten wird nichts getan."""

        if isinstance(pos, (tuple, list)) and len(pos) == 2:
            self.position = pos

    def rename(self, name):
        """ Damit kann man dem Roboter einen neuen Namen geben. """
        self.name = name

    def getName(self):
        """ Liefert den Namen des Roboters zurück. """
        return self.name


if __name__ == "__main__":
    from robot import Robot
    x = Robot(3, 4, "north", "Marvin")
    print(x)
    x.move(10)
    x.newOrientation("west")
    x.move(7)
    print(x)
    new_name = "Andrew"
    print(x.getName() + " will be renamed as " + new_name)
    x.rename(new_name)
    print("Hi, this is " + x.getName())
    x.setPosition([0, 0])
    print(x)
    x.__dict__
    x.__dict__
