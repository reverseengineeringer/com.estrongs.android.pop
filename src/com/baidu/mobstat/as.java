package com.baidu.mobstat;

public class as
{
  private static k a;
  
  /* Error */
  public static k a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: ldc 11
    //   5: invokestatic 16	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   8: getstatic 18	com/baidu/mobstat/as:a	Lcom/baidu/mobstat/k;
    //   11: astore_1
    //   12: aload_1
    //   13: ifnonnull +93 -> 106
    //   16: aload_0
    //   17: ldc 20
    //   19: invokestatic 25	com/baidu/mobstat/av:a	(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    //   22: astore_2
    //   23: aload_2
    //   24: ifnull +82 -> 106
    //   27: new 27	com/baidu/mobstat/au
    //   30: dup
    //   31: aload_2
    //   32: invokevirtual 33	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   35: invokespecial 37	com/baidu/mobstat/au:<init>	(Ljava/lang/Object;)V
    //   38: astore_2
    //   39: ldc 39
    //   41: invokestatic 16	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   44: aload_2
    //   45: astore_1
    //   46: aload_1
    //   47: astore_2
    //   48: aload_1
    //   49: ifnonnull +16 -> 65
    //   52: new 41	com/baidu/mobstat/at
    //   55: dup
    //   56: invokespecial 44	com/baidu/mobstat/at:<init>	()V
    //   59: astore_2
    //   60: ldc 46
    //   62: invokestatic 16	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   65: aload_2
    //   66: putstatic 18	com/baidu/mobstat/as:a	Lcom/baidu/mobstat/k;
    //   69: aload_0
    //   70: aload_2
    //   71: invokestatic 49	com/baidu/mobstat/av:a	(Landroid/content/Context;Lcom/baidu/mobstat/k;)V
    //   74: ldc 51
    //   76: invokestatic 16	com/baidu/mobstat/bb:a	(Ljava/lang/String;)V
    //   79: ldc 2
    //   81: monitorexit
    //   82: aload_2
    //   83: areturn
    //   84: astore_2
    //   85: aload_2
    //   86: invokestatic 54	com/baidu/mobstat/bb:a	(Ljava/lang/Throwable;)V
    //   89: goto -43 -> 46
    //   92: astore_0
    //   93: ldc 2
    //   95: monitorexit
    //   96: aload_0
    //   97: athrow
    //   98: astore_3
    //   99: aload_2
    //   100: astore_1
    //   101: aload_3
    //   102: astore_2
    //   103: goto -18 -> 85
    //   106: goto -60 -> 46
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	paramContext	android.content.Context
    //   11	90	1	localObject1	Object
    //   22	61	2	localObject2	Object
    //   84	16	2	localException1	Exception
    //   102	1	2	localObject3	Object
    //   98	4	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   16	23	84	java/lang/Exception
    //   27	39	84	java/lang/Exception
    //   3	12	92	finally
    //   16	23	92	finally
    //   27	39	92	finally
    //   39	44	92	finally
    //   52	65	92	finally
    //   65	79	92	finally
    //   85	89	92	finally
    //   39	44	98	java/lang/Exception
  }
  
  public static void a()
  {
    try
    {
      a = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */