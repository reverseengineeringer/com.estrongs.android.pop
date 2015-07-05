package com.estrongs.io.archive.aeszip;

import de.a.a.a.a.h;
import java.io.InputStream;

class e
  extends InputStream
{
  private long a;
  private long b;
  private boolean e;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  e(a parama, long paramLong1, long paramLong2)
  {
    if ((!c) && (paramLong1 < 0L)) {
      throw new AssertionError();
    }
    if ((!c) && (paramLong2 < 0L)) {
      throw new AssertionError();
    }
    a = paramLong2;
    b = paramLong1;
  }
  
  void a()
  {
    e = true;
  }
  
  public int available()
  {
    a.a(d);
    long l2 = a;
    long l1 = l2;
    if (e) {
      l1 = l2 + 1L;
    }
    if (l1 > 2147483647L) {
      return Integer.MAX_VALUE;
    }
    return (int)l1;
  }
  
  public int read()
  {
    int i = 0;
    a.a(d);
    if (a <= 0L) {
      if (e) {
        e = false;
      }
    }
    int j;
    do
    {
      return i;
      return -1;
      d.b.d(b);
      j = d.b.b();
      i = j;
    } while (j < 0);
    b += 1L;
    a -= 1L;
    return j;
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (paramInt2 <= 0)
    {
      paramInt1 = i;
      if (paramInt2 < 0) {
        throw new IndexOutOfBoundsException();
      }
    }
    else
    {
      a.a(d);
      if (a > 0L) {
        break label60;
      }
      if (!e) {
        break label58;
      }
      e = false;
      paramArrayOfByte[paramInt1] = 0;
      paramInt1 = 1;
    }
    label58:
    label60:
    do
    {
      return paramInt1;
      return -1;
      i = paramInt2;
      if (paramInt2 > a) {
        i = (int)a;
      }
      d.b.d(b);
      paramInt2 = d.b.a(paramArrayOfByte, paramInt1, i);
      paramInt1 = paramInt2;
    } while (paramInt2 <= 0);
    b += paramInt2;
    a -= paramInt2;
    return paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */