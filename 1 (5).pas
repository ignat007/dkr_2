var
  u,k,o:integer;
  vb,vbv:array of integer;
  bv:array [1..10] of integer;
  
begin
  writeln('Введите k');
  readln(k);
  k:=k+1;
  o:=1;
  writeln('Введите массив');
  for u:=1 to 10 do
    readln(bv[u]);
  SetLength(vb,k);
  SetLength(vbv,k);
  for u:=1 to k-1 do begin
    vb[u]:=u;
    end;
  writeln(vb);
  for u:=1 to k-1 do begin
    if vb[u] not in bv then begin
      vbv[o]:=vb[u];
      if o<Length(vbv) then
      o:=o+1;
      end;
  end;
  writeln(vbv);
end.