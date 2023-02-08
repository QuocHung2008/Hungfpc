unit hung;
interface
	Function NT(var x: longint): Boolean;
	procedure Swap1(var x,y: longint);
	procedure bbs(var y: longint; P: array of longint);
IMPLEMENTATION
	Function NT(var x: longint): Boolean;
		Var y: longint;
		Begin
			NT:=true;
			if (x = 2) then
					exit(true);
			if x < 2 then 
				exit(false)
			else
				for y:=2 to trunc(sqrt(x)) do
					if x mod y = 0 then
						exit(false);
		end;

	procedure Swap1(var x,y: longint);
		var 
			tmp: longint;
		Begin
			tmp:= x;
			x:=y;
			y:=tmp;
		end;
	procedure bbs(var y: longint;P: array of longint);
		var 
			tmp,tmp2: longint;
		Begin 
			for tmp:=1 to y do 
				for tmp2:= tmp +1 to y do 
					if P[tmp] > P[tmp2] then 
						Swap1(P[tmp],P[tmp2]);
		end;
end.