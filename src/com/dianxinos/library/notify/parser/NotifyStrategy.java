package com.dianxinos.library.notify.parser;

import android.text.TextUtils;
import com.dianxinos.library.dxbase.e;
import com.dianxinos.library.dxbase.k;
import com.dianxinos.library.notify.c;
import com.dianxinos.library.notify.h.b;
import java.io.Serializable;

public class NotifyStrategy
  implements Serializable
{
  private static NotifyStrategy sActiveStrategy = null;
  boolean enableDebug = false;
  long fetchPeroid2G = 28800000L;
  long fetchPeroid3G = 28800000L;
  long fetchPeroidDefault = 28800000L;
  long fetchPeroidWifi = 3600000L;
  long schedulePeroid;
  long showGap;
  
  public NotifyStrategy()
  {
    if (e.b) {}
    for (long l = 60000L;; l = 43200000L)
    {
      showGap = l;
      schedulePeroid = 1800000L;
      return;
    }
  }
  
  public static NotifyStrategy getActiveStrategy()
  {
    try
    {
      if (sActiveStrategy == null) {
        sActiveStrategy = loadStrategy();
      }
      NotifyStrategy localNotifyStrategy = sActiveStrategy;
      return localNotifyStrategy;
    }
    finally {}
  }
  
  public static NotifyStrategy loadStrategy()
  {
    String str2 = b.e();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str2 = readFromAsset(c.a(), "notify.cfg");
      str1 = str2;
      if (TextUtils.isEmpty(str2)) {
        return null;
      }
    }
    return d.a(str1);
  }
  
  /* Error */
  private static String readFromAsset(android.content.Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 96	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   4: aload_1
    //   5: invokevirtual 102	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   8: astore_0
    //   9: aload_0
    //   10: invokestatic 106	com/dianxinos/library/notify/parser/NotifyStrategy:readFromStream	(Ljava/io/InputStream;)Ljava/lang/String;
    //   13: astore_1
    //   14: aload_0
    //   15: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   18: aload_1
    //   19: areturn
    //   20: astore_0
    //   21: aconst_null
    //   22: astore_0
    //   23: aload_0
    //   24: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   27: aconst_null
    //   28: areturn
    //   29: astore_0
    //   30: aconst_null
    //   31: astore_2
    //   32: aload_0
    //   33: astore_1
    //   34: aload_2
    //   35: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   38: aload_1
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: astore_2
    //   43: goto -9 -> 34
    //   46: astore_1
    //   47: goto -24 -> 23
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	50	0	paramContext	android.content.Context
    //   0	50	1	paramString	String
    //   31	12	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   0	9	20	java/io/IOException
    //   0	9	29	finally
    //   9	14	40	finally
    //   9	14	46	java/io/IOException
  }
  
  /* Error */
  private static String readFromStream(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 115	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 116	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_2
    //   8: sipush 8192
    //   11: newarray <illegal type>
    //   13: astore_3
    //   14: aload_0
    //   15: aload_3
    //   16: invokevirtual 122	java/io/InputStream:read	([B)I
    //   19: istore_1
    //   20: iload_1
    //   21: iconst_m1
    //   22: if_icmpeq +20 -> 42
    //   25: aload_2
    //   26: aload_3
    //   27: iconst_0
    //   28: iload_1
    //   29: invokevirtual 126	java/io/ByteArrayOutputStream:write	([BII)V
    //   32: goto -18 -> 14
    //   35: astore_0
    //   36: aload_2
    //   37: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   40: aconst_null
    //   41: areturn
    //   42: aload_2
    //   43: invokevirtual 129	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   46: astore_0
    //   47: aload_2
    //   48: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   51: aload_0
    //   52: areturn
    //   53: astore_0
    //   54: aconst_null
    //   55: astore_2
    //   56: aload_2
    //   57: invokestatic 111	com/dianxinos/library/notify/j/g:a	(Ljava/io/Closeable;)V
    //   60: aload_0
    //   61: athrow
    //   62: astore_0
    //   63: goto -7 -> 56
    //   66: astore_0
    //   67: aconst_null
    //   68: astore_2
    //   69: goto -33 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	paramInputStream	java.io.InputStream
    //   19	10	1	i	int
    //   7	62	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   13	14	3	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   8	14	35	java/lang/Exception
    //   14	20	35	java/lang/Exception
    //   25	32	35	java/lang/Exception
    //   42	47	35	java/lang/Exception
    //   0	8	53	finally
    //   8	14	62	finally
    //   14	20	62	finally
    //   25	32	62	finally
    //   42	47	62	finally
    //   0	8	66	java/lang/Exception
  }
  
  public static void setActiveStrategy(NotifyStrategy paramNotifyStrategy)
  {
    if (paramNotifyStrategy != null) {}
    try
    {
      sActiveStrategy = paramNotifyStrategy;
      return;
    }
    finally
    {
      paramNotifyStrategy = finally;
      throw paramNotifyStrategy;
    }
  }
  
  public long getFetchInterval()
  {
    if (enableDebug) {
      return 180000L;
    }
    if (k.c()) {
      return fetchPeroidWifi;
    }
    if (k.d()) {
      return fetchPeroid2G;
    }
    if (k.e()) {
      return fetchPeroid3G;
    }
    return fetchPeroidDefault;
  }
  
  public long getScheduleInterval()
  {
    return schedulePeroid;
  }
  
  public long getShowGap()
  {
    return showGap;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.parser.NotifyStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */