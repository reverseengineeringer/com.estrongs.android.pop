package com.jcraft.jsch;

import java.io.PrintStream;

class KnownHosts$HashedHostKey
  extends HostKey
{
  byte[] f = null;
  byte[] g = null;
  private boolean i = false;
  
  KnownHosts$HashedHostKey(KnownHosts paramKnownHosts, String paramString, int paramInt, byte[] paramArrayOfByte)
  {
    this(paramKnownHosts, "", paramString, paramInt, paramArrayOfByte, null);
  }
  
  KnownHosts$HashedHostKey(KnownHosts paramKnownHosts, String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte, String paramString3)
  {
    super(paramString1, paramString2, paramInt, paramArrayOfByte, paramString3);
    if ((b.startsWith("|1|")) && (b.substring("|1|".length()).indexOf("|") > 0))
    {
      paramString1 = b.substring("|1|".length());
      paramKnownHosts = paramString1.substring(0, paramString1.indexOf("|"));
      paramString1 = paramString1.substring(paramString1.indexOf("|") + 1);
      f = Util.a(Util.b(paramKnownHosts), 0, paramKnownHosts.length());
      g = Util.a(Util.b(paramString1), 0, paramString1.length());
      if ((f.length != 20) || (g.length != 20))
      {
        f = null;
        g = null;
      }
    }
    else
    {
      return;
    }
    i = true;
  }
  
  KnownHosts$HashedHostKey(KnownHosts paramKnownHosts, String paramString, byte[] paramArrayOfByte)
  {
    this(paramKnownHosts, paramString, 0, paramArrayOfByte);
  }
  
  boolean a(String paramString)
  {
    if (!i) {
      return super.a(paramString);
    }
    try
    {
      synchronized (KnownHosts.a(h))
      {
        ???.a(f);
        paramString = Util.b(paramString);
        ???.a(paramString, 0, paramString.length);
        paramString = new byte[???.a()];
        ???.a(paramString, 0);
        boolean bool = Util.b(g, paramString);
        return bool;
      }
      return false;
    }
    catch (Exception paramString)
    {
      System.out.println(paramString);
    }
  }
  
  boolean f()
  {
    return i;
  }
  
  void g()
  {
    if (i) {
      return;
    }
    MAC localMAC = KnownHosts.a(h);
    if (f == null) {}
    synchronized (Session.f)
    {
      f = new byte[localMAC.a()];
      ((Random)???).a(f, 0, f.length);
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.KnownHosts.HashedHostKey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */