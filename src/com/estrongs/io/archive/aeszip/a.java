package com.estrongs.io.archive.aeszip;

import android.util.SparseArray;
import de.a.a.a.a.h;
import de.a.a.a.a.i;
import java.io.File;
import java.io.InputStream;
import java.lang.ref.SoftReference;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.zip.Inflater;
import java.util.zip.ZipException;

public class a
{
  protected static int a;
  private static final Set j;
  private static final List k;
  private static final SparseArray<String> m;
  protected h b;
  protected long c;
  protected File d;
  protected String e;
  private String g = "GBK";
  private boolean h = false;
  private Map<String, i> i = new LinkedHashMap();
  private String l = "";
  private b n;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      a = 10240;
      j = new HashSet();
      k = new LinkedList();
      m = new SparseArray(25);
      return;
    }
  }
  
  public a(File paramFile, String paramString, boolean paramBoolean, b paramb)
  {
    d = paramFile;
    b = new h(paramFile);
    g = paramString;
    h = paramBoolean;
    n = paramb;
    a();
    if (h) {
      h();
    }
    i();
  }
  
  public static final int a(long paramLong)
  {
    long l1;
    if (paramLong > 65536L) {
      l1 = 65536L;
    }
    for (;;)
    {
      return (int)l1;
      l1 = paramLong;
      if (paramLong < 8192L) {
        l1 = 8192L;
      }
    }
  }
  
  public static void a(i parami)
  {
    int i1 = parami.g().i();
    if ((i1 != 99) && (i1 != 0) && (i1 != 8)) {
      throw new ZipException("The compress method is not supported - " + parami.getName());
    }
    de.a.a.a.a.g localg = parami.g();
    if (localg.d()) {
      if (localg.m())
      {
        i1 = localg.j();
        if (i1 != 3) {
          throw new ZipException("NOT_SUPPORTED_ENC_ALG(" + i1 + ") - " + parami.getName());
        }
      }
      else
      {
        throw new ZipException("NOT_SUPPORTED_ENC_ALG - " + parami.getName());
      }
    }
  }
  
  private static long b(InputStream paramInputStream, long paramLong, byte[] paramArrayOfByte)
  {
    long l2;
    for (long l1 = 0L;; l1 = l2 + l1)
    {
      l2 = paramLong - l1;
      if (l2 > 0L) {
        if (l2 >= paramArrayOfByte.length) {
          break label51;
        }
      }
      label51:
      for (int i1 = (int)l2;; i1 = paramArrayOfByte.length)
      {
        l2 = paramInputStream.read(paramArrayOfByte, 0, i1);
        if (l2 >= 0L) {
          break;
        }
        return l1;
      }
    }
  }
  
  private static void b(String paramString, long paramLong1, long paramLong2)
  {
    throw new ZipException("CRC32 Error - " + paramString + ",expectedCrc: " + paramLong1 + ",actualCrc:" + paramLong2);
  }
  
  private static void b(Inflater paramInflater)
  {
    paramInflater.reset();
    synchronized (k)
    {
      k.add(new SoftReference(paramInflater));
      j.remove(paramInflater);
      return;
    }
  }
  
  private final void f()
  {
    if (b == null) {
      throw new ZipException("ZIP file has been closed");
    }
  }
  
  private static Inflater g()
  {
    Object localObject1 = null;
    synchronized (k)
    {
      Iterator localIterator = k.iterator();
      while (localIterator.hasNext())
      {
        localObject3 = (Inflater)((SoftReference)localIterator.next()).get();
        localIterator.remove();
        localObject1 = localObject3;
        if (localObject3 != null) {
          localObject1 = localObject3;
        }
      }
      Object localObject3 = localObject1;
      if (localObject1 == null) {
        localObject3 = new Inflater(true);
      }
      j.add(localObject3);
      return (Inflater)localObject3;
    }
  }
  
  private void h()
  {
    int i2 = d();
    long l1 = 0xFFFFFFFF & b.a(c);
    Object localObject1 = new byte[0];
    int i1 = 0;
    for (;;)
    {
      Object localObject2 = localObject1;
      if (i1 < i2) {
        if ((n == null) || (!n.a())) {}
      }
      int i3;
      int i4;
      int i5;
      while (!h)
      {
        return;
        if (b.a(l1) != 33639248L) {
          throw new ZipException("expected CENSIC not found at entry no " + (i1 + 1) + " in central directory at end of zip file at " + l1);
        }
        i3 = b.b(28L + l1);
        i4 = b.b(30L + l1);
        i5 = b.b(32L + l1);
        long l2 = b.a(42L + l1);
        if (b.a(l2 & 0xFFFFFFFF) != 67324752L) {
          throw new ZipException("expected LOCSIC not found at alleged position of data for file no " + (i1 + 1));
        }
        localObject1 = com.estrongs.android.util.f.a((byte[])localObject1, b.a(46L + l1, i3));
        if (localObject1.length < 1024) {
          break;
        }
        localObject2 = localObject1;
      }
      localObject1 = com.estrongs.android.util.f.a((byte[])localObject2, localObject2.length);
      if (Charset.isSupported((String)localObject1)) {
        g = ((String)localObject1);
      }
      h = false;
      return;
      l1 = l1 + 46L + i3 + i4 + i5;
      i1 += 1;
    }
  }
  
  private void i()
  {
    int i2 = d();
    long l1 = 0xFFFFFFFF & b.a(c);
    int i1 = 0;
    if (i1 < i2)
    {
      if ((n != null) && (n.a())) {
        i.clear();
      }
    }
    else {
      return;
    }
    if (b.a(l1) != 33639248L) {
      throw new ZipException("expected CENSIC not found at entry no " + (i1 + 1) + " in central directory at end of zip file at " + l1);
    }
    int i3 = b.b(28L + l1);
    int i4 = b.b(30L + l1);
    int i5 = b.b(32L + l1);
    long l2 = b.a(42L + l1);
    if (b.a(l2 & 0xFFFFFFFF) != 67324752L) {
      throw new ZipException("expected LOCSIC not found at alleged position of data for file no " + (i1 + 1));
    }
    Object localObject = b.a(46L + l1, i3);
    de.a.a.a.a.g localg = new de.a.a.a.a.g(b, l1);
    localObject = new String((byte[])localObject, g);
    if (((String)localObject).endsWith("/"))
    {
      localObject = new i((String)localObject, null);
      label295:
      ((i)localObject).setTime(i.c(b.a(12L + l1)));
      if (!localg.d()) {
        break label458;
      }
      ((i)localObject).setMethod(localg.i());
      l2 = localg.f();
      long l3 = localg.k();
      ((i)localObject).a(localg.l() + (l2 + l3));
      ((i)localObject).a();
    }
    for (;;)
    {
      i.put(((i)localObject).getName(), localObject);
      l1 = l1 + 46L + i3 + i4 + i5;
      i1 += 1;
      break;
      localObject = new i((String)localObject, localg);
      ((i)localObject).setCompressedSize(localg.b());
      ((i)localObject).setSize(localg.c());
      a((i)localObject);
      break label295;
      label458:
      ((i)localObject).setMethod(localg.i());
      ((i)localObject).a(localg.i());
      ((i)localObject).a(localg.h());
    }
  }
  
  protected InputStream a(i parami, de.a.a.a.a.b paramb)
  {
    return new d(this, parami.e(), parami.getCompressedSize() - 28L, paramb);
  }
  
  protected InputStream a(i parami, boolean paramBoolean1, boolean paramBoolean2)
  {
    e locale = new e(this, parami.e(), parami.getCompressedSize());
    int i1 = a(parami.getSize());
    Object localObject;
    switch (parami.getMethod())
    {
    default: 
      localObject = locale;
      if (!f) {
        throw new AssertionError("this should already have been checked by mountCentralDirectory()");
      }
      break;
    case 8: 
      if (paramBoolean2)
      {
        locale.a();
        localObject = new f(locale, i1);
        if (!paramBoolean1) {
          break label162;
        }
        localObject = new c((InputStream)localObject, parami, i1);
      }
      break;
    }
    do
    {
      do
      {
        return (InputStream)localObject;
        localObject = locale;
      } while (!paramBoolean1);
      return new g(locale, parami, i1);
      localObject = locale;
    } while (!paramBoolean1);
    return new c(locale, parami, i1);
    label162:
    return (InputStream)localObject;
  }
  
  public InputStream a(String paramString, com.estrongs.io.a.b paramb)
  {
    i locali = (i)i.get(paramString);
    b(locali);
    byte[] arrayOfByte;
    if (locali.c())
    {
      paramString = locali.g();
      long l1 = locali.e() - paramString.l();
      paramString = b.a(l1, 16);
      arrayOfByte = b.a(l1 + 16L, 2);
      if ((l == null) || (l.length() < 1)) {
        l = paramb.a();
      }
      if ((paramb.b()) || (l == null)) {
        return null;
      }
      paramb = l.getBytes("UTF-8");
    }
    for (;;)
    {
      try
      {
        paramString = new de.a.a.a.a.c(paramb, paramString, arrayOfByte);
        paramString.a();
        paramb = new byte[a(locali.getSize())];
        if (!locali.c()) {
          break label227;
        }
        if (locali.getMethod() == 0)
        {
          paramString = a(locali, paramString);
          return paramString;
        }
      }
      catch (ZipException paramString)
      {
        if (paramString.getMessage().contains("WRONG PASSWORD")) {
          l = null;
        }
        throw paramString;
      }
      paramString = new f(a(locali, paramString), paramb.length);
      continue;
      label227:
      paramString = a(locali, false, true);
      continue;
      paramString = null;
    }
  }
  
  protected void a()
  {
    c = (d.length() - 6L);
    if ((b.a(c - 16L) & 0xFFFFFFFF) != 101010256L)
    {
      byte[] arrayOfByte = de.a.a.a.a.f.a(101010256);
      long l1 = b.a(arrayOfByte);
      if (l1 == -1L) {
        throw new ZipException("expected ENDSIC not found (marks the beginning of the central directory at end of the zip file)");
      }
      c = (l1 + 16L);
      int i1 = b.b(c + 4L);
      e = new String(b.a(c + 6L, i1));
    }
  }
  
  public void b()
  {
    i.clear();
    b.a();
  }
  
  protected void b(i parami)
  {
    if (parami == null) {
      throw new ZipException("zipEntry must NOT be NULL");
    }
    if (parami.isDirectory()) {
      throw new ZipException("directory entries cannot be decrypted");
    }
  }
  
  public Iterator<i> c()
  {
    return i.values().iterator();
  }
  
  public short d()
  {
    return b.b(c - 6L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.io.archive.aeszip.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */