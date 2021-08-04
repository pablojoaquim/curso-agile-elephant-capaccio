# MVP
Defino mi MVP con un ejemplo:  
>> ruby factura.rb 5 10 AL  
5 * $10 = $50  
AL(%4.0) = $2  
DTO(%0) = $0  
Total = $52  
Tiene que considerar los impuestos para los estados de Utah, Nvada, Texas, Alabama y California.  
Tiene que considerar los siguientes descuentos de acuerdo a la compra realizada:  
Más de  %  
$1,000  3%  
$5,000  5%  
$7,000  7%  
$10,000 10%  
$50,000 15%  
El MVP requiere el cálculo del Total.  
  
# Slicing  
1- Obtener los parámetros requeridos.   
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 AL" y devolver 52  
  
2- Utilizando el dato de la cant de objetos adquiridos multiplicarlo por 10 y sumarle 2.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 AL" y devolver 52  
Acc: Debe ejecutarse ">>ruby factura.rb 6 10 AL" y devolver 62  
  
3- Utilizando el dato del valor de cada objeto adquirido multiplicarlo por la cantidad, y sumarle 2.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 AL" y devolver 52  
Acc: Debe ejecutarse ">>ruby factura.rb 6 10 AL" y devolver 62  
Acc: Debe ejecutarse ">>ruby factura.rb 5 20 AL" y devolver 102  
Acc: Debe ejecutarse ">>ruby factura.rb 6 20 AL" y devolver 122  
  
4- Aplicar un incremento del 10% en cada cálculo.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 AL" y devolver 55  
Acc: Debe ejecutarse ">>ruby factura.rb 6 10 AL" y devolver 66  
  
5- Considerar el dato del estado en que se realizó la compra y aplicar un incremento de 10% para el estado XX y de 20% para otros.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 XX" y devolver 55  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 YY" y devolver 60  
  
6- Considerar un descuento de 50% fijo en cada cálculo.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 XX" y devolver 27.5  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 YY" y devolver 30  
  
7- Considerar el dato del estado en que se realizó la compra y aplicar un descuento de 5% para gastos menores o iguales a 10 y de 0% para otros.  
Acc: Debe ejecutarse ">>ruby factura.rb 5 5 XX" y devolver 26.125  
Acc: Debe ejecutarse ">>ruby factura.rb 5 10 XX" y devolver 52.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 XX" y devolver 550  
  
8- Considerar los siguientes incrementos por estado: UT-6.85% y de 0% para otros  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 UT" y devolver 534.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 YY" y devolver 500  
  
9- Considerar los siguientes incrementos por estado: UT-6.85%, NV-8% y de 0% para otros  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 UT" y devolver 534.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 NV" y devolver 540  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 YY" y devolver 500  
  
10- Considerar los siguientes incrementos por estado: UT-6.85%, NV-8%, TX-6.25% y de 0% para otros  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 UT" y devolver 534.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 NV" y devolver 540  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 TX" y devolver 531.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 YY" y devolver 500  
  
11- Considerar los siguientes incrementos por estado: UT-6.85%, NV-8%, TX-6.25%, AL-4% y de 0% para otros  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 UT" y devolver 534.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 NV" y devolver 540  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 TX" y devolver 531.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 AL" y devolver 520  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 YY" y devolver 500  
  
12- Considerar los siguientes incrementos por estado: UT-6.85%, NV-8%, TX-6.25%, AL-4%, CA-8.25% y de 0% para otros  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 UT" y devolver 534.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 NV" y devolver 540  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 TX" y devolver 531.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 AL" y devolver 520  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 CA" y devolver 541.25  
Acc: Debe ejecutarse ">>ruby factura.rb 5 100 YY" y devolver 500  
  
13- Considerar que si la compra es menor a 1000 se aplique un descuento del 3%, en otros casos no se aplica descuento:  
Acc: Debe ejecutarse ">>ruby factura.rb 1 1000 YY" y devolver 1000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 5000 YY" y devolver 4850 
  
14- Considerar que si la compra es mayor a 1000 y menor o igual a 5000 aplicar un descuento del 3%  
Acc: Debe ejecutarse ">>ruby factura.rb 1 1000 YY" y devolver 1000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 5000 YY" y devolver 4850  
Acc: Debe ejecutarse ">>ruby factura.rb 1 7000 YY" y devolver 6650   
  
15- Considerar que si la compra es mayor a 5000 y menor o igual a 7000 aplicar un descuento del 5%  
Acc: Debe ejecutarse ">>ruby factura.rb 1 1000 YY" y devolver 1000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 5000 YY" y devolver 4850  
Acc: Debe ejecutarse ">>ruby factura.rb 1 7000 YY" y devolver 6650  
Acc: Debe ejecutarse ">>ruby factura.rb 1 10000 YY" y devolver 9300 
  
16- Considerar que si la compra es mayor a 7000 y menor o igual a 10000 aplicar un descuento del 7%  
Acc: Debe ejecutarse ">>ruby factura.rb 1 1000 YY" y devolver 1000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 5000 YY" y devolver 4850  
Acc: Debe ejecutarse ">>ruby factura.rb 1 7000 YY" y devolver 6650  
Acc: Debe ejecutarse ">>ruby factura.rb 1 10000 YY" y devolver 9300  
Acc: Debe ejecutarse ">>ruby factura.rb 1 50000 YY" y devolver 45000  
  
17- Considerar que si la compra es mayor a 10000 y menor o igual a 50000 aplicar un descuento del 10%, y si es mayor a 50000 aplicar un descuento de 15%.
Acc: Debe ejecutarse ">>ruby factura.rb 1 1000 YY" y devolver 1000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 5000 YY" y devolver 4850  
Acc: Debe ejecutarse ">>ruby factura.rb 1 7000 YY" y devolver 6650  
Acc: Debe ejecutarse ">>ruby factura.rb 1 10000 YY" y devolver 9300  
Acc: Debe ejecutarse ">>ruby factura.rb 1 50000 YY" y devolver 45000  
Acc: Debe ejecutarse ">>ruby factura.rb 1 60000 YY" y devolver 51000  

18- Imprimir el cálculo del gasto de la forma: "1 * $1000 = $1000"  
Acc: Debe ejecutarse ">>ruby factura.rb 5 1000 YY" y devolver:  
"5 * $1000 = $5000"  
"4850"  
  
19- Imprimir el cálculo del impuesto aplicado de la forma: "YY(%0.0) = $0"  
Acc: Debe ejecutarse ">>ruby factura.rb 5 1000 YY" y devolver:  
"5 * $1000 = $5000"  
"YY(%0.0) = $0"  
"4850"  
  
20- Imprimir el cálculo del descuento aplicado de la forma: "DTO(%3) = $30"  
Acc: Debe ejecutarse ">>ruby factura.rb 5 1000 YY" y devolver:  
"5 * $1000 = $5000"  
"YY(%0.0) = $0"  
"DTO(%3) = $150"  
"4850"  

21- Imprimir el cálculo del total de la forma: "Total = $52"  
Acc: Debe ejecutarse ">>ruby factura.rb 5 1000 YY" y devolver:  
"5 * $1000 = $5000"  
"YY(%0.0) = $0"  
"DTO(%3) = $150"  
"Total = $4850"  





