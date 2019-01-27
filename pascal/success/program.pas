program CreateFile;
 
uses
 Sysutils;
 
const
  IN_FNAME = 'input.txt';
  OUT_FNAME = 'output.txt';
 
var
  tfOut: TextFile;
  tfIn: TextFile;
  s: string;
 
begin

// Set the name of the file that will be read
  AssignFile(tfIn, IN_FNAME);
 
  // Embed the file handling in a try/except block to handle errors gracefully
  try
    // Open the file for reading
    reset(tfIn);
 
    // Keep reading lines until the end of the file is reached
    while not eof(tfIn) do
    begin
      readln(tfIn, s);
    end;
 
    // Done so close the file
    CloseFile(tfIn);
 
  except
    on E: EInOutError do
     writeln('File handling error occurred. Details: ', E.Message);
  end;

  // Set the name of the file that will be created
  AssignFile(tfOut, OUT_FNAME);
 
  // Use exceptions to catch errors (this is the default so not absolutely requried)
  {$I+}
 
  // Embed the file creation in a try/except block to handle errors gracefully
  try
    // Create the file, write some text and close it.
    rewrite(tfOut);
 
    writeln(tfOut, s);
 
    CloseFile(tfOut);
 
  except
    // If there was an error the reason can be found here
    on E: EInOutError do
      writeln('File handling error occurred. Details: ', E.ClassName, '/', E.Message);
  end;
end.