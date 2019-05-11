#!/bin/sh
#author :Goutham G



echo "MENU DRIVEN CALCULATOR"
echo "1.ADDITION"
echo "2.SUBTRACTION"
echo "3.MULTIPLICATION"
echo "4.DIVISION"
echo "5.MODULUS"
echo "6.EXIT"
op=0
until [ $op -eq "6" ]
do
	echo "Operation to be performed"
	read op
	if [ $op -eq "6" ]
	then
		echo "Thank you "
		break
	fi
	echo "Enter first number"
	read first
	echo "Enter the second number"
	read second

	echo "First : $first"
	echo "Second : $second"


	if [ $op -eq "1" ]
	then
		sum=`expr $first + $second`
		echo "Sum: $sum"



	elif [ $op -eq "2" ]
	then
		diff=`expr $first - $second`
		echo "Difference : $diff"



	elif [ $op -eq "3" ]
	then
		mul=`expr $first \* $second`
		echo "Product : $mul"



	elif [ $op -eq "4" ]
	then
		div=`expr $first /  $second`
		echo "Division : $div"


	elif [ $op -eq "5" ]
	then
		mod=`expr $first % $second`
		echo "Modulus : $mod"



	fi
done
