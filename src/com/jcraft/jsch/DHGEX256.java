package com.jcraft.jsch;

import java.io.PrintStream;

public class DHGEX256
  extends KeyExchange
{
  static int a = 1024;
  static int b = 1024;
  static int c = 1024;
  private byte[] A;
  private byte[] B;
  DH d;
  byte[] e;
  byte[] f;
  byte[] g;
  byte[] h;
  private int v = 0;
  private int w;
  private Buffer x;
  private Packet y;
  private byte[] z;
  
  public String a()
  {
    if (v == 1) {
      return "DSA";
    }
    return "RSA";
  }
  
  public void a(Session paramSession, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4)
  {
    q = paramSession;
    e = paramArrayOfByte1;
    f = paramArrayOfByte2;
    g = paramArrayOfByte3;
    h = paramArrayOfByte4;
    try
    {
      r = ((HASH)Class.forName(paramSession.d("sha-256")).newInstance());
      r.a();
      x = new Buffer();
      y = new Packet(x);
    }
    catch (Exception paramArrayOfByte1)
    {
      for (;;)
      {
        try
        {
          d = ((DH)Class.forName(paramSession.d("dh")).newInstance());
          d.a();
          y.a();
          x.a((byte)34);
          x.a(a);
          x.a(b);
          x.a(c);
          paramSession.b(y);
          if (JSch.d().a(1))
          {
            JSch.d().a(1, "SSH_MSG_KEX_DH_GEX_REQUEST(" + a + "<" + b + "<" + c + ") sent");
            JSch.d().a(1, "expecting SSH_MSG_KEX_DH_GEX_GROUP");
          }
          w = 31;
          return;
        }
        catch (Exception paramSession)
        {
          throw paramSession;
        }
        paramArrayOfByte1 = paramArrayOfByte1;
        System.err.println(paramArrayOfByte1);
      }
    }
  }
  
  public boolean a(Buffer paramBuffer)
  {
    switch (w)
    {
    case 32: 
    default: 
      return false;
    case 31: 
      paramBuffer.d();
      paramBuffer.g();
      i = paramBuffer.g();
      if (i != 31)
      {
        System.err.println("type: must be SSH_MSG_KEX_DH_GEX_GROUP " + i);
        return false;
      }
      z = paramBuffer.h();
      A = paramBuffer.h();
      d.a(z);
      d.b(A);
      B = d.b();
      y.a();
      x.a((byte)32);
      x.c(B);
      q.b(y);
      if (JSch.d().a(1))
      {
        JSch.d().a(1, "SSH_MSG_KEX_DH_GEX_INIT sent");
        JSch.d().a(1, "expecting SSH_MSG_KEX_DH_GEX_REPLY");
      }
      w = 33;
      return true;
    }
    paramBuffer.d();
    paramBuffer.g();
    int i = paramBuffer.g();
    if (i != 33)
    {
      System.err.println("type: must be SSH_MSG_KEX_DH_GEX_REPLY " + i);
      return false;
    }
    u = paramBuffer.j();
    byte[] arrayOfByte1 = paramBuffer.h();
    byte[] arrayOfByte2 = paramBuffer.j();
    d.c(arrayOfByte1);
    s = a(d.c());
    x.k();
    x.b(f);
    x.b(e);
    x.b(h);
    x.b(g);
    x.b(u);
    x.a(a);
    x.a(b);
    x.a(c);
    x.c(z);
    x.c(A);
    x.c(B);
    x.c(arrayOfByte1);
    x.c(s);
    paramBuffer = new byte[x.a()];
    x.d(paramBuffer);
    r.a(paramBuffer, 0, paramBuffer.length);
    t = r.c();
    i = u[0] << 24 & 0xFF000000 | u[1] << 16 & 0xFF0000 | u[2] << 8 & 0xFF00 | u[3] & 0xFF;
    paramBuffer = Util.c(u, 4, i);
    i += 4;
    int j;
    int m;
    int k;
    int n;
    byte[] arrayOfByte3;
    byte[] arrayOfByte4;
    if (paramBuffer.equals("ssh-rsa"))
    {
      v = 0;
      paramBuffer = u;
      j = i + 1;
      i = paramBuffer[i];
      paramBuffer = u;
      m = j + 1;
      j = paramBuffer[j];
      paramBuffer = u;
      k = m + 1;
      n = paramBuffer[m];
      paramBuffer = u;
      m = k + 1;
      i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
      arrayOfByte3 = new byte[i];
      System.arraycopy(u, m, arrayOfByte3, 0, i);
      i += m;
      paramBuffer = u;
      j = i + 1;
      i = paramBuffer[i];
      paramBuffer = u;
      m = j + 1;
      j = paramBuffer[j];
      paramBuffer = u;
      k = m + 1;
      n = paramBuffer[m];
      paramBuffer = u;
      m = k + 1;
      i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
      arrayOfByte4 = new byte[i];
      System.arraycopy(u, m, arrayOfByte4, 0, i);
    }
    for (;;)
    {
      try
      {
        paramBuffer = (SignatureRSA)Class.forName(q.d("signature.rsa")).newInstance();
        System.err.println(localException1);
      }
      catch (Exception localException1)
      {
        try
        {
          paramBuffer.a();
          paramBuffer.a(arrayOfByte3, arrayOfByte4);
          paramBuffer.a(t);
          bool2 = paramBuffer.b(arrayOfByte2);
          bool1 = bool2;
          if (JSch.d().a(1))
          {
            JSch.d().a(1, "ssh_rsa_verify: signature " + bool2);
            bool1 = bool2;
          }
          w = 0;
          return bool1;
        }
        catch (Exception localException4)
        {
          boolean bool2;
          boolean bool1;
          for (;;) {}
        }
        localException1 = localException1;
        paramBuffer = null;
      }
      continue;
      if (paramBuffer.equals("ssh-dss"))
      {
        v = 1;
        paramBuffer = u;
        j = i + 1;
        i = paramBuffer[i];
        paramBuffer = u;
        m = j + 1;
        j = paramBuffer[j];
        paramBuffer = u;
        k = m + 1;
        n = paramBuffer[m];
        paramBuffer = u;
        m = k + 1;
        i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
        paramBuffer = new byte[i];
        System.arraycopy(u, m, paramBuffer, 0, i);
        i += m;
        z = paramBuffer;
        paramBuffer = u;
        j = i + 1;
        i = paramBuffer[i];
        paramBuffer = u;
        m = j + 1;
        j = paramBuffer[j];
        paramBuffer = u;
        k = m + 1;
        n = paramBuffer[m];
        paramBuffer = u;
        m = k + 1;
        i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
        arrayOfByte3 = new byte[i];
        System.arraycopy(u, m, arrayOfByte3, 0, i);
        i += m;
        paramBuffer = u;
        j = i + 1;
        i = paramBuffer[i];
        paramBuffer = u;
        m = j + 1;
        j = paramBuffer[j];
        paramBuffer = u;
        k = m + 1;
        n = paramBuffer[m];
        paramBuffer = u;
        m = k + 1;
        i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
        paramBuffer = new byte[i];
        System.arraycopy(u, m, paramBuffer, 0, i);
        i += m;
        A = paramBuffer;
        paramBuffer = u;
        j = i + 1;
        i = paramBuffer[i];
        paramBuffer = u;
        m = j + 1;
        j = paramBuffer[j];
        paramBuffer = u;
        k = m + 1;
        n = paramBuffer[m];
        paramBuffer = u;
        m = k + 1;
        i = i << 24 & 0xFF000000 | j << 16 & 0xFF0000 | n << 8 & 0xFF00 | paramBuffer[k] & 0xFF;
        arrayOfByte4 = new byte[i];
        System.arraycopy(u, m, arrayOfByte4, 0, i);
        for (;;)
        {
          try
          {
            paramBuffer = (SignatureDSA)Class.forName(q.d("signature.dss")).newInstance();
          }
          catch (Exception localException2)
          {
            try
            {
              paramBuffer.a();
              paramBuffer.a(arrayOfByte4, z, arrayOfByte3, A);
              paramBuffer.a(t);
              bool2 = paramBuffer.b(arrayOfByte2);
              bool1 = bool2;
              if (!JSch.d().a(1)) {
                break;
              }
              JSch.d().a(1, "ssh_dss_verify: signature " + bool2);
              bool1 = bool2;
            }
            catch (Exception localException3)
            {
              for (;;) {}
            }
            localException2 = localException2;
            paramBuffer = null;
          }
          System.err.println(localException2);
        }
      }
      System.err.println("unknown alg");
      bool1 = false;
    }
  }
  
  public int b()
  {
    return w;
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.DHGEX256
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */