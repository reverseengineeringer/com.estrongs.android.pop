package com.jcraft.jsch;

import java.io.InputStream;
import java.util.Enumeration;
import java.util.Hashtable;

class ChannelSession
  extends Channel
{
  private static byte[] u = Util.b("session");
  protected int A = 80;
  protected int B = 24;
  protected int C = 640;
  protected int D = 480;
  protected byte[] E = null;
  protected boolean v = false;
  protected boolean w = false;
  protected Hashtable x = null;
  protected boolean y = false;
  protected String z = "vt100";
  
  ChannelSession()
  {
    d = u;
    j = new IO();
  }
  
  private byte[] a(Object paramObject)
  {
    if ((paramObject instanceof String)) {
      return Util.b((String)paramObject);
    }
    return (byte[])paramObject;
  }
  
  public void a(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  public void b(boolean paramBoolean)
  {
    y = paramBoolean;
  }
  
  protected void n()
  {
    Session localSession = j();
    if (v) {
      new RequestAgentForwarding().a(localSession, this);
    }
    if (w) {
      new RequestX11().a(localSession, this);
    }
    Object localObject1;
    if (y)
    {
      localObject1 = new RequestPtyReq();
      ((RequestPtyReq)localObject1).a(z);
      ((RequestPtyReq)localObject1).a(A, B, C, D);
      if (E != null) {
        ((RequestPtyReq)localObject1).a(E);
      }
      ((Request)localObject1).a(localSession, this);
    }
    if (x != null) {
      localObject1 = x.keys();
    }
    for (;;)
    {
      if (!((Enumeration)localObject1).hasMoreElements()) {
        return;
      }
      Object localObject2 = ((Enumeration)localObject1).nextElement();
      Object localObject3 = x.get(localObject2);
      RequestEnv localRequestEnv = new RequestEnv();
      ((RequestEnv)localRequestEnv).a(a(localObject2), a(localObject3));
      localRequestEnv.a(localSession, this);
    }
  }
  
  public void run()
  {
    localObject1 = new Buffer(this.i);
    Packet localPacket = new Packet((Buffer)localObject1);
    for (;;)
    {
      try
      {
        if ((i()) && (k != null) && (j != null))
        {
          InputStream localInputStream = j.a;
          if (localInputStream != null) {
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        int i;
        continue;
      }
      localObject1 = k;
      if (localObject1 != null) {}
      try
      {
        localObject1.notifyAll();
        k = null;
        return;
      }
      finally {}
      i = j.a.read(b, 14, b.length - 14 - 84);
      if (i != 0) {
        if (i == -1)
        {
          f();
        }
        else if (!n)
        {
          localPacket.a();
          ((Buffer)localObject1).a((byte)94);
          ((Buffer)localObject1).a(c);
          ((Buffer)localObject1).a(i);
          ((Buffer)localObject1).b(i);
          j().a(localPacket, this, i);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelSession
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */