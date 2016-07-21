package com.baidu.mobstat;

import java.security.MessageDigest;

public final class co
{
  private static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] >> 4 & 0xF;
      int k = paramArrayOfByte[i] & 0xF;
      if (j >= 10)
      {
        j = j + 97 - 10;
        label47:
        localStringBuilder.append((char)j);
        if (k < 10) {
          break label92;
        }
      }
      label92:
      for (j = k + 97 - 10;; j = k + 48)
      {
        localStringBuilder.append((char)j);
        i += 1;
        break;
        j += 48;
        break label47;
      }
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  private static String b(MessageDigest paramMessageDigest, java.io.File paramFile)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 38	java/io/File:isFile	()Z
    //   4: ifeq +121 -> 125
    //   7: new 40	java/io/FileInputStream
    //   10: dup
    //   11: aload_1
    //   12: invokespecial 43	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   15: astore_3
    //   16: aload_3
    //   17: astore_1
    //   18: sipush 4048
    //   21: newarray <illegal type>
    //   23: astore 4
    //   25: aload_3
    //   26: astore_1
    //   27: aload_3
    //   28: aload 4
    //   30: invokevirtual 47	java/io/FileInputStream:read	([B)I
    //   33: istore_2
    //   34: iload_2
    //   35: iconst_m1
    //   36: if_icmpne +19 -> 55
    //   39: aload_3
    //   40: ifnull +7 -> 47
    //   43: aload_3
    //   44: invokevirtual 50	java/io/FileInputStream:close	()V
    //   47: aload_0
    //   48: invokevirtual 56	java/security/MessageDigest:digest	()[B
    //   51: invokestatic 58	com/baidu/mobstat/co:a	([B)Ljava/lang/String;
    //   54: areturn
    //   55: aload_3
    //   56: astore_1
    //   57: aload_0
    //   58: aload 4
    //   60: iconst_0
    //   61: iload_2
    //   62: invokevirtual 62	java/security/MessageDigest:update	([BII)V
    //   65: goto -40 -> 25
    //   68: astore 4
    //   70: aload_3
    //   71: astore_1
    //   72: aload 4
    //   74: invokestatic 67	com/baidu/mobstat/cr:b	(Ljava/lang/Throwable;)V
    //   77: aload_3
    //   78: ifnull -31 -> 47
    //   81: aload_3
    //   82: invokevirtual 50	java/io/FileInputStream:close	()V
    //   85: goto -38 -> 47
    //   88: astore_1
    //   89: aload_1
    //   90: invokestatic 67	com/baidu/mobstat/cr:b	(Ljava/lang/Throwable;)V
    //   93: goto -46 -> 47
    //   96: astore_1
    //   97: aload_1
    //   98: invokestatic 67	com/baidu/mobstat/cr:b	(Ljava/lang/Throwable;)V
    //   101: goto -54 -> 47
    //   104: astore_0
    //   105: aconst_null
    //   106: astore_1
    //   107: aload_1
    //   108: ifnull +7 -> 115
    //   111: aload_1
    //   112: invokevirtual 50	java/io/FileInputStream:close	()V
    //   115: aload_0
    //   116: athrow
    //   117: astore_1
    //   118: aload_1
    //   119: invokestatic 67	com/baidu/mobstat/cr:b	(Ljava/lang/Throwable;)V
    //   122: goto -7 -> 115
    //   125: ldc 69
    //   127: areturn
    //   128: astore_0
    //   129: goto -22 -> 107
    //   132: astore 4
    //   134: aconst_null
    //   135: astore_3
    //   136: goto -66 -> 70
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	paramMessageDigest	MessageDigest
    //   0	139	1	paramFile	java.io.File
    //   33	29	2	i	int
    //   15	121	3	localFileInputStream	java.io.FileInputStream
    //   23	36	4	arrayOfByte	byte[]
    //   68	5	4	localException1	Exception
    //   132	1	4	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   18	25	68	java/lang/Exception
    //   27	34	68	java/lang/Exception
    //   57	65	68	java/lang/Exception
    //   81	85	88	java/io/IOException
    //   43	47	96	java/io/IOException
    //   7	16	104	finally
    //   111	115	117	java/io/IOException
    //   18	25	128	finally
    //   27	34	128	finally
    //   57	65	128	finally
    //   72	77	128	finally
    //   7	16	132	java/lang/Exception
  }
  
  private static String b(MessageDigest paramMessageDigest, byte[] paramArrayOfByte)
  {
    paramMessageDigest.update(paramArrayOfByte);
    return a(paramMessageDigest.digest());
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */