type time= int* int * string;
fun check(x:string,y:string)=if x=y then false else true;

fun time_com(x:time,y:time)=if check(#3x , #3y) then (if #3x = "AM" then true else false) else ( if #1x = #1y then #2x < #2y else (if #1 x = 12 then true else if  #1 y = 12 then false else #1 x < #1 y)); 
