uses crt;
var 
	c,i,s1:integer;
function CHB(c:integer):boolean;
	var
		s4,s5:string;
	Begin
		str(c,s4);
		s5:='';
		for i:=length(s4) downto 1 do
			s5:=s5+s4[i];
		if s4 = s5 then 
			CHB:=false;
	end;
Begin 
	readln(s1);
	for c:=s1 downto 1 do
		if CHB(c) = false then 
			Begin
				Writeln(c);
				break;
			end;
end.