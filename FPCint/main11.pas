uses crt;
var 
	N,a,i,k:longint;
	
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

Function KT(i:longint):Boolean;
	var z:longint;
	Begin 
		KT:=true;
		z:=i;
		while z > 9 do
			Begin
				z:= z div 10;
				if NT(z) = false then
					exit(false);
			end;
	end;

Function LT(N:longint):longint;
	Begin
		LT:=1;
		for a:=1 to N do
			LT:= LT * 10;
	end;

Begin
	readln(N);
	for k:= LT(N-1) to (LT(N)-1) do
		Begin
			i:=k;
			if KT(i) = true then
				if NT(i) = true then
				Begin
					textcolor(green);
					Write(i,' ');
				end 
				else	
				Begin
					textcolor(white);
					Write(i,' ');
				end ;


		end;
	Writeln;
end.



// program sieunguyento;

// var n,j: longint;
// A,SNT:array[0..10] of longint;

// Function KTNT(x:longint):boolean;
// var i:longint;
// begin
// if x=1 then begin KTNT:=false; exit; end
// else
// For i:=2 to trunc(sqrt(x)) do
// if x mod i = 0 then begin
// KTNT := false;
// exit;
// end;
// KTNT := true;
// end;
 
// procedure Sieunguyento(i:integer);
// var j:integer;
// begin
// for j:=1 to 9 do
// begin
// A[i]:=j; 
// Snt[i]:=SNT[i-1]*10+ A[i];
// if ktnt(Snt[i]) then
// 	if i=n then 
// 		writeln(Snt[i])
// 	else
// 		Sieunguyento(i+1);
// end;
// end;

// begin
// readln(n); SNT[0]:=0;
// Sieunguyento(1);
// readln
// end.