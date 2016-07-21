package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;
import java.io.IOException;

public final class b
  implements f
{
  private static final String a = b.class.getSimpleName();
  private static boolean b = false;
  private final e c;
  private final int d;
  
  public b(e parame, int paramInt)
  {
    c = parame;
    d = paramInt;
  }
  
  private static int a(d paramd1, d paramd2)
  {
    int i = d.b(paramd1, 0);
    int j = 2;
    int i3 = i & 0xFFF;
    if (b) {
      l.b(a, "ntfs_uncompblock: block length: " + i3 + " + 3, 0x" + Integer.toHexString(i3) + ",0x" + Integer.toHexString(i));
    }
    if (i == 0) {
      return 0;
    }
    if ((i & 0x8000) == 0)
    {
      if ((i3 + 1 != 4096) && (b)) {
        l.b(a, "ntfs_uncompblock: len: " + i3 + " instead of 0xfff");
      }
      d.a(paramd2, paramd1, 3, 0, i3 + 1);
      d.a(paramd2, i3 + 1, 4095 - i3);
      return i3 + 3;
    }
    for (;;)
    {
      if ((j < i3 + 3) && (i < 4096))
      {
        int m = d.c(paramd1, j);
        int k = 0;
        j += 1;
        label191:
        int i1;
        int n;
        if ((k < 8) && (i < 4096))
        {
          if ((m & 0x1) == 0) {
            break label320;
          }
          int i2 = i - 1;
          i1 = 4095;
          n = 12;
          while (i2 >= 16)
          {
            i2 >>= 1;
            i1 >>= 1;
            n -= 1;
          }
          i2 = d.b(paramd1, j);
          j += 2;
          i1 = Math.min((i1 & i2) + 3, 4096 - i);
          d.a(paramd2, paramd2, -1 - (i2 >> n) + i, i, i1);
          i += i1;
        }
        for (;;)
        {
          m = (byte)(m >> 1);
          k += 1;
          break label191;
          break;
          label320:
          n = i + 1;
          i1 = j + 1;
          d.a(paramd2, i, d.c(paramd1, j));
          j = i1;
          i = n;
        }
      }
      return i3 + 3;
      i = 0;
    }
  }
  
  private static void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte1 = new d(paramArrayOfByte1, null);
    d locald = new d(paramArrayOfByte2, null);
    int i = 0;
    for (;;)
    {
      int j;
      if (i * 4096 < paramArrayOfByte2.length)
      {
        j = a(paramArrayOfByte1, locald);
        if (j == 0) {
          d.a(locald, 0, paramArrayOfByte2.length - d.a(locald));
        }
      }
      else
      {
        return;
      }
      d.a(paramArrayOfByte1, j + d.a(paramArrayOfByte1));
      d.a(locald, d.a(locald) + 4096);
      i += 1;
    }
  }
  
  public int a()
  {
    return d;
  }
  
  public int a(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, ab paramab)
  {
    long l1 = c.e();
    long l2 = c();
    long l3 = paramInt2 + paramLong - 1L;
    if (b) {
      l.b(a, "me:" + l1 + "-" + l2 + ", req:" + paramLong + "-" + l3);
    }
    if ((paramLong > l2) || (l1 > l3)) {
      return 0;
    }
    long l4 = Math.max(l1, paramLong);
    paramInt2 = (int)(Math.min(l2, l3) - l4 + 1L);
    int i = c.d();
    if (i == d) {
      return c.a(paramLong, paramArrayOfByte, paramInt1, i, paramInt3, paramab);
    }
    int j = (int)(l4 % d);
    byte[] arrayOfByte = new byte[d * paramInt3];
    int k = c.a(l1, arrayOfByte, 0, i, paramInt3, paramab);
    if (k != i) {
      throw new IOException("Needed " + i + " clusters but could " + "only read " + k);
    }
    paramab = new byte[d * paramInt3];
    a(arrayOfByte, paramab);
    i = j * paramInt3;
    paramInt1 = (int)(l4 - paramLong) * paramInt3 + paramInt1;
    paramInt3 = paramInt2 * paramInt3;
    if (paramInt1 + paramInt3 > paramArrayOfByte.length) {
      throw new ArrayIndexOutOfBoundsException(String.format("Copy dest %d length %d is too big for destination %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt3), Integer.valueOf(paramArrayOfByte.length) }));
    }
    if (i + paramInt3 > paramab.length) {
      throw new ArrayIndexOutOfBoundsException(String.format("Copy source %d length %d is too big for source %d", new Object[] { Integer.valueOf(i), Integer.valueOf(paramInt3), Integer.valueOf(paramab.length) }));
    }
    System.arraycopy(paramab, i, paramArrayOfByte, paramInt1, paramInt3);
    return paramInt2;
  }
  
  public long b()
  {
    return c.e();
  }
  
  public long c()
  {
    return b() + a() - 1L;
  }
  
  public String toString()
  {
    return String.format("[compressed-run vcn:%d-%d]", new Object[] { Long.valueOf(b()), Long.valueOf(c()) });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */