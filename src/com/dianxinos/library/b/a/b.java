package com.dianxinos.library.b.a;

import com.dianxinos.library.b.c.k;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.KeyFactory;
import java.security.spec.X509EncodedKeySpec;
import java.util.zip.GZIPOutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;

public final class b
{
  boolean a;
  Cipher b;
  OutputStream c;
  f d;
  CipherOutputStream e;
  GZIPOutputStream f;
  OutputStream g;
  OutputStream h;
  OutputStream i;
  DataOutputStream j;
  long k;
  h l;
  
  static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {}
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Throwable paramCloseable) {}
  }
  
  static void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
      return;
    }
    catch (Throwable paramOutputStream) {}
  }
  
  public static boolean a(InputStream paramInputStream, long paramLong, OutputStream paramOutputStream, String paramString)
  {
    try
    {
      paramString = new X509EncodedKeySpec(com.dianxinos.library.b.c.a.a(paramString, 0));
      paramString = KeyFactory.getInstance("RSA").generatePublic(paramString);
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        try
        {
          boolean bool = new a().a(paramInputStream, paramLong, paramOutputStream, paramString);
          return bool;
        }
        catch (Exception paramInputStream) {}
        paramString = paramString;
        paramString.printStackTrace();
        paramString = null;
      }
    }
    return false;
  }
  
  public void a()
  {
    if (a) {}
    long l1;
    do
    {
      do
      {
        return;
      } while (j == null);
      a(j);
      a(g);
      a(f);
      a(e);
      l1 = d.c();
    } while ((l1 <= k) || (l == null));
    l.a(l1);
  }
  
  public void b()
  {
    if (a) {
      return;
    }
    a();
    a = true;
    j = null;
    a(i);
    a(g);
    a(f);
    a(e);
    long l1 = d.c();
    if (com.dianxinos.library.b.a.b) {
      k.a("Encrypted Length=" + l1);
    }
    try
    {
      c.a(h, d.b(), d.c());
      d.a();
      b = null;
      a(d);
      a(c);
      c = null;
      d = null;
      e = null;
      f = null;
      h = null;
      i = null;
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
  }
  
  protected void finalize()
  {
    try
    {
      b();
      super.finalize();
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        localThrowable.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */