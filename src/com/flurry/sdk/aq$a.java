package com.flurry.sdk;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class aq$a
  extends BufferedOutputStream
{
  private boolean a = false;
  
  private aq$a(OutputStream paramOutputStream)
  {
    super(paramOutputStream);
  }
  
  private boolean a()
  {
    return a;
  }
  
  public void close()
  {
    try
    {
      super.close();
      return;
    }
    catch (IOException localIOException)
    {
      a = true;
      throw localIOException;
    }
  }
  
  public void flush()
  {
    try
    {
      super.flush();
      return;
    }
    catch (IOException localIOException)
    {
      a = true;
      throw localIOException;
    }
  }
  
  public void write(int paramInt)
  {
    try
    {
      super.write(paramInt);
      return;
    }
    catch (IOException localIOException)
    {
      a = true;
      throw localIOException;
    }
  }
  
  public void write(byte[] paramArrayOfByte)
  {
    try
    {
      super.write(paramArrayOfByte);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      a = true;
      throw paramArrayOfByte;
    }
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      super.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      a = true;
      throw paramArrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.aq.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */