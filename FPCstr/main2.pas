uses crt;
var
	a,d:real;
	c,b:integer;
	h:char;
Begin
	Write('nhaapj a:');
	readln(a);
	Write('nhaapj b:');
	readln(b);
	Write('nhaapj pheps tinhs:');
	readln(h);
	case h of
		'+': a:=a+b;
		'-': a:=a-b;
		'x': a:=a*b;
		':': a:=a/b;
		'^':
		Begin
			d:=a;
			for c:=1 to b-1 do
				a:=a*d;
		end;
	end;
	Writeln(a:0:1);
end.

	