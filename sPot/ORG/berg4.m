/*
 * berg4.m
 * Copyright (C) 2020 red <red@red-Swift-SF113-31>
 *
 * Distributed under terms of the MIT license.
 */



A = [ 2, 0; 0, 2 ];
b = [ 2; 1 ];
x = A \ b

integrate(x/(x^3 + 1), x);
integrate(exp(a*x)*sin(x)*cos(x), x) ;


(%i3) integrate(exp(a*x)*sin(x)*cos(x), x) ;
                          a x
                        %e    (a sin(2 x) - 2 cos(2 x))
(%o3)                   -------------------------------
                                      2
                                  2 (a  + 4)
