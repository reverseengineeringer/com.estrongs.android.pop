package com.estrongs.fs.impl.usb;

import android.annotation.TargetApi;
import java.io.IOException;

@TargetApi(18)
class j
  implements a
{
  private int b = g.l();
  
  public j(g paramg, int paramInt)
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
    synchronized ()
    {
      if ((g.a(a)) || (g.b(a) == null)) {
        throw new IOException("Device is removed");
      }
    }
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */