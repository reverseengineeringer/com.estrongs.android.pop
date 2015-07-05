package com.jcraft.jsch;

import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.Hashtable;

class ChannelX11
  extends Channel
{
  private static Hashtable A = new Hashtable();
  private static byte[] B = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  static byte[] u;
  private static String v = "127.0.0.1";
  private static int w = 6000;
  private static byte[] y;
  private static Hashtable z;
  private Socket C = null;
  private byte[] D = new byte[0];
  private boolean x = true;
  
  static
  {
    u = null;
    y = null;
    z = new Hashtable();
  }
  
  ChannelX11()
  {
    c(131072);
    d(131072);
    e(16384);
    d = Util.b("x11");
    o = true;
  }
  
  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    if (paramArrayOfByte1.length != paramArrayOfByte2.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= paramArrayOfByte1.length) {
        return true;
      }
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
  }
  
  static byte[] c(Session paramSession)
  {
    int i = 0;
    for (;;)
    {
      byte[] arrayOfByte;
      Object localObject;
      synchronized (A)
      {
        arrayOfByte = (byte[])A.get(paramSession);
        localObject = arrayOfByte;
        if (arrayOfByte == null)
        {
          localObject = Session.f;
          arrayOfByte = new byte[16];
        }
        try
        {
          ((Random)localObject).a(arrayOfByte, 0, 16);
          z.put(paramSession, arrayOfByte);
          localObject = new byte[32];
          if (i >= 16)
          {
            A.put(paramSession, localObject);
            return (byte[])localObject;
          }
        }
        finally {}
      }
      localObject[(i * 2)] = B[(arrayOfByte[i] >>> 4 & 0xF)];
      localObject[(i * 2 + 1)] = B[(arrayOfByte[i] & 0xF)];
      i += 1;
    }
  }
  
  private byte[] c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[D.length + paramInt2];
    System.arraycopy(paramArrayOfByte, paramInt1, arrayOfByte, D.length, paramInt2);
    if (D.length > 0) {
      System.arraycopy(D, 0, arrayOfByte, 0, D.length);
    }
    D = arrayOfByte;
    return D;
  }
  
  static void d(Session paramSession)
  {
    synchronized (A)
    {
      A.remove(paramSession);
      z.remove(paramSession);
      return;
    }
  }
  
  void a(byte[] arg1, int paramInt1, int paramInt2)
  {
    if (x) {}
    for (;;)
    {
      Object localObject1;
      byte[] arrayOfByte1;
      int i;
      try
      {
        localObject1 = j();
        arrayOfByte1 = c(???, paramInt1, paramInt2);
        i = arrayOfByte1.length;
        if (i < 9) {
          return;
        }
      }
      catch (JSchException ???)
      {
        throw new IOException(???.toString());
      }
      paramInt1 = arrayOfByte1[6];
      paramInt1 = (arrayOfByte1[7] & 0xFF) + (paramInt1 & 0xFF) * 256;
      paramInt2 = (arrayOfByte1[8] & 0xFF) * 256 + (arrayOfByte1[9] & 0xFF);
      if (((arrayOfByte1[0] & 0xFF) != 66) && ((arrayOfByte1[0] & 0xFF) == 108))
      {
        paramInt1 = paramInt1 << 8 & 0xFF00 | paramInt1 >>> 8 & 0xFF;
        paramInt2 = paramInt2 << 8 & 0xFF00 | paramInt2 >>> 8 & 0xFF;
      }
      while (i >= paramInt1 + 12 + (-paramInt1 & 0x3) + paramInt2)
      {
        byte[] arrayOfByte2 = new byte[paramInt2];
        System.arraycopy(arrayOfByte1, paramInt1 + 12 + (-paramInt1 & 0x3), arrayOfByte2, 0, paramInt2);
        for (;;)
        {
          synchronized (z)
          {
            localObject1 = (byte[])z.get(localObject1);
            if (a(arrayOfByte2, (byte[])localObject1))
            {
              if (u != null) {
                System.arraycopy(u, 0, arrayOfByte1, (-paramInt1 & 0x3) + (paramInt1 + 12), paramInt2);
              }
              x = false;
              j.a(arrayOfByte1, 0, i);
              D = null;
              return;
            }
          }
          k = null;
          f();
          j.c();
          h();
        }
        j.a(???, paramInt1, paramInt2);
        return;
      }
    }
  }
  
  public void run()
  {
    for (;;)
    {
      Packet localPacket;
      try
      {
        C = Util.a(v, w, 10000);
        C.setTcpNoDelay(true);
        j = new IO();
        j.a(C.getInputStream());
        j.a(C.getOutputStream());
        k();
        k = Thread.currentThread();
        Buffer localBuffer = new Buffer(this.i);
        localPacket = new Packet(localBuffer);
      }
      catch (Exception localException1)
      {
        h(1);
        n = true;
        h();
        return;
      }
      try
      {
        if ((k != null) && (j != null))
        {
          InputStream localInputStream = j.a;
          if (localInputStream != null) {
            break label144;
          }
        }
      }
      catch (Exception localException2)
      {
        int i;
        continue;
      }
      h();
      return;
      label144:
      i = j.a.read(b, 14, b.length - 14 - 84);
      if (i <= 0)
      {
        f();
      }
      else if (!n)
      {
        localPacket.a();
        localException1.a((byte)94);
        localException1.a(c);
        localException1.a(i);
        localException1.b(i);
        j().a(localPacket, this, i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.ChannelX11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */