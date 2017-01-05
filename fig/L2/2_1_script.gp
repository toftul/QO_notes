reset

set term png truecolor enhanced font "Times, 15"
set output '2_1.png'

set sample 200

f(x,n) = exp(-x)*x**(n)/ (sqrt(2*3.1415926*n) * (n/2.718281828)**n)

set xlabel 'n'
set ylabel 'p_n'
set grid
set title 'Probability distribution'

set style fill transparent solid 0.5

p [0:30] f(2.1,x) w filledcurves x1 title '<n> \~ 1',f(15,x) w filledcurves x1 title '<n> >> 1'



