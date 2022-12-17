unit PTK1;
interface
	Function PTK(donchat :string):real;
implementation
	Function PTK(donchat :string):real;
	var ketqua: real;
	begin

		Case donchat of
			'H':ketqua:=1;
			'He':ketqua:=4;
			'Li':ketqua:=7;
			'Be':ketqua:=9;
			'B':ketqua:=11;
			'C':ketqua:=12;
			'N':ketqua:=14;
			'O':ketqua:=16;
			'F':ketqua:=19;
			'Ne':ketqua:=20;
			'Na':ketqua:=23;
			'Mg':ketqua:=24;
			'Al':ketqua:=27;
			'Si':ketqua:=28;
			'P':ketqua:=31;
			'S':ketqua:=32;
			'Cl':ketqua:=35.5;
			'Ar':ketqua:=39.9;
			'K':ketqua:=39;
			'Ca':ketqua:=40;
			'Cr':ketqua:=52;
			'Mn':ketqua:=55;
			'Fe':ketqua:=56;
			'Cu':ketqua:=64;
			'Zn':ketqua:=65;
			'Br':ketqua:=80;
			'Ag':ketqua:=108;
			'Ba':ketqua:=137;
			'Hg':ketqua:=201;
			'Pb': ketqua:=207;
			'(SO4)': ketqua:=96;
			'(OH)':ketqua:=17;
			'(NO3)':ketqua:=62;
			'(CO3)':ketqua:=60;
			'(PO4)':ketqua:=95;
		end;
		PTK:=ketqua;
	end;
end.