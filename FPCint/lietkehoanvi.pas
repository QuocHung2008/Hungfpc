// program Permutation; const
// InputFile = 'PERMUTE.INP'; OutputFile = 'PERMUTE.OUT'; max = 12;
// var
// n, i, k, a, b: longint;
// x: array[1..max] of longint; f: Text;
// procedure Swap(var X, Y: longint); {Thủ tục đảo giá trị hai tham biến X, Y} var
// Temp: longint; begin
// Temp := X; X := Y; Y := Temp; end;
// begin
// Assign(f, InputFile); Reset(f); ReadLn(f, n);
// Close(f);
//  // Assign(f, OutputFile); Rewrite(f);
// for i := 1 to n do x[i] := i; {Khởi tạo cấu hình đầu: x[1] := 1; x[2] := 2; ..., x[n] := n} repeat
// for i := 1 to n do Write(x[i], ' '); {In ra cấu hình hoán vị hiện tại} WriteLn;
// i := n - 1;
// while (i > 0) and (x[i] > x[i + 1]) do Dec(i);
// if i > 0 then {Chưa gặp phải hoán vị cuối (n, n-1, ..., 1)} begin
// k := n; {x[k] là phần tử cuối dãy}
// while x[k] < x[i] do Dec(k); {Lùi dần k để tìm gặp x[k] đầu tiên lớn hơn x[i]} Swap(x[k], x[i]); {Đổi chỗ x[k] và x[i]}
// a := i + 1; b := n; {Lật ngược đoạn cuối giảm dần, a: đầu đoạn, b: cuối đoạn} while a < b do
// begin
// Swap(x[a], x[b]); {Đảo giá trị x[a] và x[b]}
// Inc(a); {Tiến a và lùi b, tiếp tục cho tới khi a, b chạm nhau} Dec(b);
// end; end;
// until i = 0; {Toàn dãy là dãy giảm dần - không sinh tiếp được - hết cấu hình}
//  end.
{$M 65520 0 655360}
program SortingAlgorithmsDemo; uses crt, SysUtils;
const
InputFile = 'SORT.INP'; OutputFile = 'SORT.OUT'; max = 15000;
maxV = 15000;
  Frequency = 1193180 / 65536; {Tần số nhịp đồng hồ ≈ 18.2 lần/giây} nMenu = 12;
SMenu: array[0..nMenu] of String =
(
' 0. Display Input',
' 1. SelectionSort',
' 2. BubbleSort',
' 3. InsertionSort',
' 4. InsertionSort with binary searching', ' 5. ShellSort',
' 6. QuickSort',
' 7. HeapSort',
' 8. Distribution Counting', ' 9. Radix Exchange Sort', ' 10. Straight Radix Sort', ' 11. MergeSort',
' 12. Exit'
); type
TArr = array[1..max] of longint;
TCount = array[0..maxV] of longint; var
k: TArr;
n: longint;
selected: longint;
Stt1,t1: TTimeStamp;  {Biến tính nhịp đồng hồ}
procedure Enter; {Nhập dữ liệu, thủ tục này được gọi trước khi bắt đầu một thuật toán sắp xếp} var
f: Text; begin
Assign(f, InputFile); Reset(f); n := 0;
while not SeekEof(f) do
begin
Inc(n); Read(f, k[n]);
end;
Close(f);
Stt1 := DateTimeToTimeStamp(Now);         {Nhập dữ liệu xong tính thời gian ngay, thuật toán sắp xếp sẽ thực hiện ngay lập tức}
end;
procedure PrintInput; {In dữ liệu} var
i: longint; begin
Enter;
for i := 1 to n do Write(k[i]:8); Write('Press any key to return to menu...'); ReadKey
end;
procedure PrintResult; {In kết quả} var
f: Text; i: longint; ch: Char;
begin
t1:= DateTimeToTimeStamp(Now);            
Writeln('Running t1 = ', (t1.time - Stt1.time) / Frequency:1:10, ' (s)'); {Trước hết in ra thời gian chạy} Assign(f, OutputFile); Rewrite(f);
for i := 1 to n do Writeln(f, k[i]);
Close(f);
Write('Press <P> to print Output, another key to return to menu...');

  ch := ReadKey; Writeln(ch); if Upcase(ch) = 'P' then
begin
for i := 1 to n do Write(k[i]:8);
Writeln;
Write('Press any key to return to menu...'); ReadKey;
end; end;
procedure Swap(var x, y: longint); var
t: longint; begin
t := x; x := y; y := t; end;
{------------------ Sorting Algorithms ------------------} { SelectionSort}
procedure SelectionSort;
var
i, j, jmin: longint; begin
Enter;
for i := 1 to n - 1 do
begin
jmin := i;
for j := i + 1 to n do
  Delay(1000);
if k[j] < k[jmin] then jmin := j; if jmin <> i then Swap(k[i], k[jmin]);
end; PrintResult;
end;
{ BubbleSort} procedure BubbleSort; var
i, j: longint; begin
Enter;
for i := 2 to n do
for j := n downto i do
  Delay(1000);
if k[j - 1] > k[j] then Swap(k[j - 1], k[j]);
PrintResult; end;
{ InsertionSort} procedure InsertionSort; var
i, j, tmp: longint; begin
Enter;
for i := 2 to n do
begin
  Delay(1000);
tmp := k[i]; j := i - 1;
while (j > 0) and (tmp < k[j]) do
begin
k[j + 1] := k[j]; Dec(j);
end;
k[j + 1] := tmp;
end; PrintResult;

  end;
{ InsertionSort with Binary searching} procedure AdvancedInsertionSort;
var
i, inf, sup, median, tmp: longint; begin
Enter;
for i := 2 to n do
begin
  Delay(1000);
tmp := k[i];
inf := 1; sup := i - 1; repeat
median := (inf + sup) shr 1;
if tmp < k[median] then sup := median - 1 else inf := median + 1;
until inf > sup;
Move(k[inf], k[inf + 1], (i - inf) * SizeOf(k[1])); k[inf] := tmp;
end; PrintResult;
end;
{ ShellSort} procedure ShellSort; var
tmp: longint;
i, j, h: longint; begin
Enter;
h := n shr 1; while h <> 0 do
begin
  Delay(1000);
for i := h + 1 to n do
begin
tmp := k[i]; j := i - h;
while (j > 0) and (k[j] > tmp) do
begin
k[j + h] := k[j]; j := j - h;
end;
k[j + h] := tmp;
end;
h := h shr 1;
end; PrintResult;
end;
{ QuickSort} procedure QuickSort;
procedure Partition(L, H: longint); var
i, j: longint;
Pivot: longint; begin
if L >= H then Exit;
Pivot := k[L + Random(H - L + 1)]; i := L; j := H;
repeat
Delay(1000);
while k[i] < Pivot do Inc(i); while k[j] > Pivot do Dec(j); if i <= j then

  begin
if i < j then Swap(k[i], k[j]); Inc(i); Dec(j);
end; until i > j;
Partition(L, j); Partition(i, H); end;
begin Enter;
Partition(1, n);
PrintResult; end;
{ HeapSort} procedure HeapSort; var
r, i: longint;
procedure Adjust(root, endnode: longint); var
key, c: longint; begin
key := k[root];
while root shl 1 <= endnode do
begin
  Delay(1000);
c := root shl 1;
if (c < endnode) and (k[c] < k[c + 1]) then Inc(c); if k[c] <= key then Break;
k[root] := k[c]; root := c;
end;
k[root] := key;
end;
begin Enter;
for r := n shr 1 downto 1 do Adjust(r, n); for i := n downto 2 do
begin
Swap(k[1], k[i]); Adjust(1, i - 1);
end; PrintResult;
end;
{ Distribution Counting} procedure DistributionCounting; var
x: TArr;
c: TCount;
i, V: longint;
begin Enter;
FillChar(c, SizeOf(c), 0);
for i := 1 to n do Inc(c[k[i]]);
for V := 1 to MaxV do c[V] := c[V - 1] + c[V]; for i := n downto 1 do
begin
  Delay(1000);
V := k[i]; x[c[V]] := k[i]; Dec(c[V]);
end; k := x;

  PrintResult; end;
{ Radix Exchange Sort} procedure RadixExchangeSort; const
MaxBit = 13; var
MaskBit: array[0..MaxBit] of longint; MaxValue, i: longint;
procedure Partition(L, H, BIndex: longint); var
i, j, Mask: longint; begin
if L >= H then Exit;
i := L; j := H; Mask := MaskBit[BIndex]; repeat
Delay(1000);
while (i < j) and (k[i] and Mask = 0) do Inc(i); while (i < j) and (k[j] and Mask <> 0) do Dec(j); Swap(k[i], k[j]);
until i = j;
if k[j] and Mask = 0 then Inc(j); if BIndex > 0 then
begin
Partition(L, j - 1, BIndex - 1); Partition(j, H, BIndex - 1);
end; end;
begin Enter;
for i := 0 to MaxBit do MaskBit[i] := 1 shl i; maxValue := k[1];
for i := 2 to n do
if k[i] > MaxValue then maxValue := k[i]; i := 0;
while (i < MaxBit) and (MaskBit[i + 1] <= MaxValue) do Inc(i); Partition(1, n, i);
PrintResult;
end;
{ Straight Radix Sort} procedure StraightRadixSort; const
Radix = 256;
nDigit = 2; var
t: TArr;
p: longint; Flag: Boolean;
function GetDigit(key, p: longint): longint; begin
if p = 0 then GetDigit := key and $FF
else GetDigit := key shr 8; end;
procedure DCount(var x, y: TArr; p: longint); var
c: array[0..Radix - 1] of longint;
i, d: longint; begin
FillChar(c, SizeOf(c), 0);

  for i := 1 to n do begin
  Delay(1000);
d := GetDigit(x[i], p); Inc(c[d]); end;
for d := 1 to Radix - 1 do c[d] := c[d - 1] + c[d]; for i := n downto 1 do
begin
d := GetDigit(x[i], p); y[c[d]] := x[i]; Dec(c[d]);
end; end;
begin Enter;
Flag := True;
for p := 0 to nDigit - 1 do
begin
if Flag then DCount(k, t, p) else DCount(t, k, p);
Flag := not Flag;
end;
if not Flag then k := t; PrintResult;
end;
{ MergeSort} procedure MergeSort; var
t: TArr; Flag: Boolean; len: longint;
procedure Merge(var Source, Dest: TArr; a, b, c: longint); var
i, j, p: longint; begin
p := a; i := a; j := b + 1; while (i <= b) and (j <= c) do
begin
  Delay(1000);
if Source[i] <= Source[j] then
begin
Dest[p] := Source[i]; Inc(i);
end else
begin
Dest[p] := Source[j]; Inc(j);
end; Inc(p);
end;
if i <= b then
Move(Source[i], Dest[p], (b - i + 1) * SizeOf(Source[1])) else
Move(Source[j], Dest[p], (c - j + 1) * SizeOf(Source[1])); end;
procedure MergeByLength(var Source, Dest: TArr; len: longint); var
a, b, c: longint; begin
a := 1; b := len; c := len shl 1; while c <= n do
begin
Delay(1000);
  Merge(Source, Dest, a, b, c);
a := a + len shl 1; b := b + len shl 1; c := c + len shl 1; end;
if b < n then Merge(Source, Dest, a, b, n) else
Move(Source[a], Dest[a], (n - a + 1) * SizeOf(Source[1])); end;
begin Enter;
len := 1; Flag := True; FillChar(t, SizeOf(t), 0); while len < n do
begin
if Flag then MergeByLength(k, t, len) else MergeByLength(t, k, len);
len := len shl 1;
Flag := not Flag;
end;
if not Flag then k := t; PrintResult;
end;
{---------------- End of Sorting Algorithms ----------------}
function MenuSelect: longint; var
ch: longint; begin
Clrscr;
Writeln('Sorting Algorithms Demos; Input: SORT.INP; Output: SORT.OUT'); for ch := 0 to nMenu do Writeln(SMenu[ch]);
Write('Enter your choice: '); Readln(ch);
MenuSelect := ch;
end;
begin repeat
selected := MenuSelect; Writeln(SMenu[selected]); case selected of
0: PrintInput;
1: SelectionSort;
2: BubbleSort;
3: InsertionSort;
4: AdvancedInsertionSort; 5: ShellSort;
6: QuickSort;
7: HeapSort;
8: DistributionCounting; 9: RadixExchangeSort; 10: StraightRadixSort; 11: MergeSort;
12: Halt;
end; until False;
end.