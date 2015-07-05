package com.c.a.a;

import b.b.c;
import b.b.d;
import com.c.a.a;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

abstract class p
  implements d, k
{
  protected s a;
  protected c b;
  protected j c;
  protected boolean d = false;
  protected boolean e = false;
  protected boolean f = false;
  protected boolean g = false;
  protected boolean h = false;
  protected boolean i = false;
  protected n j;
  protected boolean k = false;
  protected m l;
  protected boolean m = false;
  
  protected p(s params, j paramj)
  {
    a = params;
    b = paramj;
    if (paramj.d())
    {
      c = t.c();
      a.b(paramj, c);
    }
  }
  
  void a(int paramInt)
  {
    a.b("server operation reply final", paramInt);
    a.a(paramInt, c);
    c = null;
    if (paramInt == 160) {
      while ((!f) && (!a.b()))
      {
        a.a("server waits to receive final packet");
        f();
        if (!h) {
          a.a(paramInt, null);
        }
      }
    }
    a.a("sent final reply");
  }
  
  protected void a(c paramc, boolean paramBoolean)
  {
    if (l == null) {}
    boolean bool;
    do
    {
      return;
      byte[] arrayOfByte = (byte[])paramc.a(72);
      Object localObject = arrayOfByte;
      bool = paramBoolean;
      if (arrayOfByte == null)
      {
        paramc = (byte[])paramc.a(73);
        localObject = paramc;
        bool = paramBoolean;
        if (paramc != null)
        {
          bool = true;
          localObject = paramc;
        }
      }
      if (localObject != null)
      {
        i = true;
        a.a("server received Data eof: " + bool + " len:", localObject.length);
        l.a((byte[])localObject, bool);
        return;
      }
    } while (!bool);
    l.a(null, bool);
  }
  
  public DataInputStream b()
  {
    return new DataInputStream(a());
  }
  
  public void b(c paramc)
  {
    if (paramc == null) {
      throw new NullPointerException("headers are null");
    }
    j.a(paramc);
    if (d) {
      throw new IOException("operation closed");
    }
    if (c != null)
    {
      j.a(c, paramc);
      return;
    }
    c = ((j)paramc);
  }
  
  public DataOutputStream d()
  {
    return new DataOutputStream(c());
  }
  
  public void e()
  {
    d = true;
  }
  
  protected abstract boolean f();
  
  public c h()
  {
    return j.b(b);
  }
  
  public int i()
  {
    throw new IOException("Operation object was created by an OBEX server");
  }
  
  public boolean j()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */