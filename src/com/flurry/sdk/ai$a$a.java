package com.flurry.sdk;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class ai$a$a
  extends FilterOutputStream
{
  private ai$a$a(ai.a parama, OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    try
    {
      out.close();
      return;
    }
    catch (IOException localIOException)
    {
      ai.a.a(a, true);
    }
  }
  
  public void flush()
  {
    try
    {
      out.flush();
      return;
    }
    catch (IOException localIOException)
    {
      ai.a.a(a, true);
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      out.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      ai.a.a(a, true);
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      ai.a.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ai.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */