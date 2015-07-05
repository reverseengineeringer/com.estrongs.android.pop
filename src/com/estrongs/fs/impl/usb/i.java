package com.estrongs.fs.impl.usb;

import java.io.IOException;

class i
  implements a
{
  private int b = g.l();
  
  public i(g paramg, int paramInt)
  {
    b = paramInt;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt)
  {
    synchronized ()
    {
      if ((g.a(a)) || (g.b(a) == null)) {
        throw new IOException("Device is removed");
      }
    }
    return paramInt;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte;
    synchronized ()
    {
      if ((g.a(a)) || (g.b(a) == null)) {
        throw new IOException("Device is removed");
      }
    }
    return paramInt1;
  }
  
  public int b(byte[] paramArrayOfByte, int paramInt)
  {
    synchronized ()
    {
      if ((g.a(a)) || (g.b(a) == null)) {
        throw new IOException("Device is removed");
      }
    }
    return paramInt;
  }
  
  public int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte;
    int i;
    synchronized ()
    {
      if ((g.a(a)) || (g.b(a) == null)) {
        throw new IOException("Device is removed");
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */