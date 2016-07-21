package com.dianxinos.library.b.b.b;

import android.content.Context;
import com.dianxinos.library.b.b.a.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

public class b
{
  static final a a = new a();
  static final ThreadLocal<MessageDigest> b = new ThreadLocal();
  static final char[] c = "0123456789abcdef".toCharArray();
  private static SecureRandom d = new SecureRandom();
  
  public static String a(char paramChar, byte[] paramArrayOfByte)
  {
    int i = 0;
    char[] arrayOfChar = new char[paramArrayOfByte.length * 2 + 1];
    arrayOfChar[0] = paramChar;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      int k = (i << 1) + 1;
      arrayOfChar[k] = c[(j >>> 4)];
      arrayOfChar[(k + 1)] = c[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String a(String paramString)
  {
    if (paramString == null)
    {
      ??? = null;
      return (String)???;
    }
    for (;;)
    {
      synchronized (a)
      {
        Object localObject2 = (String)a.a(paramString);
        ??? = localObject2;
        if (localObject2 != null) {
          break;
        }
        ??? = (MessageDigest)b.get();
        if (??? == null) {}
        try
        {
          localObject2 = MessageDigest.getInstance("SHA1");
          ??? = localObject2;
        }
        catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
        {
          continue;
        }
        b.set(???);
        if (??? == null) {
          break label116;
        }
        localObject2 = a('a', ((MessageDigest)???).digest(b(paramString)));
        synchronized (a)
        {
          a.a(paramString, localObject2);
          return (String)localObject2;
        }
      }
      ((MessageDigest)???).reset();
    }
    label116:
    return null;
  }
  
  public static byte[] a(int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    d.nextBytes(arrayOfByte);
    return arrayOfByte;
  }
  
  public static byte[] a(String paramString, int paramInt)
  {
    if (paramString == null) {
      return null;
    }
    int i = paramString.length();
    byte[] arrayOfByte;
    int j;
    if (i >= paramInt + 1)
    {
      i = paramInt;
      arrayOfByte = new byte[paramInt];
      j = 0;
      label27:
      if (j >= paramInt) {
        break label71;
      }
      if (j >= i) {
        break label63;
      }
      arrayOfByte[j] = ((byte)paramString.charAt(j + 1));
    }
    for (;;)
    {
      j += 1;
      break label27;
      i -= 1;
      break;
      label63:
      arrayOfByte[j] = 0;
    }
    label71:
    return arrayOfByte;
  }
  
  public static char[] a(Context paramContext, String paramString, char[] paramArrayOfChar)
  {
    paramContext = paramContext.getPackageName();
    char[] arrayOfChar1 = new char[paramContext.length() + paramArrayOfChar.length + paramString.length()];
    System.arraycopy(paramArrayOfChar, 0, arrayOfChar1, 0, paramArrayOfChar.length);
    System.arraycopy(paramContext.toCharArray(), 0, arrayOfChar1, paramArrayOfChar.length, paramContext.length());
    char[] arrayOfChar2 = paramString.toCharArray();
    int i = paramArrayOfChar.length;
    System.arraycopy(arrayOfChar2, 0, arrayOfChar1, paramContext.length() + i, paramString.length());
    return arrayOfChar1;
  }
  
  private static byte[] b(String paramString)
  {
    paramString = paramString.toCharArray();
    int k = paramString.length;
    byte[] arrayOfByte = new byte[k * 2];
    int j = 0;
    while (j < k)
    {
      int i = (byte)paramString[j];
      int m = j + j;
      arrayOfByte[m] = i;
      arrayOfByte[(m + 1)] = ((byte)(i >> 8));
      j += 1;
    }
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */