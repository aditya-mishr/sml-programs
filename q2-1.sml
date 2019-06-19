type timer={hour:int,min:int,f:string};

fun check(x:string,y:string)=if x=y then false else true;

fun time_comr(x:timer,y:timer)=if check(#f x , #f y) then (if #f x = "AM" then true else false) else ( if #hour x = #hour y then #min x < #min y else (if #hour x = 12 then true else if  #hour y = 12 then false else #hour x < #hour y)); 


