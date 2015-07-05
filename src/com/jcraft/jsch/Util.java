package com.jcraft.jsch;

import java.io.UnsupportedEncodingException;
import java.net.Socket;
import java.util.Vector;

class Util
{
  static final byte[] a = b("");
  private static final byte[] b = b("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=");
  private static String[] c = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };
  
  private static byte a(byte paramByte)
  {
    if (paramByte == 61) {}
    for (;;)
    {
      return 0;
      int i = 0;
      while (i < b.length)
      {
        if (paramByte == b[i]) {
          return (byte)i;
        }
        i += 1;
      }
    }
  }
  
  static String a(HASH paramHASH, byte[] paramArrayOfByte)
  {
    int i = 0;
    try
    {
      paramHASH.a();
      paramHASH.a(paramArrayOfByte, 0, paramArrayOfByte.length);
      paramHASH = paramHASH.c();
      paramArrayOfByte = new StringBuffer();
      for (;;)
      {
        if (i >= paramHASH.length) {
          return paramArrayOfByte.toString();
        }
        int j = paramHASH[i] & 0xFF;
        paramArrayOfByte.append(c[(j >>> 4 & 0xF)]);
        paramArrayOfByte.append(c[(j & 0xF)]);
        if (i + 1 < paramHASH.length) {
          paramArrayOfByte.append(":");
        }
        i += 1;
      }
      return "???";
    }
    catch (Exception paramHASH) {}
  }
  
  static String a(String paramString)
  {
    byte[] arrayOfByte1 = b(paramString);
    byte[] arrayOfByte2 = a(arrayOfByte1);
    if (arrayOfByte1.length == arrayOfByte2.length) {
      return paramString;
    }
    return b(arrayOfByte2);
  }
  
  static String a(String paramString, String[] paramArrayOfString)
  {
    String[] arrayOfString = a(paramString, ",");
    String str = null;
    int i = 0;
    if (i >= arrayOfString.length) {
      return str;
    }
    int j = 0;
    label25:
    if (j >= paramArrayOfString.length)
    {
      if (str != null) {
        break label74;
      }
      paramString = arrayOfString[i];
    }
    for (;;)
    {
      i += 1;
      str = paramString;
      break;
      paramString = str;
      if (!arrayOfString[i].equals(paramArrayOfString[j]))
      {
        j += 1;
        break label25;
        label74:
        paramString = str + "," + arrayOfString[i];
      }
    }
  }
  
  static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2, String paramString)
  {
    try
    {
      paramString = new String(paramArrayOfByte, paramInt1, paramInt2, paramString);
      return paramString;
    }
    catch (UnsupportedEncodingException paramString) {}
    return new String(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  static String a(byte[] paramArrayOfByte, String paramString)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, paramString);
  }
  
  static Socket a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 == 0) {
      try
      {
        paramString = new Socket(paramString, paramInt1);
        return paramString;
      }
      catch (Exception paramString)
      {
        str = paramString.toString();
        if ((paramString instanceof Throwable)) {
          throw new JSchException(str, paramString);
        }
        throw new JSchException(str);
      }
    }
    Socket[] arrayOfSocket = new Socket[1];
    Exception[] arrayOfException = new Exception[1];
    str = "";
    Thread localThread = new Thread(new Util.1(arrayOfSocket, paramString, paramInt1, arrayOfException));
    localThread.setName("Opening Socket " + paramString);
    localThread.start();
    long l = paramInt2;
    try
    {
      localThread.join(l);
      paramString = "timeout: ";
    }
    catch (InterruptedException paramString)
    {
      for (;;)
      {
        paramString = str;
      }
    }
    if ((arrayOfSocket[0] != null) && (arrayOfSocket[0].isConnected())) {
      return arrayOfSocket[0];
    }
    paramString = paramString + "socket is not established";
    if (arrayOfException[0] != null) {
      paramString = arrayOfException[0].toString();
    }
    localThread.interrupt();
    throw new JSchException(paramString, arrayOfException[0]);
  }
  
  private static boolean a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    if ((paramArrayOfByte2.length > 0) && (paramArrayOfByte2[0] == 46))
    {
      if ((paramArrayOfByte1.length > 0) && (paramArrayOfByte1[0] == 46))
      {
        if ((paramArrayOfByte1.length == 2) && (paramArrayOfByte1[1] == 42)) {
          return true;
        }
        return b(paramArrayOfByte1, paramInt1 + 1, paramArrayOfByte2, paramInt2 + 1);
      }
      return false;
    }
    return b(paramArrayOfByte1, paramInt1, paramArrayOfByte2, paramInt2);
  }
  
  static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return a(paramArrayOfByte1, 0, paramArrayOfByte2, 0);
  }
  
  static byte[] a(byte[] paramArrayOfByte)
  {
    int j = paramArrayOfByte.length;
    int i = 0;
    for (;;)
    {
      if (i >= j) {}
      do
      {
        if (j != paramArrayOfByte.length) {
          break label66;
        }
        return paramArrayOfByte;
        if (paramArrayOfByte[i] != 92) {
          break;
        }
      } while (i + 1 == j);
      System.arraycopy(paramArrayOfByte, i + 1, paramArrayOfByte, i, paramArrayOfByte.length - (i + 1));
      j -= 1;
      i += 1;
      continue;
      i += 1;
    }
    label66:
    byte[] arrayOfByte = new byte[j];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, j);
    return arrayOfByte;
  }
  
  static byte[] a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    for (;;)
    {
      int j;
      try
      {
        arrayOfByte = new byte[paramInt2];
        j = paramInt1;
      }
      catch (ArrayIndexOutOfBoundsException paramArrayOfByte)
      {
        byte[] arrayOfByte;
        throw new JSchException("fromBase64: invalid base64 data", paramArrayOfByte);
      }
      paramArrayOfByte = new byte[i];
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, i);
      return paramArrayOfByte;
      arrayOfByte[i] = ((byte)(a(paramArrayOfByte[j]) << 2 | (a(paramArrayOfByte[(j + 1)]) & 0x30) >>> 4));
      if (paramArrayOfByte[(j + 2)] == 61)
      {
        i += 1;
      }
      else
      {
        arrayOfByte[(i + 1)] = ((byte)((a(paramArrayOfByte[(j + 1)]) & 0xF) << 4 | (a(paramArrayOfByte[(j + 2)]) & 0x3C) >>> 2));
        if (paramArrayOfByte[(j + 3)] == 61)
        {
          i += 2;
        }
        else
        {
          arrayOfByte[(i + 2)] = ((byte)((a(paramArrayOfByte[(j + 2)]) & 0x3) << 6 | a(paramArrayOfByte[(j + 3)]) & 0x3F));
          j += 4;
          i += 3;
          if (j < paramInt1 + paramInt2) {}
        }
      }
    }
  }
  
  static String[] a(String paramString1, String paramString2)
  {
    int j = 0;
    if (paramString1 == null) {
      return null;
    }
    byte[] arrayOfByte = b(paramString1);
    Vector localVector = new Vector();
    int k;
    for (int i = 0;; i = k + 1)
    {
      k = paramString1.indexOf(paramString2, i);
      if (k < 0) {
        break;
      }
      localVector.addElement(c(arrayOfByte, i, k - i));
    }
    localVector.addElement(c(arrayOfByte, i, arrayOfByte.length - i));
    paramString1 = new String[localVector.size()];
    i = j;
    for (;;)
    {
      if (i >= paramString1.length) {
        return paramString1;
      }
      paramString1[i] = ((String)localVector.elementAt(i));
      i += 1;
    }
  }
  
  private static int b(byte paramByte)
  {
    if ((byte)(paramByte & 0x80) == 0) {}
    do
    {
      return 1;
      if ((byte)(paramByte & 0xE0) == -64) {
        return 2;
      }
    } while ((byte)(paramByte & 0xF0) != -32);
    return 3;
  }
  
  static String b(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, 0, paramArrayOfByte.length, "UTF-8");
  }
  
  private static boolean b(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int m = paramArrayOfByte1.length;
    if (m == 0) {}
    int k;
    int i;
    label23:
    label401:
    do
    {
      return false;
      k = paramArrayOfByte2.length;
      i = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i;
      if ((paramInt2 >= m) || (paramInt1 >= k)) {
        i = paramInt1;
      }
      int j;
      for (paramInt1 = paramInt2;; paramInt1 = j)
      {
        if ((paramInt1 != m) || (i != k)) {
          break label401;
        }
        return true;
        if (paramArrayOfByte1[paramInt2] == 92)
        {
          if (paramInt2 + 1 == m) {
            break;
          }
          paramInt2 += 1;
          if (paramArrayOfByte1[paramInt2] != paramArrayOfByte2[paramInt1]) {
            break;
          }
          paramInt2 += b(paramArrayOfByte1[paramInt2]);
          paramInt1 += b(paramArrayOfByte2[paramInt1]);
          break label23;
        }
        if (paramArrayOfByte1[paramInt2] == 42)
        {
          for (;;)
          {
            if (paramInt2 >= m) {}
            while (paramArrayOfByte1[paramInt2] != 42)
            {
              if (m != paramInt2) {
                break;
              }
              return true;
            }
            paramInt2 += 1;
          }
          j = paramArrayOfByte1[paramInt2];
          if (j == 63)
          {
            while (paramInt1 < k)
            {
              if (b(paramArrayOfByte1, paramInt2, paramArrayOfByte2, paramInt1)) {
                return true;
              }
              paramInt1 += b(paramArrayOfByte2[paramInt1]);
            }
            break;
          }
          i = paramInt1;
          if (j == 92)
          {
            if (paramInt2 + 1 == m) {
              break;
            }
            paramInt2 += 1;
            b1 = paramArrayOfByte1[paramInt2];
            while (paramInt1 < k)
            {
              if ((b1 == paramArrayOfByte2[paramInt1]) && (b(paramArrayOfByte1, b(b1) + paramInt2, paramArrayOfByte2, b(paramArrayOfByte2[paramInt1]) + paramInt1))) {
                return true;
              }
              paramInt1 += b(paramArrayOfByte2[paramInt1]);
            }
            break;
          }
          while (i < k)
          {
            byte b1;
            if ((j == paramArrayOfByte2[i]) && (b(paramArrayOfByte1, paramInt2, paramArrayOfByte2, i))) {
              return true;
            }
            i += b(paramArrayOfByte2[i]);
          }
          return false;
        }
        if (paramArrayOfByte1[paramInt2] == 63)
        {
          paramInt2 += 1;
          paramInt1 += b(paramArrayOfByte2[paramInt1]);
          break label23;
        }
        if (paramArrayOfByte1[paramInt2] != paramArrayOfByte2[paramInt1]) {
          break;
        }
        j = paramInt2 + b(paramArrayOfByte1[paramInt2]);
        i = paramInt1 + b(paramArrayOfByte2[paramInt1]);
        paramInt1 = i;
        paramInt2 = j;
        if (i < k) {
          break label23;
        }
        if (j >= m) {
          return true;
        }
        paramInt1 = i;
        paramInt2 = j;
        if (paramArrayOfByte1[j] != 42) {
          break label23;
        }
      }
    } while ((i < k) || (paramArrayOfByte1[paramInt1] != 42));
    for (;;)
    {
      if (paramInt1 >= m) {
        return true;
      }
      if (paramArrayOfByte1[paramInt1] != 42) {
        break;
      }
      paramInt1 += 1;
    }
  }
  
  static boolean b(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int j = paramArrayOfByte1.length;
    if (j != paramArrayOfByte2.length) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return true;
      }
      if (paramArrayOfByte1[i] != paramArrayOfByte2[i]) {
        break;
      }
      i += 1;
    }
  }
  
  static byte[] b(String paramString)
  {
    return b(paramString, "UTF-8");
  }
  
  static byte[] b(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      return null;
    }
    try
    {
      paramString2 = paramString1.getBytes(paramString2);
      return paramString2;
    }
    catch (UnsupportedEncodingException paramString2) {}
    return paramString1.getBytes();
  }
  
  static byte[] b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[paramInt2 * 2];
    int k = paramInt2 / 3 * 3 + paramInt1;
    int j = paramInt1;
    int i = 0;
    if (j >= k)
    {
      paramInt2 = paramInt1 + paramInt2 - k;
      if (paramInt2 != 1) {
        break label269;
      }
      paramInt2 = paramArrayOfByte[j];
      paramInt1 = i + 1;
      arrayOfByte[i] = b[(paramInt2 >>> 2 & 0x3F)];
      i = paramArrayOfByte[j];
      paramInt2 = paramInt1 + 1;
      arrayOfByte[paramInt1] = b[((i & 0x3) << 4 & 0x3F)];
      i = paramInt2 + 1;
      arrayOfByte[paramInt2] = 61;
      paramInt1 = i + 1;
      arrayOfByte[i] = 61;
    }
    for (;;)
    {
      paramArrayOfByte = new byte[paramInt1];
      System.arraycopy(arrayOfByte, 0, paramArrayOfByte, 0, paramInt1);
      return paramArrayOfByte;
      int n = paramArrayOfByte[j];
      int m = i + 1;
      arrayOfByte[i] = b[(n >>> 2 & 0x3F)];
      n = paramArrayOfByte[j];
      int i1 = paramArrayOfByte[(j + 1)];
      i = m + 1;
      arrayOfByte[m] = b[((n & 0x3) << 4 | i1 >>> 4 & 0xF)];
      n = paramArrayOfByte[(j + 1)];
      i1 = paramArrayOfByte[(j + 2)];
      m = i + 1;
      arrayOfByte[i] = b[((n & 0xF) << 2 | i1 >>> 6 & 0x3)];
      i = paramArrayOfByte[(j + 2)];
      arrayOfByte[m] = b[(i & 0x3F)];
      j += 3;
      i = m + 1;
      break;
      label269:
      paramInt1 = i;
      if (paramInt2 == 2)
      {
        paramInt2 = paramArrayOfByte[j];
        paramInt1 = i + 1;
        arrayOfByte[i] = b[(paramInt2 >>> 2 & 0x3F)];
        i = paramArrayOfByte[j];
        k = paramArrayOfByte[(j + 1)];
        paramInt2 = paramInt1 + 1;
        arrayOfByte[paramInt1] = b[((i & 0x3) << 4 | k >>> 4 & 0xF)];
        paramInt1 = paramArrayOfByte[(j + 1)];
        i = paramInt2 + 1;
        arrayOfByte[paramInt2] = b[((paramInt1 & 0xF) << 2 & 0x3F)];
        paramInt1 = i + 1;
        arrayOfByte[i] = 61;
      }
    }
  }
  
  static String c(String paramString)
  {
    String str = paramString;
    try
    {
      if (paramString.startsWith("~")) {
        str = paramString.replace("~", System.getProperty("user.home"));
      }
      return str;
    }
    catch (SecurityException localSecurityException) {}
    return paramString;
  }
  
  static String c(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    if (i >= paramArrayOfByte.length) {
      return localStringBuffer.toString();
    }
    String str2 = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
    StringBuilder localStringBuilder = new StringBuilder("0x");
    if (str2.length() == 1) {}
    for (String str1 = "0";; str1 = "")
    {
      localStringBuffer.append(str1 + str2);
      if (i + 1 < paramArrayOfByte.length) {
        localStringBuffer.append(":");
      }
      i += 1;
      break;
    }
  }
  
  static String c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return a(paramArrayOfByte, paramInt1, paramInt2, "UTF-8");
  }
  
  static void d(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < paramArrayOfByte.length)
      {
        paramArrayOfByte[i] = 0;
        i += 1;
      }
    }
  }
  
  /* Error */
  static byte[] d(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 264	com/jcraft/jsch/Util:c	(Ljava/lang/String;)Ljava/lang/String;
    //   4: astore_0
    //   5: new 266	java/io/File
    //   8: dup
    //   9: aload_0
    //   10: invokespecial 267	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: astore_3
    //   14: new 269	java/io/FileInputStream
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 270	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   22: astore_0
    //   23: aload_3
    //   24: invokevirtual 273	java/io/File:length	()J
    //   27: l2i
    //   28: newarray <illegal type>
    //   30: astore_3
    //   31: iconst_0
    //   32: istore_1
    //   33: aload_0
    //   34: aload_3
    //   35: iload_1
    //   36: aload_3
    //   37: arraylength
    //   38: iload_1
    //   39: isub
    //   40: invokevirtual 277	java/io/FileInputStream:read	([BII)I
    //   43: istore_2
    //   44: iload_2
    //   45: ifgt +17 -> 62
    //   48: aload_0
    //   49: invokevirtual 280	java/io/FileInputStream:close	()V
    //   52: aload_0
    //   53: ifnull +7 -> 60
    //   56: aload_0
    //   57: invokevirtual 280	java/io/FileInputStream:close	()V
    //   60: aload_3
    //   61: areturn
    //   62: iload_1
    //   63: iload_2
    //   64: iadd
    //   65: istore_1
    //   66: goto -33 -> 33
    //   69: astore_3
    //   70: aload_0
    //   71: ifnull +7 -> 78
    //   74: aload_0
    //   75: invokevirtual 280	java/io/FileInputStream:close	()V
    //   78: aload_3
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	paramString	String
    //   32	34	1	i	int
    //   43	22	2	j	int
    //   13	48	3	localObject1	Object
    //   69	10	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   23	31	69	finally
    //   33	44	69	finally
    //   48	52	69	finally
  }
}

/* Location:
 * Qualified Name:     com.jcraft.jsch.Util
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */