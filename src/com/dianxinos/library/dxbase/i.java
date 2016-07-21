package com.dianxinos.library.dxbase;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class i
{
  private static PackageManager a = null;
  
  public static String a(Context paramContext, String paramString)
  {
    return a(paramContext, "SHA1", paramString, 0);
  }
  
  public static String a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (a == null) {
      a = paramContext.getPackageManager();
    }
    try
    {
      paramContext = a(paramString1, agetPackageInfo64signatures[paramInt].toByteArray());
      return paramContext;
    }
    catch (Exception paramContext) {}
    return null;
  }
  
  public static String a(String paramString)
  {
    return a("MD5", paramString.getBytes());
  }
  
  private static String a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      paramString = MessageDigest.getInstance(paramString);
      paramString.reset();
      paramString.update(paramArrayOfByte);
      paramString = a(paramString.digest());
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString) {}
    return String.valueOf(paramArrayOfByte.hashCode());
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      if (j < 16) {
        localStringBuffer.append("0").append(Integer.toHexString(j));
      }
      for (;;)
      {
        i += 1;
        break;
        if (j >= 16) {
          localStringBuffer.append(Integer.toHexString(j));
        }
      }
    }
    return localStringBuffer.toString();
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.dxbase.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */