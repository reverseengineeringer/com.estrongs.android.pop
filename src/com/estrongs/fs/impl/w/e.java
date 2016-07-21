package com.estrongs.fs.impl.w;

import de.aflx.sardine.Sardine;
import java.io.IOException;
import java.io.OutputStream;

public class e
  extends OutputStream
{
  private Sardine a;
  private OutputStream b = null;
  private String c;
  private String d;
  private String e;
  private boolean f = false;
  
  public e(OutputStream paramOutputStream, Sardine paramSardine, String paramString1, String paramString2, String paramString3)
  {
    b = paramOutputStream;
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
      b.a = localIOException.getMessage();
      throw localIOException;
    }
    finally
    {
      a.destroy();
    }
  }
  
  public void flush()
  {
    try
    {
      b.flush();
      return;
    }
    catch (IOException localIOException)
    {
      b.a = localIOException.getMessage();
      f = true;
      throw localIOException;
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      b.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      b.a = localIOException.getMessage();
      f = true;
      throw localIOException;
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      b.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      b.a = paramArrayOfByte.getMessage();
      f = true;
      throw paramArrayOfByte;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      b.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
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
 * Qualified Name:     com.estrongs.fs.impl.w.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */