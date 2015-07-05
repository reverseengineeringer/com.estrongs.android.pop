package com.estrongs.fs.impl.usb.fs.a;

import android.util.Log;
import java.nio.ByteBuffer;

public class a
{
  private static final String a = a.class.getSimpleName();
  private boolean b = false;
  private com.estrongs.fs.impl.usb.driver.a c;
  private b d;
  private Long[] e;
  private long f;
  private long g;
  
  a(long paramLong, com.estrongs.fs.impl.usb.driver.a parama, b paramb, c paramc)
  {
    d = paramb;
    c = parama;
    e = paramb.a(paramLong);
    f = paramc.i();
    g = paramc.k();
  }
  
  private long a(long paramLong, int paramInt)
  {
    return g + paramInt + (paramLong - 2L) * f;
  }
  
  int a()
  {
    return e.length;
  }
  
  void a(int paramInt)
  {
    int i = a();
    if (paramInt == i) {
      return;
    }
    if (paramInt > i)
    {
      if (b) {
        Log.d(a, "grow chain");
      }
      e = d.a(e, paramInt - i);
      return;
    }
    if (b) {
      Log.d(a, "shrink chain");
    }
    e = d.b(e, i - paramInt);
  }
  
  void a(long paramLong)
  {
    a((int)((f + paramLong - 1L) / f));
  }
  
  void a(long paramLong, ByteBuffer paramByteBuffer)
  {
    int k = paramByteBuffer.remaining();
    int m = (int)(paramLong / f);
    int j = m;
    int i = k;
    if (paramLong % f != 0L)
    {
      j = (int)(paramLong % f);
      i = Math.min(k, (int)(f - j));
      paramByteBuffer.limit(paramByteBuffer.position() + i);
      c.a(a(e[m].longValue(), j), paramByteBuffer);
      j = m + 1;
      i = k - i;
    }
    while (i > 0)
    {
      k = (int)Math.min(f, i);
      paramByteBuffer.limit(paramByteBuffer.position() + k);
      c.a(a(e[j].longValue(), 0), paramByteBuffer);
      j += 1;
      i -= k;
    }
  }
  
  long b()
  {
    return e.length * f;
  }
  
  void b(long paramLong, ByteBuffer paramByteBuffer)
  {
    int k = paramByteBuffer.remaining();
    int m = (int)(paramLong / f);
    int j = m;
    int i = k;
    if (paramLong % f != 0L)
    {
      j = (int)(paramLong % f);
      i = Math.min(k, (int)(f - j));
      paramByteBuffer.limit(paramByteBuffer.position() + i);
      c.b(a(e[m].longValue(), j), paramByteBuffer);
      j = m + 1;
      i = k - i;
    }
    while (i > 0)
    {
      k = (int)Math.min(f, i);
      paramByteBuffer.limit(paramByteBuffer.position() + k);
      c.b(a(e[j].longValue(), 0), paramByteBuffer);
      j += 1;
      i -= k;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */