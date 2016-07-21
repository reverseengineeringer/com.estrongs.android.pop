package com.estrongs.fs.impl.usb.fs.a;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.driver.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;

public class b
{
  public static Object a = new Object();
  private static final String b = b.class.getSimpleName();
  private boolean c = false;
  private a d;
  private long[] e;
  private int[] f;
  private i g;
  private long h;
  
  b(a parama, c paramc, i parami)
  {
    d = parama;
    g = parami;
    int i;
    if (!paramc.h())
    {
      i = paramc.i();
      f = new int[] { i };
      if (c) {
        l.c(b, "fat is not mirrored, fat " + i + " is valid");
      }
    }
    for (;;)
    {
      h = paramc.k();
      e = new long[f.length];
      i = j;
      while (i < e.length)
      {
        e[i] = paramc.a(f[i]);
        i += 1;
      }
      int k = paramc.c();
      f = new int[k];
      i = 0;
      while (i < k)
      {
        f[i] = i;
        i += 1;
      }
      if (c) {
        l.c(b, "fat is mirrored, fat count: " + k);
      }
    }
  }
  
  private void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    int i = 0;
    while (i < e.length)
    {
      paramByteBuffer.clear();
      d.b(i * h + paramLong, paramByteBuffer);
      i += 1;
    }
  }
  
  Long[] a(long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    int i = d.b() * 2;
    ByteBuffer localByteBuffer = ByteBuffer.allocate(i);
    localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    long l1 = -1L;
    localArrayList.add(Long.valueOf(paramLong));
    long l3 = (e[0] + 4L * paramLong) / i * i;
    long l4 = e[0];
    long l5 = i;
    long l2 = l1;
    if (l1 != l3)
    {
      localByteBuffer.clear();
      d.a(l3, localByteBuffer);
      l2 = l3;
    }
    int j = localByteBuffer.getInt((int)((l4 + 4L * paramLong) % l5));
    if (j == paramLong) {}
    for (;;)
    {
      return (Long[])localArrayList.toArray(new Long[0]);
      l3 = j;
      l1 = l2;
      paramLong = l3;
      if (l3 < 268435448L) {
        break;
      }
    }
  }
  
  Long[] a(Long[] paramArrayOfLong, int paramInt)
  {
    for (;;)
    {
      long l4;
      synchronized (a)
      {
        ArrayList localArrayList = new ArrayList(paramArrayOfLong.length + paramInt);
        localArrayList.addAll(Arrays.asList(paramArrayOfLong));
        int j = d.b() * 2;
        ByteBuffer localByteBuffer = ByteBuffer.allocate(j);
        localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        if (paramArrayOfLong.length == 0) {
          break label724;
        }
        l3 = paramArrayOfLong[(paramArrayOfLong.length - 1)].longValue();
        l1 = g.b();
        long l2 = l1;
        if (l1 != i.a) {
          break label716;
        }
        l2 = 2L;
        break label716;
        long l7;
        if (paramInt > 0)
        {
          l2 = 1L + l2;
          l5 = (e[0] + 4L * l2) / j * j;
          l6 = e[0];
          l7 = j;
          l4 = l1;
          if (l1 != l5)
          {
            localByteBuffer.clear();
            d.a(l5, localByteBuffer);
            l4 = l5;
          }
          if (localByteBuffer.getInt((int)((l6 + 4L * l2) % l7)) != 0) {
            break label709;
          }
          localArrayList.add(Long.valueOf(l2));
          paramInt -= 1;
          l1 = l4;
          continue;
        }
        int i = paramArrayOfLong.length;
        if (i < localArrayList.size() - 1)
        {
          l5 = ((Long)localArrayList.get(i)).longValue();
          l4 = (e[0] + 4L * l5) / j * j;
          l6 = e[0];
          l7 = j;
          l2 = l1;
          if (l1 != l4)
          {
            localByteBuffer.clear();
            a(l1, localByteBuffer);
            localByteBuffer.clear();
            d.a(l4, localByteBuffer);
            l2 = l4;
          }
          localByteBuffer.putInt((int)((l5 * 4L + l6) % l7), (int)((Long)localArrayList.get(i + 1)).longValue());
          i += 1;
          l1 = l2;
          continue;
        }
        l4 = ((Long)localArrayList.get(localArrayList.size() - 1)).longValue();
        l2 = (e[0] + 4L * l4) / j;
        l2 = j * l2;
        long l5 = e[0];
        long l6 = j;
        if (l1 != l2)
        {
          localByteBuffer.clear();
          a(l1, localByteBuffer);
          localByteBuffer.clear();
          d.a(l2, localByteBuffer);
          l1 = l2;
          localByteBuffer.putInt((int)((l5 + 4L * l4) % l6), 268435455);
          localByteBuffer.clear();
          a(l2, localByteBuffer);
          if (l3 != -1L)
          {
            l2 = (e[0] + 4L * l3) / j * j;
            l5 = e[0];
            l6 = j;
            if (l1 != l2)
            {
              localByteBuffer.clear();
              d.a(l2, localByteBuffer);
            }
            localByteBuffer.putInt((int)((l5 + l3 * 4L) % l6), (int)((Long)localArrayList.get(paramArrayOfLong.length)).longValue());
            a(l2, localByteBuffer);
          }
          g.b(l4);
          g.c(paramInt);
          g.c();
          if (c) {
            l.c(b, "allocating clusters finished");
          }
          paramArrayOfLong = (Long[])localArrayList.toArray(new Long[0]);
          return paramArrayOfLong;
        }
      }
      continue;
      label709:
      long l1 = l4;
      continue;
      label716:
      l1 = -1L;
      continue;
      label724:
      long l3 = -1L;
    }
  }
  
  Long[] b(Long[] paramArrayOfLong, int paramInt)
  {
    int j;
    int k;
    ByteBuffer localByteBuffer;
    synchronized (a)
    {
      j = paramArrayOfLong.length - paramInt;
      k = d.b() * 2;
      localByteBuffer = ByteBuffer.allocate(k);
      localByteBuffer.order(ByteOrder.LITTLE_ENDIAN);
      if (j < 0) {
        throw new IllegalStateException("trying to remove more clusters in chain than currently exist!");
      }
    }
    long l1 = -1L;
    long l2;
    long l3;
    long l4;
    if (j > 0)
    {
      l1 = paramArrayOfLong[(j - 1)].longValue();
      l2 = (e[0] + 4L * l1) / k * k;
      l3 = e[0];
      l4 = k;
      localByteBuffer.clear();
      d.a(l2, localByteBuffer);
      localByteBuffer.putInt((int)((l1 * 4L + l3) % l4), 268435455);
      localByteBuffer.clear();
      a(l2, localByteBuffer);
      l1 = l2;
      if (c)
      {
        l.c(b, "freed set end EOF ");
        l1 = l2;
      }
    }
    for (;;)
    {
      long l5;
      if (i < paramArrayOfLong.length)
      {
        l3 = paramArrayOfLong[i].longValue();
        l2 = (e[0] + 4L * l3) / k * k;
        l4 = e[0];
        l5 = k;
        if (l1 == l2) {
          break label431;
        }
        if (l1 != -1L)
        {
          localByteBuffer.clear();
          a(l1, localByteBuffer);
        }
        localByteBuffer.clear();
        d.a(l2, localByteBuffer);
        l1 = l2;
      }
      label431:
      for (;;)
      {
        localByteBuffer.putInt((int)((l3 * 4L + l4) % l5), 0);
        i += 1;
        break;
        if (c) {
          l.c(b, "freed all cluster");
        }
        localByteBuffer.clear();
        a(l1, localByteBuffer);
        if (c) {
          l.c(b, "freed " + paramInt + " clusters");
        }
        g.c(-paramInt);
        g.c();
        paramArrayOfLong = (Long[])Arrays.copyOfRange(paramArrayOfLong, 0, j);
        return paramArrayOfLong;
      }
      int i = j;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */