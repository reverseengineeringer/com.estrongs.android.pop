package com.jcraft.jsch.jce;

import com.jcraft.jsch.MAC;
import java.io.PrintStream;
import javax.crypto.Mac;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;

abstract class HMAC
  implements MAC
{
  protected String a;
  protected int b;
  protected String c;
  private Mac d;
  private final byte[] e = new byte[4];
  
  public int a()
  {
    return b;
  }
  
  public void a(int paramInt)
  {
    e[0] = ((byte)(paramInt >>> 24));
    e[1] = ((byte)(paramInt >>> 16));
    e[2] = ((byte)(paramInt >>> 8));
    e[3] = ((byte)paramInt);
    a(e, 0, 4);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = paramArrayOfByte;
    if (paramArrayOfByte.length > b)
    {
      arrayOfByte = new byte[b];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, b);
    }
    paramArrayOfByte = new SecretKeySpec(arrayOfByte, c);
    d = Mac.getInstance(c);
    d.init(paramArrayOfByte);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      d.doFinal(paramArrayOfByte, paramInt);
      return;
    }
    catch (ShortBufferException paramArrayOfByte)
    {
      System.err.println(paramArrayOfByte);
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    d.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.HMAC
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */