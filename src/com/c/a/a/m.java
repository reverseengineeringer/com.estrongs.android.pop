package com.c.a.a;

import java.io.IOException;
import java.io.InputStream;

class m
  extends InputStream
{
  public boolean a = false;
  private final k b;
  private byte[] c = new byte['䀀'];
  private int d = 0;
  private int e = 0;
  private Object f = new Object();
  private boolean g = false;
  
  m(k paramk)
  {
    b = paramk;
  }
  
  void a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if ((a) || (g)) {
      return;
    }
    Object localObject = f;
    if (paramBoolean) {}
    try
    {
      g = true;
      if ((paramArrayOfByte != null) && (paramArrayOfByte.length != 0))
      {
        if (e + paramArrayOfByte.length > c.length)
        {
          int j = (paramArrayOfByte.length + (e - d)) * 2;
          int i = j;
          if (j < c.length) {
            i = c.length;
          }
          byte[] arrayOfByte = new byte[i];
          System.arraycopy(c, d, arrayOfByte, 0, e - d);
          c = arrayOfByte;
          e -= d;
          d = 0;
        }
        System.arraycopy(paramArrayOfByte, 0, c, e, paramArrayOfByte.length);
        e += paramArrayOfByte.length;
      }
      f.notifyAll();
      return;
    }
    finally {}
  }
  
  public int available()
  {
    synchronized (f)
    {
      int i = e;
      int j = d;
      return i - j;
    }
  }
  
  public void close()
  {
    a = true;
    synchronized (f)
    {
      f.notifyAll();
      return;
    }
  }
  
  public int read()
  {
    if (a) {
      throw new IOException("Stream closed");
    }
    if ((b.j()) && (e == d)) {
      return -1;
    }
    synchronized (f)
    {
      if ((!g) && ((b instanceof o)) && (!a) && (!b.j()) && (e == d)) {
        ((o)b).a(this);
      }
    }
    if (e == d) {
      return -1;
    }
    byte[] arrayOfByte = c;
    int i = d;
    d = (i + 1);
    i = arrayOfByte[i];
    return i & 0xFF;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */