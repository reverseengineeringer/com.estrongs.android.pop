package org.bouncycastle.crypto.d;

import java.util.Hashtable;
import org.bouncycastle.crypto.b;
import org.bouncycastle.crypto.c;
import org.bouncycastle.crypto.d;
import org.bouncycastle.crypto.e;

public class a
  implements e
{
  private static Hashtable f = new Hashtable();
  private c a;
  private int b;
  private int c;
  private byte[] d;
  private byte[] e;
  
  static
  {
    f.put("GOST3411", new Integer(32));
    f.put("MD2", new Integer(16));
    f.put("MD4", new Integer(64));
    f.put("MD5", new Integer(64));
    f.put("RIPEMD128", new Integer(64));
    f.put("RIPEMD160", new Integer(64));
    f.put("SHA-1", new Integer(64));
    f.put("SHA-224", new Integer(64));
    f.put("SHA-256", new Integer(64));
    f.put("SHA-384", new Integer(128));
    f.put("SHA-512", new Integer(128));
    f.put("Tiger", new Integer(64));
    f.put("Whirlpool", new Integer(64));
  }
  
  public a(c paramc)
  {
    this(paramc, a(paramc));
  }
  
  private a(c paramc, int paramInt)
  {
    a = paramc;
    b = paramc.b();
    c = paramInt;
    d = new byte[c];
    e = new byte[c];
  }
  
  private static int a(c paramc)
  {
    if ((paramc instanceof d)) {
      return ((d)paramc).d();
    }
    Integer localInteger = (Integer)f.get(paramc.a());
    if (localInteger == null) {
      throw new IllegalArgumentException("unknown digest passed: " + paramc.a());
    }
    return localInteger.intValue();
  }
  
  public int a()
  {
    return b;
  }
  
  public int a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = new byte[b];
    a.a(arrayOfByte, 0);
    a.a(e, 0, e.length);
    a.a(arrayOfByte, 0, arrayOfByte.length);
    paramInt = a.a(paramArrayOfByte, paramInt);
    b();
    return paramInt;
  }
  
  public void a(b paramb)
  {
    a.c();
    paramb = ((org.bouncycastle.crypto.f.a)paramb).a();
    int i;
    if (paramb.length > c)
    {
      a.a(paramb, 0, paramb.length);
      a.a(d, 0);
      i = b;
      if (i >= d.length)
      {
        label68:
        e = new byte[d.length];
        System.arraycopy(d, 0, e, 0, d.length);
        i = 0;
        label99:
        if (i < d.length) {
          break label191;
        }
        i = 0;
      }
    }
    for (;;)
    {
      if (i >= e.length)
      {
        a.a(d, 0, d.length);
        return;
        d[i] = 0;
        i += 1;
        break;
        System.arraycopy(paramb, 0, d, 0, paramb.length);
        i = paramb.length;
        while (i < d.length)
        {
          d[i] = 0;
          i += 1;
        }
        break label68;
        label191:
        paramb = d;
        paramb[i] = ((byte)(paramb[i] ^ 0x36));
        i += 1;
        break label99;
      }
      paramb = e;
      paramb[i] = ((byte)(paramb[i] ^ 0x5C));
      i += 1;
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.a(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public void b()
  {
    a.c();
    a.a(d, 0, d.length);
  }
}

/* Location:
 * Qualified Name:     org.bouncycastle.crypto.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */