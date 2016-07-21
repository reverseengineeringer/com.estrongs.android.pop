package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.a.i;
import java.util.Arrays;

public final class e
  implements f
{
  private static final String a = e.class.getSimpleName();
  private boolean b = false;
  private final long c;
  private final int d;
  private boolean e = false;
  private final int f;
  private long g;
  
  public e(long paramLong1, int paramInt1, boolean paramBoolean, int paramInt2, long paramLong2)
  {
    c = paramLong1;
    d = paramInt1;
    e = paramBoolean;
    f = paramInt2;
    g = paramLong2;
  }
  
  public e(i parami, int paramInt, long paramLong1, long paramLong2)
  {
    parami = new aa(parami, paramInt);
    int j = parami.d(0);
    paramInt = j & 0xF;
    j >>>= 4;
    f = (paramInt + j + 1);
    g = paramLong1;
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Invalid length length " + paramInt);
    case 0: 
      d = 0;
    }
    for (;;)
    {
      switch (j)
      {
      default: 
        throw new IllegalArgumentException("Unknown cluster length " + j);
        d = parami.d(1);
        continue;
        d = parami.e(1);
        continue;
        d = parami.f(1);
        continue;
        d = parami.h(1);
      }
    }
    e = true;
    paramInt = i;
    if (paramInt == 0) {}
    for (paramLong1 = 0L;; paramLong1 = paramInt + paramLong2)
    {
      c = paramLong1;
      return;
      paramInt = parami.j(paramInt + 1);
      break;
      paramInt = parami.k(paramInt + 1);
      break;
      paramInt = parami.l(paramInt + 1);
      break;
      paramInt = parami.m(paramInt + 1);
      break;
    }
  }
  
  public int a(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, ab paramab)
  {
    long l1 = e();
    int i = d();
    long l2 = f();
    long l3 = paramInt2 + paramLong - 1L;
    if (b) {
      l.b(a, "me:" + l1 + "-" + l2 + ", req:" + paramLong + "-" + l3);
    }
    if ((paramLong > l2) || (l1 > l3)) {
      return 0;
    }
    int j;
    if (paramLong < l1)
    {
      j = (int)(l1 - paramLong);
      i = Math.min(paramInt2 - j, i);
      paramInt2 = paramInt1 + j * paramInt3;
      paramLong = b();
    }
    for (;;)
    {
      if (b) {
        l.b(a, "cluster=" + c + ", length=" + d + ", dstOffset=" + paramInt1);
      }
      if (b) {
        l.b(a, "cnt=" + i + ", actclu=" + paramLong + ", actdstoff=" + paramInt2);
      }
      if (!a()) {
        break;
      }
      Arrays.fill(paramArrayOfByte, paramInt2, i * paramInt3 + paramInt2, (byte)0);
      return i;
      j = (int)(paramLong - l1);
      i = Math.min(paramInt2, i - j);
      paramLong = b() + j;
      paramInt2 = paramInt1;
    }
    paramab.a(paramLong, paramArrayOfByte, paramInt2, i);
    return i;
  }
  
  public boolean a()
  {
    return e;
  }
  
  public long b()
  {
    return c;
  }
  
  public int c()
  {
    return f;
  }
  
  public int d()
  {
    return d;
  }
  
  public long e()
  {
    return g;
  }
  
  public long f()
  {
    return e() + d() - 1L;
  }
  
  public String toString()
  {
    if (a()) {}
    for (String str = "sparse";; str = "data") {
      return String.format("[%s-run vcn:%d-%d]", new Object[] { str, Long.valueOf(e()), Long.valueOf(f()) });
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */