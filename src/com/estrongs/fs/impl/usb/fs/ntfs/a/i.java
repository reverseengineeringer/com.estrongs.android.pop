package com.estrongs.fs.impl.usb.fs.ntfs.a;

import com.estrongs.android.util.l;
import com.estrongs.fs.impl.usb.fs.ntfs.ab;
import com.estrongs.fs.impl.usb.fs.ntfs.b;
import com.estrongs.fs.impl.usb.fs.ntfs.e;
import com.estrongs.fs.impl.usb.fs.ntfs.f;
import com.estrongs.fs.impl.usb.fs.ntfs.n;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class i
  extends h
{
  private static final String a = i.class.getSimpleName();
  private boolean b = false;
  private int c = 0;
  private final List<f> d = new ArrayList();
  
  public i(n paramn, int paramInt)
  {
    super(paramn, paramInt);
    paramInt = d();
    if (paramInt > 0) {
      a(paramInt);
    }
  }
  
  private void a(int paramInt)
  {
    long l2 = 0L;
    List localList = o();
    long l1 = 0L;
    int j;
    int n;
    int m;
    int i;
    int k;
    label42:
    e locale;
    if ((c() & 0x1) != 0)
    {
      j = 1;
      n = 1 << l();
      m = 0;
      i = 0;
      k = paramInt;
      paramInt = m;
      if (d(k) == 0) {
        break label459;
      }
      locale = new e(this, k, l1, l2);
      if (j == 0) {
        break label413;
      }
      if ((!locale.a()) || (i == 0)) {
        break label181;
      }
      if (locale.d() + paramInt <= n) {
        break label557;
      }
      paramInt = locale.d() - (n - paramInt);
      localList.add(new e(0L, paramInt, true, 0, l1));
      c += paramInt;
      l1 += paramInt;
      i = 0;
      paramInt = 0;
    }
    for (;;)
    {
      if (!locale.a()) {
        l2 = locale.b();
      }
      k += locale.c();
      break label42;
      j = 0;
      break;
      label181:
      if (locale.d() >= n)
      {
        m = locale.d() % n;
        if (m != 0)
        {
          paramInt = locale.d() - m;
          localList.add(new e(locale.b(), paramInt, false, 0, l1));
          l1 += paramInt;
          c += paramInt;
          localList.add(new b(new e(locale.b() + paramInt, m, false, 0, l1), n));
          i = 1;
          c += n;
          l1 = n + l1;
          paramInt = m;
        }
        for (;;)
        {
          break;
          localList.add(locale);
          c += locale.d();
          l1 += locale.d();
        }
      }
      localList.add(new b(locale, n));
      paramInt = locale.d();
      c += n;
      long l3 = n;
      l1 += l3;
      i = 1;
      continue;
      label413:
      localList.add(locale);
      c += locale.d();
      l3 = locale.d();
      i = 0;
      paramInt = 0;
      l1 += l3;
      continue;
      label459:
      paramInt = j().r().b();
      l1 = (m() - 1L) / paramInt + 1L;
      if ((c != l1) && (b)) {
        l.b(a, "VCN mismatch between data runs and allocated size, possibly a composite attribute. data run VCNs = " + c + ", allocated size = " + l1 + ", data run count = " + d.size());
      }
      return;
      label557:
      i = 0;
    }
  }
  
  public int a(long paramLong, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((c() & 0x4000) != 0) {
      throw new IOException("Reading encrypted files is not supported");
    }
    if (b) {
      l.b(a, "readVCN: wants start " + paramLong + " length " + paramInt2 + ", we have start " + b() + " length " + p());
    }
    ab localab = j().r();
    int k = localab.b();
    int i = 0;
    Iterator localIterator = o().iterator();
    int j;
    do
    {
      j = i;
      if (!localIterator.hasNext()) {
        break;
      }
      j = i + ((f)localIterator.next()).a(paramLong, paramArrayOfByte, paramInt1, paramInt2, k, localab);
      i = j;
    } while (j != paramInt2);
    if (b) {
      l.b(a, "readVCN: read " + j);
    }
    return j;
  }
  
  public long b()
  {
    return g(16);
  }
  
  public int d()
  {
    return e(32);
  }
  
  public int l()
  {
    return e(34);
  }
  
  public long m()
  {
    return g(40);
  }
  
  public long n()
  {
    return n(48);
  }
  
  public List<f> o()
  {
    return d;
  }
  
  public int p()
  {
    return c;
  }
  
  public String toString()
  {
    return String.format("[attribute (non-res) type=x%x name'%s' size=%d runs=%d]", new Object[] { Integer.valueOf(e()), i(), Long.valueOf(n()), Integer.valueOf(o().size()) });
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */