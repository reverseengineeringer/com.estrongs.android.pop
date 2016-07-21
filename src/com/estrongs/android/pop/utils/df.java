package com.estrongs.android.pop.utils;

import com.estrongs.android.util.aa;
import com.estrongs.android.util.af;

final class df
  implements af
{
  df(aa paramaa) {}
  
  /* Error */
  public void downloadCompleted(Object arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/estrongs/android/pop/utils/df:a	Lcom/estrongs/android/util/aa;
    //   4: invokevirtual 24	com/estrongs/android/util/aa:e	()Ljava/lang/String;
    //   7: astore_3
    //   8: aload_3
    //   9: iconst_0
    //   10: invokestatic 29	com/estrongs/android/pop/utils/de:a	(Ljava/lang/String;Z)Ljava/util/HashMap;
    //   13: astore 4
    //   15: invokestatic 34	com/estrongs/android/pop/FexApplication:a	()Lcom/estrongs/android/pop/FexApplication;
    //   18: invokestatic 39	com/estrongs/android/pop/ad:a	(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;
    //   21: new 41	java/util/Date
    //   24: dup
    //   25: invokespecial 42	java/util/Date:<init>	()V
    //   28: invokevirtual 46	java/util/Date:getTime	()J
    //   31: invokevirtual 50	com/estrongs/android/pop/ad:i	(J)V
    //   34: aload 4
    //   36: ifnull +13 -> 49
    //   39: aload 4
    //   41: invokevirtual 56	java/util/HashMap:size	()I
    //   44: istore_2
    //   45: iload_2
    //   46: ifne +8 -> 54
    //   49: iconst_0
    //   50: putstatic 60	com/estrongs/android/pop/utils/de:b	Z
    //   53: return
    //   54: invokestatic 64	com/estrongs/android/pop/utils/de:d	()Ljava/lang/Object;
    //   57: astore_1
    //   58: aload_1
    //   59: monitorenter
    //   60: aload 4
    //   62: invokestatic 67	com/estrongs/android/pop/utils/de:a	(Ljava/util/HashMap;)Ljava/util/HashMap;
    //   65: pop
    //   66: new 69	java/io/File
    //   69: dup
    //   70: getstatic 75	com/estrongs/android/pop/a:u	Ljava/lang/String;
    //   73: invokespecial 78	java/io/File:<init>	(Ljava/lang/String;)V
    //   76: astore 4
    //   78: aload 4
    //   80: invokevirtual 82	java/io/File:delete	()Z
    //   83: pop
    //   84: new 69	java/io/File
    //   87: dup
    //   88: aload_3
    //   89: invokespecial 78	java/io/File:<init>	(Ljava/lang/String;)V
    //   92: aload 4
    //   94: invokevirtual 86	java/io/File:renameTo	(Ljava/io/File;)Z
    //   97: pop
    //   98: aload_1
    //   99: monitorexit
    //   100: iconst_0
    //   101: putstatic 60	com/estrongs/android/pop/utils/de:b	Z
    //   104: return
    //   105: astore_3
    //   106: aload_1
    //   107: monitorexit
    //   108: aload_3
    //   109: athrow
    //   110: astore_1
    //   111: iconst_0
    //   112: putstatic 60	com/estrongs/android/pop/utils/de:b	Z
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	df
    //   44	2	2	i	int
    //   7	82	3	str	String
    //   105	4	3	localObject1	Object
    //   13	80	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   60	100	105	finally
    //   106	108	105	finally
    //   0	34	110	finally
    //   39	45	110	finally
    //   54	60	110	finally
    //   108	110	110	finally
  }
  
  public void downloadError(Object paramObject, Throwable paramThrowable)
  {
    de.b = false;
  }
  
  public void downloadProgress(Object paramObject, long paramLong1, long paramLong2) {}
  
  public void downloadStarted(Object paramObject) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.utils.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */