package com.estrongs.fs.impl.usb.fs.ntfs;

import com.estrongs.android.util.l;

public final class a
  extends aa
{
  private static final String a = a.class.getSimpleName();
  private boolean b = false;
  private final String c;
  private final int d;
  private final int e;
  private final long f;
  private final int g;
  private final int h;
  private final long i;
  private final int j;
  private final int k;
  private final int l;
  
  public a(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte, 0);
    c = new String(paramArrayOfByte, 3, 8);
    d = e(11);
    e = d(13);
    f = g(48);
    g = d(21);
    h = e(24);
    int m = j(64);
    int n = j(68);
    i = g(40);
    l = (e * d);
    j = a(m);
    k = a(n);
    if (b) {
      l.b(a, "FileRecordSize  = " + j);
    }
    if (b) {
      l.b(a, "IndexRecordSize = " + k);
    }
    if (b) {
      l.b(a, "TotalSectors    = " + i);
    }
  }
  
  private final int a(int paramInt)
  {
    if (paramInt > 0) {
      return l * paramInt;
    }
    return 1 << -paramInt;
  }
  
  public int a()
  {
    return d;
  }
  
  public long b()
  {
    return f;
  }
  
  public int c()
  {
    return j;
  }
  
  public int d()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.usb.fs.ntfs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */