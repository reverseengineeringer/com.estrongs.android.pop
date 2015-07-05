package com.estrongs.fs.util;

import java.security.MessageDigest;

public class l
  implements k
{
  MessageDigest a = null;
  byte[] b;
  
  public l(String paramString)
  {
    a = MessageDigest.getInstance(paramString);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  public byte[] a()
  {
    if (b == null)
    {
      byte[] arrayOfByte = a.digest();
      b = arrayOfByte;
      return arrayOfByte;
    }
    return b;
  }
  
  public String toString()
  {
    return j.a(a());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.util.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */