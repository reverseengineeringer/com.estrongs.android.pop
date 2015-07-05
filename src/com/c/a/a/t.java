package com.c.a.a;

import b.a.a.e;
import b.b.f;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Vector;

abstract class t
  implements b.a.a.a
{
  private e a;
  protected boolean b;
  protected long c;
  protected int d = 16384;
  protected b.b.a e;
  protected i f;
  protected int g;
  protected int h;
  protected boolean i;
  private InputStream j;
  private OutputStream k;
  private Vector l;
  
  public t(e parame, i parami)
  {
    if (parami == null) {
      throw new NullPointerException("obexConnectionParams is null");
    }
    b = false;
    a = parame;
    f = parami;
    d = c;
    c = -1L;
    g = 0;
    h = 0;
    try
    {
      k = parame.c();
      j = parame.a();
      return;
    }
    catch (Exception parame)
    {
      parame = parame;
      try
      {
        e();
        return;
      }
      catch (IOException parame)
      {
        com.c.a.a.b("close error", parame);
        return;
      }
    }
    finally
    {
      parame = finally;
    }
    try
    {
      e();
      throw parame;
    }
    catch (IOException parami)
    {
      for (;;)
      {
        com.c.a.a.b("close error", parami);
      }
    }
  }
  
  static j c()
  {
    return new j();
  }
  
  public static b.b.c d()
  {
    return c();
  }
  
  static void f(b.b.c paramc)
  {
    j.a(paramc);
  }
  
  protected void a(int paramInt, j paramj)
  {
    a(paramInt, null, paramj);
  }
  
  protected void a(int paramInt, byte[] paramArrayOfByte, j paramj)
  {
    int n;
    byte[] arrayOfByte;
    try
    {
      i = true;
      n = 3;
      if (c != -1L) {
        n = 8;
      }
      int m = n;
      if (paramArrayOfByte != null) {
        m = n + paramArrayOfByte.length;
      }
      arrayOfByte = null;
      n = m;
      if (paramj != null)
      {
        arrayOfByte = j.c(paramj);
        n = m + arrayOfByte.length;
      }
      if (n > d) {
        throw new IOException("Can't sent more data than in MTU, len=" + n + ", mtu=" + d);
      }
    }
    finally {}
    g += 1;
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    j.a(localByteArrayOutputStream, paramInt, n);
    if (paramArrayOfByte != null) {
      localByteArrayOutputStream.write(paramArrayOfByte);
    }
    if (c != -1L) {
      j.a(localByteArrayOutputStream, 203, c);
    }
    if (arrayOfByte != null) {
      localByteArrayOutputStream.write(arrayOfByte);
    }
    com.c.a.a.a("obex send (" + g + ")", v.c(paramInt), paramInt);
    k.write(localByteArrayOutputStream.toByteArray());
    k.flush();
    com.c.a.a.a("obex sent (" + g + ") len", n);
    if ((paramj != null) && (paramj.d()))
    {
      if (l == null) {
        l = new Vector();
      }
      paramArrayOfByte = paramj.e();
      while (paramArrayOfByte.hasMoreElements())
      {
        paramj = new c((byte[])paramArrayOfByte.nextElement());
        l.addElement(paramj);
      }
    }
  }
  
  void a(j paramj1, j paramj2)
  {
    if ((paramj1 != null) && (paramj1.d()) && (!paramj2.f())) {
      throw new IOException("Authentication response is missing");
    }
    a(paramj2, null);
  }
  
  boolean a(j paramj, f paramf)
  {
    if (paramj.f())
    {
      if (e == null) {
        throw new IOException("Authenticator required for authentication");
      }
      if ((l == null) || (l.size() == 0)) {
        throw new IOException("Authentication challenges had not been sent");
      }
      try
      {
        boolean bool = b.a(paramj, e, paramf, l);
        if ((bool) && (l != null)) {
          l.removeAllElements();
        }
        return bool;
      }
      finally {}
    }
    if ((l != null) && (l.size() > 0)) {
      throw new IOException("Authentication response is missing");
    }
    return true;
  }
  
  void b(j paramj1, j paramj2)
  {
    if (paramj1.d())
    {
      if (e == null) {
        throw new IOException("Authenticator required for authentication");
      }
      b.a(paramj1, paramj2, e);
    }
  }
  
  public boolean b()
  {
    return a == null;
  }
  
  public void e()
  {
    e locale = a;
    a = null;
    try
    {
      if (j != null)
      {
        j.close();
        j = null;
      }
      if (k != null)
      {
        k.close();
        k = null;
      }
      return;
    }
    finally
    {
      if (locale != null) {
        locale.e();
      }
    }
  }
  
  protected byte[] f()
  {
    try
    {
      if (!i) {
        throw new IOException("Read packet out of order");
      }
    }
    finally {}
    i = false;
    Object localObject2 = new byte[3];
    v.a(j, f, (byte[])localObject2);
    h += 1;
    com.c.a.a.a("obex received (" + h + ")", v.a(localObject2[0]), localObject2[0] & 0xFF);
    int m = v.a(localObject2[1], localObject2[2]);
    if (m == 3) {}
    for (;;)
    {
      return (byte[])localObject2;
      if ((m < 3) || (m > 65535)) {
        throw new IOException("Invalid packet length " + m);
      }
      byte[] arrayOfByte = new byte[m];
      System.arraycopy(localObject2, 0, arrayOfByte, 0, localObject2.length);
      v.a(j, f, arrayOfByte, localObject2.length, m - localObject2.length);
      if (j.available() > 0) {
        com.c.a.a.a("has more data after read", j.available());
      }
      localObject2 = arrayOfByte;
    }
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */