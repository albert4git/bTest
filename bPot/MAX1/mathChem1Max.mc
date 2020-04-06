/*AAA===============================================================*/
/* [wxMaxima batch file version 1] [ DO NOT EDIT BY HAND! ]*/
/* [ Created with wxMaxima version 16.12.x-unofficial ] */
/* [wxMaxima: comment start ]
Definition der Mengen M und N. Vergleiche M und N.
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
M : {a, b, c, d};
N : {a, b, c, d, d, a};
/* [wxMaxima: input   end   ] */


/* [wxMaxima: comment start ]
Offensichtlich sind beide Mengen gleich, da die Elemente d
und a in N nicht zweifach zu beruecksichtigen sind.
Die Abfrage, ob die Menge M das Element a bzw. x enthaelt,
erfolgt ueber elementp:
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
elementp(a, M);
elementp(x, M);
/* [wxMaxima: input   end   ] */


/* [wxMaxima: comment start ]
Liste die Elemente einer Menge M auf und bestimme die Anzahl
der Elemente.
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
reset();
M : {a, b, c, d};
n : 0;
for i in M do
(
 print("Die Menge M hat das Element", i),
 n : n + 1
);
print("Anzahl der Elemente in der Menge M:", n);
/* [wxMaxima: input   end   ] */


/* [wxMaxima: comment start ]
Zunaechst wurden mit reset() alle internen Speicher
geloescht. Die Variable i durchlaeuft durch die
Schleifenkonstruktion for i in M do ...  nacheinander
alle Elemente der Menge M. Um die Anzahl der Elemente
festzustellen, wird dabei die Variable n hochgezaehlt.
n muss zunaechst initialisiert, d.h. auf den Wert 0
gesetzt werden. Die Anweisung n : n + 1 ist nicht im Sinne
einer mathematischen Gleichung zu verstehen, sondern bewirkt,
dass der Variablen n als neuer Wert das Ergebnis
der Operation n + 1 zugewiesen wird.
   [wxMaxima: comment end   ] */
/*BBB===============================================================*/


/*AAA===============================================================*/
/* [wxMaxima batch file version 1] [ DO NOT EDIT BY HAND! ]*/
/* [ Created with wxMaxima version 16.12.x-unofficial ] */
/* [wxMaxima: comment start ]
Bilden der Vereinigungsmenge zweier Mengen
mittels des Operators union:
                                                                 WXM 1.4
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
reset();
M : {a, b, c, d};
N : {a, b, c, d};
P : {c, d, e, f};
Q : {x, x, z};
union(M, N) ;
union(M, P) ;
union(M, Q) ;
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/



/*AAA===============================================================*/
/* [wxMaxima: input   start ] */
reset();
M : {a, b, c, d};
N : {a, b, c, d};
P : {c, d, e, f};
Q : {x, x, z};
intersection(M, N);
intersection(M, P);
intersection(M, Q);
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/



/*AAA===============================================================*/
/* [wxMaxima: input   start ] */
reset();
A: {a, b, c, d};
B: {c, d};
cartesian_product(A, B);
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/


/*AAA===============================================================*/
/* [wxMaxima: input   start ] */
s : 0$
for i : 1 thru 100 do
    s : s+i;
s;
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
sum(i, i, 1, 100);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
kill(n);
nusum(i, i, 1, n);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
nusum(k, k, m, n);
nusum(2*l+1, l, 0, (n-1));
nusum(k^2, k, 1, n);
nusum(k^3, k, 1, n);
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/


/*AAA===============================================================*/
/* [wxMaxima: input   start ] */
solve(x^2 = 2 ,x);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
solve(a*x^2 + b*x + c = 0, x);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
kill(A, a, b, c, x);
A : solve(a*x^2 + b*x + c = 0 , x);
a :  2;
b :  3;
c : -1;
for l : 1 thru 2 do
 block([x, TEST],
       print("Loesung  ", l, ":  ", ev(rhs(A[l]))),
       x : ev(rhs(A[l])),
       TEST :  a*x^2 + b*x + c ,
       print("Einsetzen liefert (symbolisch):", TEST),
       print("Einsetzen liefert (numerisch) :", float(TEST))
      );
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/

/*AAA===============================================================*/
/* [wxMaxima batch file version 1] [ DO NOT EDIT BY HAND! ]*/
/* [ Created with wxMaxima version 16.12.x-unofficial ] */
/* [wxMaxima: comment start ]
Loese die Gleichung x^2 = -1 nach x auf:
                                                                 WXM 1.25
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
solve(x^2 = -1, x);
/* [wxMaxima: input   end   ] */


/* [wxMaxima: comment start ]
Die imaginaere Zahl i wird also von Maxima durch
%i dargestellt. %i ist daher ein reservierter
Variablenname und darf vom Nutzer nicht verwendet werden.
Das Rechnen mit komplexen Zahlen erfolgt nun in der
Weise wie man es vom Umgang mit reellen Zahlen
gewohnt ist:
                                                                 WXM 1.26
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
(5+%i*3) + (7-%i*2);
/* [wxMaxima: input   end   ] */


/* [wxMaxima: input   start ] */
rectform((5+%i*3) * (7-%i*2));
/* [wxMaxima: input   end   ] */


/* [wxMaxima: comment start ]
Einige kompliziertere Beispiele sind:
                                                                 WXM 1.28
   [wxMaxima: comment end   ] */


/* [wxMaxima: input   start ] */
rectform((5+%i*3) / (7-%i*2));
rectform((1+%i)^4);
rectform((5+%i*3)^2 / (1+%i));
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/

/*AAA===============================================================*/
/* [wxMaxima: input   start ] */
z: 5 + 12*%i;
conjugate(z);
realpart(z);
imagpart(z);
abs(z);
sqrt(realpart(z)^2 + imagpart(z)^2);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
z: 5 + 12*%i;
conjugate( conjugate(z) );
(z + conjugate(z)) / 2;
(z - conjugate(z)) / (2*%i);
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/

/*AAA===============================================================*/

/* [wxMaxima: input   start ] */
a : -3 + %i*4;
b : -1;
c :  1 + %i;
d : polarform(3*exp(%i*%pi/3));
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
polarform(a);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
polarform(b);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
polarform(c);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
rectform (d);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
rectform (a*c);
polarform(a*c);
/* [wxMaxima: input   end   ] */
/*BBB===============================================================*/

/*AAA===============================================================*/
/* [wxMaxima batch file version 1] [ DO NOT EDIT BY HAND! ]*/
/* [ Created with wxMaxima version 16.04.2 ] */

/* [wxMaxima: input   start ] */
a  : matrix([ 3],
            [ 1]);
b  : matrix([-1],
            [ 4]);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
if get('mathchem, 'version) = false then load(mathchem)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, a+b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, a-b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, 3*a+2*b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, 2*a)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, -1*a)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, -a)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
a  : matrix([1],
            [0]);

b  : matrix([0],
            [1]);
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, a+b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, a-b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, b, 3*a+2*b)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, 2*a)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, -1*a)$
/* [wxMaxima: input   end   ] */

/* [wxMaxima: input   start ] */
plot_2Dvektor(a, -a)$
/* [wxMaxima: input   end   ] */

/* Maxima can't load/batch files which end with a comment! */
"Created with wxMaxima"$
/*BBB===============================================================*/

/*AAA===============================================================*/
/*BBB===============================================================*/

/*AAA===============================================================*/
/*BBB===============================================================*/


/*AAA===============================================================*/
/*BBB===============================================================*/


/*AAA===============================================================*/
/*BBB===============================================================*/


/*AAA===============================================================*/
/*BBB===============================================================*/


/*AAA===============================================================*/
/*BBB===============================================================*/

/*AAA===============================================================*/
/*BBB===============================================================*/




