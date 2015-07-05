package com.estrongs.fs.impl.c;

import b.b.d;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public class g
  extends FilterInputStream
{
  private final d a;
  
  public g(InputStream paramInputStream, d paramd)
  {
    super(paramInputStream);
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
 * Qualified Name:     com.estrongs.fs.impl.c.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */