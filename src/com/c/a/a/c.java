package com.c.a.a;

import com.c.a.a;
import java.io.IOException;

class c
{
  byte[] a;
  private String b;
  private boolean c;
  private boolean d;
  
  c(byte[] paramArrayOfByte)
  {
    a(paramArrayOfByte);
  }
  
  void a(byte[] paramArrayOfByte)
  {
    a.a("authChallenge", paramArrayOfByte);
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int k = paramArrayOfByte[i] & 0xFF;
      int j = paramArrayOfByte[(i + 1)] & 0xFF;
      i += 2;
      switch (k)
      {
      default: 
        a.b("invalid authChallenge tag " + k);
      }
      for (;;)
      {
        i += j;
        break;
        if (j != 16) {
          throw new IOException("OBEX Digest Challenge error in tag Nonce");
        }
        a = new byte[16];
        System.arraycopy(paramArrayOfByte, i, a, 0, 16);
        continue;
        k = paramArrayOfByte[i];
        a.a("authChallenge options", k);
        if ((k & 0x1) != 0)
        {
          bool = true;
          label156:
          c = bool;
          if ((k & 0x2) != 0) {
            break label187;
          }
        }
        label187:
        for (boolean bool = true;; bool = false)
        {
          d = bool;
          break;
          bool = false;
          break label156;
        }
        k = paramArrayOfByte[i] & 0xFF;
        byte[] arrayOfByte = new byte[j - 1];
        System.arraycopy(paramArrayOfByte, i + 1, arrayOfByte, 0, arrayOfByte.length);
        if (k == 255)
        {
          b = v.b(arrayOfByte);
        }
        else if (k == 0)
        {
          b = new String(arrayOfByte, "ASCII");
        }
        else if (k <= 9)
        {
          b = new String(arrayOfByte, "ISO-8859-" + k);
        }
        else
        {
          a.b("Unsupported charset code " + k + " in Challenge");
          b = new String(arrayOfByte, 0, j - 1, "ASCII");
        }
      }
    }
  }
  
  public boolean a()
  {
    return c;
  }
  
  public boolean b()
  {
    return d;
  }
  
  public String c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.c.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */