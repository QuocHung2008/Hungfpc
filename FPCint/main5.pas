uses crt;
var 
	i,i2,c,b,d,cod,o:integer;
	s1,s2,s3,s4: string;
	f:text;
Function TP(x:integer):integer;
	var 
		y,z:integer;
	Begin 
		z:=1;
		for y:=1 to x do 
			z:=z*2;
		if x = 0 then
			z:=1;
		TP:=z;
	end;
Begin 
	readln(s1);
	assign(f,'GiaiMa.txt');
	rewrite(f);
	for i2:=1 to length(s1) div 8 do
		Begin 
			d:=1;
			b:=0;
			s2:=copy(s1,1,8);
			delete(s1,1,8);
			for i:=length(s2) downto 1  do 
				Begin
					val(s2[d],c,cod);
					b:=b+(c*TP(i-1));
					inc(d);
				end;
			str(b,s4);
			s3:=s3+s4;
			Write(f,s4);
			
		end;
	close(f);
end.

