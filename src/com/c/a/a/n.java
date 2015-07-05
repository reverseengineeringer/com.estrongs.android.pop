package com.c.a.a;

import java.io.IOException;
import java.io.OutputStream;

class n
  extends OutputStream
{
  private final l a;
  private byte[] b;
  private int c;
  private Object d = new Object();
  private boolean e = false;
  
  n(int paramInt, l paraml)
  {
    a = paraml;
    b = new byte[paramInt - 11];
    c = 0;
  }
  
  void a(boolean paramBoolean)
  {
    synchronized (d)
    {
      byte[] arrayOfByte = new byte[c];
      System.arraycopy(b, 0, arrayOfByte, 0, c);
      a.a(paramBoolean, arrayOfByte);
      c = 0;
      return;
    }
  }
  
  public void close()
  {
    if (!e) {
      synchronized (d)
      {
        e = true;
        if (!a.j()) {
          a(true);
        }
        return;
      }
    }
  }
  
  public void flush()
  {
    if (c > 0) {
      a(false);
    }
  }
  
  public void write(int paramInt)
  {
    write(new byte[] { (byte)paramInt }, 0, 1);
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((a.j()) || (e)) {
      throw new IOException("stream closed");
    }
    if (paramArrayOfByte == null) {
      throw new NullPointerException();
    }
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 + paramInt2 > paramArrayOfByte.length)) {
      throw new IndexOutOfBoundsException();
    }
    if (paramInt2 == 0) {
      return;
    }
    Object localObject = d;
    int j;
    for (int i = 0;; i = j + i)
    {
      if (i < paramInt2) {}
      try
      {
        int k = b.length - c;
        j = k;
        if (paramInt2 - i < k) {
          j = paramInt2 - i;
        }
        System.arraycopy(paramArrayOfByte, paramInt1 + i, b, c, j);
        c += j;
        if (c != b.length) {
          continue;
        }
        a.a(false, b);
        c = 0;
      }
      finally {}
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */