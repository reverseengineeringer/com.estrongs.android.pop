package com.dianxinos.library.notify.network;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class h
  extends FilterOutputStream
{
  private h(g paramg, OutputStream paramOutputStream)
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
      g.a(a, true);
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
      g.a(a, true);
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
      g.a(a, true);
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
      g.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.network.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */