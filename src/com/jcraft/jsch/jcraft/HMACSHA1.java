package com.jcraft.jsch.jcraft;

import com.jcraft.jsch.MAC;
import java.io.PrintStream;
import java.security.MessageDigest;

public class HMACSHA1
  extends HMAC
  implements MAC
{
  public HMACSHA1()
  {
    Object localObject = null;
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-1");
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
 * Qualified Name:     com.jcraft.jsch.jcraft.HMACSHA1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */