var
  juss,opermemory:string;
  memory,countermemory:array of string;
  intmemory:array of integer;
  n,m,mn,k,lg,memhold,memcount,big,bigm:integer;
  
begin
  readln(juss);
  juss:=juss+' ';
  lg:=Length(juss);
  mn:=0;
  k:=0;
  memhold:=0;
  memcount:=0;
  opermemory:='';
  SetLength(memory,memhold);
  for n:=1 to lg do begin
    if (juss[n]<>' ') and (mn=0) then
      mn:=n;mol
    if (mn<>0) and (juss[n]=' ') then
      k:=n;
    if (mn<>0) and (k<>0) then begin
      for m:= mn to k do begin 
        opermemory:=opermemory+juss[m];
      end;
      mn:=0;
      k:=0;
      if opermemory not in memory then begin
        memhold:=memhold+1;
        SetLength(memory,memhold);
        memory[memhold-1]:=opermemory;
      end;
      memcount:=memcount+1;
      SetLength(countermemory,memcount);
      countermemory[memcount-1]:=opermemory;
      opermemory:='';
    end;
  end;
  SetLength(intmemory,memhold);
  for n:=1 to memhold-1 do begin
    intmemory[n-1]:=0;
  end;
  for n:=0 to memhold-1 do begin
    for m:=0 to memcount-1 do begin
      if memory[n]=countermemory[m] then begin
        intmemory[n]:=intmemory[n]+1;
        end;
      end;
  end;
  big:=intmemory[0];
  bigm:=0;
  for n:=0 to memhold-1 do begin
    if big < intmemory[n] then begin
      big:=intmemory[n];
      bigm:=n;
      end;
    end;
  writeln(memory[bigm]);
end.