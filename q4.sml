infix **;
infix ++;
infix //;
infix %;
structure ComplexNumber = struct
	infix ++;

	fun (a:real,b:real) ++ (c:real,d:real)=(a+c,b+d);





	infix **;

	fun (a:real,b:real) ** (c:real,d:real)=(a*c - b*d,b*c + a*d);


	infix //;
	
	fun 1 // (a:real,b:real)=( a/(a*a + b*b), ~b/(a*a + b*b)); 
	

	infix %;

	fun (a:real, b:real) % (c:real, d:real) = (a,b) ** ( 1 // (c, d));end;


	
