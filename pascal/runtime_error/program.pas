type t = (Pierwszy, Drugi);
 
var f: file;
g: t;
flag: integer;
 
begin
  assign(f, 'wont.dat');
 
  flag := 55;
  if flag = 0 then begin
    g := Drugi;
    rewrite(f);
    BlockWrite(f, g, sizeof(t));
  end else begin
    reset(f);
    BlockRead(f, g, sizeof(t));
    writeln(g);
  end;
 
  close(f);
end.