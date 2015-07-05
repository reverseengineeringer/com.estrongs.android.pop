package de.innosystec.unrar.unpack;

import com.estrongs.io.a.b;
import de.innosystec.unrar.b.d;
import de.innosystec.unrar.e;
import de.innosystec.unrar.rarfile.g;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;

public class a
{
  private final de.innosystec.unrar.a a;
  private long b;
  private boolean c;
  private boolean d;
  private InputStream e;
  private OutputStream f;
  private g g;
  private boolean h;
  private boolean i;
  private boolean j;
  private long k;
  private long l;
  private long m;
  private long n;
  private long o;
  private long p;
  private long q;
  private long r;
  private long s;
  private long t;
  private int u;
  private int v;
  private int w;
  private char x;
  
  public a(de.innosystec.unrar.a parama)
  {
    a = parama;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i4 = 0;
    int i3 = 0;
    int i1 = paramInt2;
    int i2 = paramInt1;
    paramInt2 = i4;
    paramInt1 = i1;
    i1 = i3;
    if (paramInt1 > 0) {
      if ((a.k() != null) && (a.k().b())) {
        paramInt1 = -1;
      }
    }
    for (;;)
    {
      return paramInt1;
      if (paramInt1 > b) {}
      for (i1 = (int)b;; i1 = paramInt1)
      {
        i1 = e.read(paramArrayOfByte, i2, i1);
        if (i1 >= 0) {
          break;
        }
        throw new EOFException();
      }
      if (g.u()) {
        t = de.innosystec.unrar.a.a.a((int)t, paramArrayOfByte, i2, i1);
      }
      n += i1;
      paramInt2 += i1;
      i2 += i1;
      paramInt1 -= i1;
      b -= i1;
      a.a(i1);
      if ((b == 0L) && (g.u()))
      {
        if (!e.a(a, this))
        {
          j = true;
          return -1;
        }
        break;
      }
      for (paramInt1 = paramInt2; i1 == -1; paramInt1 = paramInt2) {
        return i1;
      }
    }
  }
  
  public long a()
  {
    return t;
  }
  
  public void a(long paramLong)
  {
    s = paramLong;
  }
  
  public void a(g paramg)
  {
    long l1 = paramg.e();
    l1 = paramg.h() + l1;
    b = paramg.s();
    e = new d(a.b(), l1, b + l1);
    g = paramg;
    n = 0L;
    m = 0L;
    t = -1L;
  }
  
  public void a(OutputStream paramOutputStream)
  {
    f = paramOutputStream;
    b = 0L;
    c = false;
    d = false;
    h = false;
    i = false;
    j = false;
    u = 0;
    v = 0;
    k = 0L;
    o = 0L;
    n = 0L;
    m = 0L;
    l = 0L;
    t = -1L;
    s = -1L;
    r = -1L;
    w = -1;
    g = null;
    x = '\000';
    q = 0L;
    p = 0L;
  }
  
  public long b()
  {
    return s;
  }
  
  public void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (!c) {
      f.write(paramArrayOfByte, paramInt1, paramInt2);
    }
    o += paramInt2;
    if (!d)
    {
      if (a.g()) {
        s = de.innosystec.unrar.a.a.a((short)(int)s, paramArrayOfByte, paramInt2);
      }
    }
    else {
      return;
    }
    s = de.innosystec.unrar.a.a.a((int)s, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public g c()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     de.innosystec.unrar.unpack.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */