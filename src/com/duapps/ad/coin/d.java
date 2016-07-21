package com.duapps.ad.coin;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import com.duapps.ad.base.l;
import com.duapps.ad.stats.DuAdCacheProvider;

public class d
{
  private static d a;
  private Context b;
  
  private d(Context paramContext)
  {
    b = paramContext;
  }
  
  public static d a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new d(paramContext.getApplicationContext());
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  /* Error */
  public boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: getfield 15	com/duapps/ad/coin/d:b	Landroid/content/Context;
    //   7: invokestatic 35	com/duapps/ad/coin/CoinManager:a	(Landroid/content/Context;)Lcom/duapps/ad/coin/CoinManager;
    //   10: invokevirtual 38	com/duapps/ad/coin/CoinManager:b	()Ljava/lang/String;
    //   13: astore 7
    //   15: aload_0
    //   16: getfield 15	com/duapps/ad/coin/d:b	Landroid/content/Context;
    //   19: invokevirtual 42	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: aload_0
    //   23: getfield 15	com/duapps/ad/coin/d:b	Landroid/content/Context;
    //   26: iconst_5
    //   27: invokestatic 47	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   30: iconst_1
    //   31: anewarray 49	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: ldc 51
    //   38: aastore
    //   39: ldc 53
    //   41: iconst_3
    //   42: anewarray 49	java/lang/String
    //   45: dup
    //   46: iconst_0
    //   47: aload_1
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: aload_2
    //   52: aastore
    //   53: dup
    //   54: iconst_2
    //   55: aload 7
    //   57: aastore
    //   58: aconst_null
    //   59: invokevirtual 59	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   62: astore_2
    //   63: aload_2
    //   64: ifnonnull +24 -> 88
    //   67: aload_2
    //   68: ifnull +18 -> 86
    //   71: aload_2
    //   72: invokeinterface 65 1 0
    //   77: ifne +9 -> 86
    //   80: aload_2
    //   81: invokeinterface 68 1 0
    //   86: iconst_0
    //   87: ireturn
    //   88: aload_2
    //   89: astore_1
    //   90: aload_2
    //   91: invokeinterface 72 1 0
    //   96: istore_3
    //   97: iload_3
    //   98: ifle +40 -> 138
    //   101: iconst_1
    //   102: istore 4
    //   104: iload 4
    //   106: istore 5
    //   108: aload_2
    //   109: ifnull +26 -> 135
    //   112: iload 4
    //   114: istore 5
    //   116: aload_2
    //   117: invokeinterface 65 1 0
    //   122: ifne +13 -> 135
    //   125: aload_2
    //   126: invokeinterface 68 1 0
    //   131: iload 4
    //   133: istore 5
    //   135: iload 5
    //   137: ireturn
    //   138: iconst_0
    //   139: istore 4
    //   141: goto -37 -> 104
    //   144: astore 6
    //   146: aconst_null
    //   147: astore_2
    //   148: aload_2
    //   149: astore_1
    //   150: ldc 74
    //   152: ldc 76
    //   154: aload 6
    //   156: invokestatic 81	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   159: aload_2
    //   160: ifnull +64 -> 224
    //   163: aload_2
    //   164: invokeinterface 65 1 0
    //   169: ifne +55 -> 224
    //   172: aload_2
    //   173: invokeinterface 68 1 0
    //   178: iconst_0
    //   179: istore 5
    //   181: goto -46 -> 135
    //   184: astore_1
    //   185: aload 6
    //   187: astore_2
    //   188: aload_2
    //   189: ifnull +18 -> 207
    //   192: aload_2
    //   193: invokeinterface 65 1 0
    //   198: ifne +9 -> 207
    //   201: aload_2
    //   202: invokeinterface 68 1 0
    //   207: aload_1
    //   208: athrow
    //   209: astore 6
    //   211: aload_1
    //   212: astore_2
    //   213: aload 6
    //   215: astore_1
    //   216: goto -28 -> 188
    //   219: astore 6
    //   221: goto -73 -> 148
    //   224: iconst_0
    //   225: istore 5
    //   227: goto -92 -> 135
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	230	0	this	d
    //   0	230	1	paramString1	String
    //   0	230	2	paramString2	String
    //   96	2	3	i	int
    //   102	38	4	bool1	boolean
    //   106	120	5	bool2	boolean
    //   1	1	6	localObject1	Object
    //   144	42	6	localException1	Exception
    //   209	5	6	localObject2	Object
    //   219	1	6	localException2	Exception
    //   13	43	7	str	String
    // Exception table:
    //   from	to	target	type
    //   15	63	144	java/lang/Exception
    //   15	63	184	finally
    //   90	97	209	finally
    //   150	159	209	finally
    //   90	97	219	java/lang/Exception
  }
  
  public void b(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("mid", paramString1);
    localContentValues.put("type", paramString2);
    localContentValues.put("time", Long.valueOf(System.currentTimeMillis()));
    localContentValues.put("ac", CoinManager.a(b).b());
    try
    {
      b.getContentResolver().insert(DuAdCacheProvider.a(b, 5), localContentValues);
      return;
    }
    catch (Exception paramString1)
    {
      l.a("IntegralRecordManager", "setGained failed: ", paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */