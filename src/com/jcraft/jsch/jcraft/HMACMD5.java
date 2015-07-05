package com.jcraft.jsch.jcraft;

import com.jcraft.jsch.MAC;
import java.io.PrintStream;
import java.security.MessageDigest;

public class HMACMD5
  extends HMAC
  implements MAC
{
  public HMACMD5()
  {
    Object localObject = null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localObject = localMessageDigest;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        System.err.println(localException);
      }
    }
    a((MessageDigest)localObject);
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.jcraft.HMACMD5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */