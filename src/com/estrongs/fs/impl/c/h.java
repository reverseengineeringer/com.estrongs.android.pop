package com.estrongs.fs.impl.c;

import b.b.d;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class h
  extends FilterOutputStream
{
  private final d a;
  
  public h(OutputStream paramOutputStream, d paramd)
  {
    super(paramOutputStream);
    a = paramd;
  }
  
  public void close()
  {
    super.close();
    if (a != null) {}
    try
    {
      a.e();
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */