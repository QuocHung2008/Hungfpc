uses crt;
var 
	Max,i:integer;
	s1:string;
	s2:char;
	f1,f2:text;
	A: array['0'..'9'] of integer;
Begin 
	assign(f1,'CHUSO.INP');
	reset(f1);
	readln(f1);
	readln(f1,s1);
	close(f1);
	for i:=1 to length(s1) do 
		Begin 
			A[s1[i]]:=A[s1[i]]+1;
			if A[s1[i]] > Max then 
				Max:=A[s1[i]];
		end;
	assign(f2,'CHUSO.OUT');
	rewrite(f2);
	for s2:='0' to '9' do
		if A[s2] = Max then 
			Begin 
				Write(f2,s2,' ',Max);
				Break;
			end;
	close(f2);
end.

