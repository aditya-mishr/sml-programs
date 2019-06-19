type poly= (int * int)list;


fun add(x:poly,[])=x| add([],y:poly)=y| add(x::xs,y::ys) = if (#2x = #2y) then [(#1x + #1y,#2y)]@add(xs,ys) else if (#2x > #2y) then [x]@add(xs,y::ys) else [y]@add(x::xs,ys);






fun mul(x:int*int,[])=[]| mul(x:int*int,y::ys:poly) = [(#1x * #1y,#2x + #2y)]@mul(x,ys);




fun polymul([],w:poly)=[]|polymul(z:poly,[])=[]|polymul(z::zs,w)= let val p=mul(z,w);val q=polymul(zs,w) in add(p,q) end;


