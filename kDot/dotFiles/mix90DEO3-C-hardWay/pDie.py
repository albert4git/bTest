# Ziffernsumme ___ Grundkurs Python 3 0.1.2d Dokumentation.html
# Die Aufgabe besteht darin, eine dreistellige Zahl zu finden, die folgende Bedingungen erfüllt:
#     Die Ziffernsumme einer dreistelligen Zahl ist gleich 18.
#     Die Hunderterstelle ist um 6 größer als das 2-fache der Zehnerstelle.
#     Die Einerstelle ist um 6 größer als das 3-fache der Zehnerstelle.

# Lösung:

# Definiert man die Variablen h als die Hunderterziffer, z als die Zehnerziffer und e als die Einerziffer, so ist die Ziffernsumme gleich z + h + e. Aus der Aufgabenstellung lassen sich damit folgende drei Gleichungen aufstellen:
#     Die Ziffernsumme einer dreistelligen Zahl ist 18:
#     z + h + e = 18
#     Die Hunderterstelle ist um 6 größer als das 2-fache der Zehnerstelle.
#     h - 6 = 2 \cdot z
#     Die Einerstelle ist um 6 größer als das 3-fache der Zehnerstelle.
#     e - 6 = 3 \cdot z
# Dieses Gleichungsystem kann mittels Sympy gelöst werden. Der Code dazu lautet beispielsweise:

import sympy as sy

h, z, e = sy.S('h z e'.split())

equations = [
    sy.Eq(z + h + e, 18),
    sy.Eq(h - 6, 2 * z),
    sy.Eq(e - 6, 3 * z),
]

sy.solve(equations)
print(sy.solve(equations))

# Ergebnis: {h: 8, z: 1, e: 9}
