package com.estrongs.fs.impl.r;

import de.aflx.sardine.Sardine;
import java.io.IOException;
import java.io.InputStream;

class d
  extends InputStream
{
  private Sardine a;
  private InputStream b = null;
  private String c;
  private String d;
  private String e;
  private boolean f = false;
  
  public d(InputStream paramInputStream, Sardine paramSardine, String paramString1, String paramString2, String paramString3)
  {
    b = paramInputStream;
    a = paramSardine;
    c = paramString1;
    d = paramString2;
    e = paramString3;
  }
  
  public void close()
  {
    try
    {
      b.close();
      return;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    finally
    {
      a.destroy();
    }
  }
  
  public int read()
  {
    try
    {
      int i = b.read();
      return i;
    }
    catch (IOException localIOException)
    {
      b.a = localIOException.getMessage();
      f = true;
      throw localIOException;
    }
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    try
    {
      int i = b.read(paramArrayOfByte);
      return i;
    }
    catch (IOException paramArrayOfByte)
    {
      b.a = paramArrayOfByte.getMessage();
      f = true;
      throw paramArrayOfByte;
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      paramInt1 = b.read(paramArrayOfByte, paramInt1, paramInt2);
      return paramInt1;
    }
    catch (IOException paramArrayOfByte)
    {
      b.a = paramArrayOfByte.getMessage();
      f = true;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.r.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */