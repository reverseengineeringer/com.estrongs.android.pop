package com.dianxinos.library.notify.j;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.text.TextUtils;
import com.dianxinos.library.notify.a.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class d
{
  private static final a a = new a(100);
  private static final ThreadLocal<MessageDigest> b = new ThreadLocal();
  private static final ThreadLocal<MessageDigest> c = new ThreadLocal();
  private static final char[] d = "0123456789abcdef".toCharArray();
  
  public static String a(char paramChar, byte[] paramArrayOfByte)
  {
    int i = 0;
    char[] arrayOfChar = new char[paramArrayOfByte.length * 2 + 1];
    arrayOfChar[0] = paramChar;
    while (i < paramArrayOfByte.length)
    {
      int j = paramArrayOfByte[i] & 0xFF;
      int k = (i << 1) + 1;
      arrayOfChar[k] = d[(j >>> 4)];
      arrayOfChar[(k + 1)] = d[(j & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public static String a(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo(paramString, 0);
      return b(applicationInfo.sourceDir);
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
    return null;
  }
  
  public static String a(String paramString)
  {
    if (paramString == null) {
      ??? = null;
    }
    Object localObject2;
    for (;;)
    {
      return (String)???;
      synchronized (a)
      {
        localObject2 = (String)a.a(paramString);
        ??? = localObject2;
        if (localObject2 == null)
        {
          ??? = (MessageDigest)b.get();
          if (??? != null) {
            break;
          }
        }
      }
    }
    try
    {
      localObject2 = MessageDigest.getInstance("SHA1");
      ??? = localObject2;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      label122:
      for (;;) {}
    }
    b.set(???);
    for (;;)
    {
      if (??? == null) {
        break label122;
      }
      localObject2 = a('a', ((MessageDigest)???).digest(c(paramString)));
      ??? = localObject2;
      if (localObject2 == null) {
        break;
      }
      synchronized (a)
      {
        a.a(paramString, localObject2);
        return (String)localObject2;
      }
      paramString = finally;
      throw paramString;
      ((MessageDigest)???).reset();
    }
    return null;
  }
  
  public static byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (NoSuchAlgorithmException paramArrayOfByte) {}
    return null;
  }
  
  /* Error */
  public static String b(String paramString)
  {
    // Byte code:
    //   0: new 128	java/io/File
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 131	java/io/File:<init>	(Ljava/lang/String;)V
    //   8: astore 5
    //   10: aload 5
    //   12: invokevirtual 135	java/io/File:exists	()Z
    //   15: ifeq +19 -> 34
    //   18: aload 5
    //   20: invokevirtual 138	java/io/File:canRead	()Z
    //   23: ifeq +11 -> 34
    //   26: aload 5
    //   28: invokevirtual 141	java/io/File:isFile	()Z
    //   31: ifne +7 -> 38
    //   34: aconst_null
    //   35: astore_2
    //   36: aload_2
    //   37: areturn
    //   38: getstatic 22	com/dianxinos/library/notify/j/d:a	Lcom/dianxinos/library/notify/a/a;
    //   41: astore_2
    //   42: aload_2
    //   43: monitorenter
    //   44: getstatic 22	com/dianxinos/library/notify/j/d:a	Lcom/dianxinos/library/notify/a/a;
    //   47: aload_0
    //   48: invokevirtual 86	com/dianxinos/library/notify/a/a:a	(Ljava/lang/Object;)Ljava/lang/Object;
    //   51: checkcast 34	java/lang/String
    //   54: astore_3
    //   55: aload_2
    //   56: monitorexit
    //   57: aload_3
    //   58: astore_2
    //   59: aload_3
    //   60: ifnonnull -24 -> 36
    //   63: getstatic 30	com/dianxinos/library/notify/j/d:c	Ljava/lang/ThreadLocal;
    //   66: invokevirtual 90	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   69: checkcast 92	java/security/MessageDigest
    //   72: astore_2
    //   73: aload_2
    //   74: ifnonnull +127 -> 201
    //   77: ldc -113
    //   79: invokestatic 98	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   82: astore_3
    //   83: aload_3
    //   84: astore_2
    //   85: getstatic 30	com/dianxinos/library/notify/j/d:c	Ljava/lang/ThreadLocal;
    //   88: aload_2
    //   89: invokevirtual 102	java/lang/ThreadLocal:set	(Ljava/lang/Object;)V
    //   92: aload_2
    //   93: astore 4
    //   95: aload 4
    //   97: ifnull +148 -> 245
    //   100: new 145	java/io/FileInputStream
    //   103: dup
    //   104: aload 5
    //   106: invokespecial 148	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   109: astore_3
    //   110: aload_3
    //   111: astore_2
    //   112: sipush 4096
    //   115: newarray <illegal type>
    //   117: astore 5
    //   119: aload_3
    //   120: astore_2
    //   121: aload_3
    //   122: aload 5
    //   124: invokevirtual 154	java/io/InputStream:read	([B)I
    //   127: istore_1
    //   128: iload_1
    //   129: ifle +14 -> 143
    //   132: aload_3
    //   133: astore_2
    //   134: aload 4
    //   136: aload 5
    //   138: iconst_0
    //   139: iload_1
    //   140: invokevirtual 157	java/security/MessageDigest:update	([BII)V
    //   143: iload_1
    //   144: ifgt -25 -> 119
    //   147: aload_3
    //   148: astore_2
    //   149: aload 4
    //   151: invokevirtual 124	java/security/MessageDigest:digest	()[B
    //   154: invokestatic 162	com/dianxinos/library/dxbase/i:a	([B)Ljava/lang/String;
    //   157: astore 5
    //   159: aload 5
    //   161: ifnull +28 -> 189
    //   164: aload_3
    //   165: astore_2
    //   166: getstatic 22	com/dianxinos/library/notify/j/d:a	Lcom/dianxinos/library/notify/a/a;
    //   169: astore 4
    //   171: aload_3
    //   172: astore_2
    //   173: aload 4
    //   175: monitorenter
    //   176: getstatic 22	com/dianxinos/library/notify/j/d:a	Lcom/dianxinos/library/notify/a/a;
    //   179: aload_0
    //   180: aload 5
    //   182: invokevirtual 114	com/dianxinos/library/notify/a/a:a	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   185: pop
    //   186: aload 4
    //   188: monitorexit
    //   189: aload_3
    //   190: invokestatic 167	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   193: aload 5
    //   195: areturn
    //   196: astore_0
    //   197: aload_2
    //   198: monitorexit
    //   199: aload_0
    //   200: athrow
    //   201: aload_2
    //   202: invokevirtual 117	java/security/MessageDigest:reset	()V
    //   205: aload_2
    //   206: astore 4
    //   208: goto -113 -> 95
    //   211: astore_0
    //   212: aload 4
    //   214: monitorexit
    //   215: aload_3
    //   216: astore_2
    //   217: aload_0
    //   218: athrow
    //   219: astore_2
    //   220: aload_3
    //   221: astore_0
    //   222: aload_2
    //   223: astore_3
    //   224: aload_0
    //   225: astore_2
    //   226: aload_3
    //   227: invokevirtual 170	java/io/IOException:printStackTrace	()V
    //   230: aload_0
    //   231: invokestatic 167	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   234: aconst_null
    //   235: areturn
    //   236: astore_0
    //   237: aconst_null
    //   238: astore_2
    //   239: aload_2
    //   240: invokestatic 167	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   243: aload_0
    //   244: athrow
    //   245: aconst_null
    //   246: areturn
    //   247: astore_0
    //   248: goto -9 -> 239
    //   251: astore_3
    //   252: aconst_null
    //   253: astore_0
    //   254: goto -30 -> 224
    //   257: astore_3
    //   258: goto -173 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	261	0	paramString	String
    //   127	17	1	i	int
    //   35	182	2	localObject1	Object
    //   219	4	2	localIOException1	java.io.IOException
    //   225	15	2	str	String
    //   54	173	3	localObject2	Object
    //   251	1	3	localIOException2	java.io.IOException
    //   257	1	3	localNoSuchAlgorithmException	NoSuchAlgorithmException
    //   93	120	4	localObject3	Object
    //   8	186	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   44	57	196	finally
    //   197	199	196	finally
    //   176	189	211	finally
    //   212	215	211	finally
    //   112	119	219	java/io/IOException
    //   121	128	219	java/io/IOException
    //   134	143	219	java/io/IOException
    //   149	159	219	java/io/IOException
    //   166	171	219	java/io/IOException
    //   173	176	219	java/io/IOException
    //   217	219	219	java/io/IOException
    //   100	110	236	finally
    //   112	119	247	finally
    //   121	128	247	finally
    //   134	143	247	finally
    //   149	159	247	finally
    //   166	171	247	finally
    //   173	176	247	finally
    //   217	219	247	finally
    //   226	230	247	finally
    //   100	110	251	java/io/IOException
    //   77	83	257	java/security/NoSuchAlgorithmException
  }
  
  private static byte[] c(String paramString)
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
 * Qualified Name:     com.dianxinos.library.notify.j.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */