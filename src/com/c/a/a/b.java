package com.c.a.a;

import b.b.e;
import b.b.f;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

class b
{
  private static long a = 0L;
  private static final byte[] b = { 58 };
  
  static void a(j paramj1, j paramj2, b.b.a parama)
  {
    if (!paramj1.d()) {}
    for (;;)
    {
      return;
      paramj1 = paramj1.e();
      while (paramj1.hasMoreElements())
      {
        Object localObject = new c((byte[])paramj1.nextElement());
        e locale = parama.a(((c)localObject).c(), ((c)localObject).a(), ((c)localObject).b());
        d locald = new d();
        c = a;
        com.c.a.a.a("got nonce", c);
        if (((c)localObject).a()) {
          b = locale.a();
        }
        localObject = new a();
        ((a)localObject).a(c);
        ((a)localObject).a(b);
        ((a)localObject).a(locale.b());
        a = ((a)localObject).a();
        com.c.a.a.a("send digest", a);
        paramj2.a(locald.a());
      }
    }
  }
  
  static boolean a(j paramj, b.b.a parama, f paramf, Vector paramVector)
  {
    if (!paramj.f()) {
      return false;
    }
    Enumeration localEnumeration = paramj.g();
    d locald;
    Object localObject;
    if (localEnumeration.hasMoreElements())
    {
      paramj = (byte[])localEnumeration.nextElement();
      locald = new d();
      locald.a(paramj);
      com.c.a.a.a("got nonce", c);
      localObject = paramVector.elements();
      do
      {
        if (!((Enumeration)localObject).hasMoreElements()) {
          break;
        }
        paramj = (c)((Enumeration)localObject).nextElement();
      } while (!a(a, c));
    }
    for (;;)
    {
      if (paramj == null) {
        throw new IOException("Authentication response for unknown challenge");
      }
      paramj = parama.a(b);
      if (paramj == null) {
        throw new IOException("Authentication request failed, password is not supplied");
      }
      localObject = new a();
      ((a)localObject).a(c);
      ((a)localObject).a(b);
      ((a)localObject).a(paramj);
      paramj = ((a)localObject).a();
      if (!a(a, paramj))
      {
        com.c.a.a.a("got digest", a);
        com.c.a.a.a("  expected", paramj);
        if (paramf != null)
        {
          paramf.a(b);
          break;
        }
        throw new IOException("Authentication failure");
      }
      return true;
      return false;
      paramj = null;
    }
  }
  
  static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = 0;
    while (i < 16)
    {
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */