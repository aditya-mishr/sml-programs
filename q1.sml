
fun add1(m,n) = if n=0 then m else m+n+add1(m,n-1);
exception MisgreaterthanN;
fun sum(m,n) = if m>n then raise MisgreaterthanN else add1(m,n);


fun bino_coeff(n,r)= if r=1 then n else n*bino_coeff(n-1,r-1) div r; 
