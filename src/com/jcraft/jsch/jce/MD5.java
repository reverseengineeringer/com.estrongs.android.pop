package com.jcraft.jsch.jce;

import com.jcraft.jsch.HASH;
import java.io.PrintStream;
import java.security.MessageDigest;

public class MD5
  implements HASH
{
  MessageDigest a;
  
  public void a()
  {
    try
    {
      a = MessageDigest.getInstance("MD5");
      return;
    }
    catch (Exception localException)
    {
      System.err.println(localException);
    }
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public int b()
  {
    return 16;
  }
  
  public byte[] c()
  {
    return a.digest();
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jce.MD5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */