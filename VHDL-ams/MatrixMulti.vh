function  matmul  ( a : t1; b:t2 ) return t3 is
variable i,j,k : integer:=0;
variable prod : t3:=(others => (others => (others => '0')));
begin
for i in 0 to numrows1-1 loop
for j in 0 to numcols2-1 loop
for k in 0 to numcols1-1 loop
   prod(i)(j) := prod(i)(j) + (a(i)(k) * b(k)(j));
end loop;
end loop;
end loop;
return prod;
end matmul;
