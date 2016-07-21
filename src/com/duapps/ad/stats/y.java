package com.duapps.ad.stats;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import com.duapps.ad.base.l;
import com.duapps.ad.base.p;

public class y
{
  private static y b;
  private Context a;
  
  private y(Context paramContext)
  {
    a = paramContext;
  }
  
  public static y a(Context paramContext)
  {
    try
    {
      if (b == null) {
        b = new y(paramContext.getApplicationContext());
      }
      paramContext = b;
      return paramContext;
    }
    finally {}
  }
  
  private void a()
  {
    long l = System.currentTimeMillis();
    try
    {
      a.getContentResolver().delete(DuAdCacheProvider.a(a, 1), "ts<?", new String[] { String.valueOf(l - 86400000L) });
      return;
    }
    catch (Exception localException)
    {
      l.a("ToolboxCacheMgr", "dumpTimeOutDatas() exception: ", localException);
    }
  }
  
  /* Error */
  public p a(String paramString)
  {
    // Byte code:
    //   0: new 72	com/duapps/ad/base/p
    //   3: dup
    //   4: invokespecial 73	com/duapps/ad/base/p:<init>	()V
    //   7: astore 6
    //   9: aload 6
    //   11: aload_1
    //   12: putfield 76	com/duapps/ad/base/p:a	Ljava/lang/String;
    //   15: aload 6
    //   17: iconst_0
    //   18: putfield 80	com/duapps/ad/base/p:c	I
    //   21: invokestatic 35	java/lang/System:currentTimeMillis	()J
    //   24: lstore_2
    //   25: aload_0
    //   26: getfield 15	com/duapps/ad/stats/y:a	Landroid/content/Context;
    //   29: invokevirtual 39	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   32: aload_0
    //   33: getfield 15	com/duapps/ad/stats/y:a	Landroid/content/Context;
    //   36: iconst_1
    //   37: invokestatic 44	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   40: iconst_4
    //   41: anewarray 48	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: ldc 82
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: ldc 84
    //   53: aastore
    //   54: dup
    //   55: iconst_2
    //   56: ldc 86
    //   58: aastore
    //   59: dup
    //   60: iconst_3
    //   61: ldc 88
    //   63: aastore
    //   64: ldc 90
    //   66: iconst_2
    //   67: anewarray 48	java/lang/String
    //   70: dup
    //   71: iconst_0
    //   72: aload_1
    //   73: aastore
    //   74: dup
    //   75: iconst_1
    //   76: lload_2
    //   77: ldc2_w 49
    //   80: lsub
    //   81: invokestatic 54	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   84: aastore
    //   85: ldc 92
    //   87: invokevirtual 96	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   90: astore 4
    //   92: aload 4
    //   94: ifnull +80 -> 174
    //   97: aload 4
    //   99: astore_1
    //   100: aload 4
    //   102: invokeinterface 102 1 0
    //   107: ifeq +67 -> 174
    //   110: aload 4
    //   112: astore_1
    //   113: aload 6
    //   115: aload 4
    //   117: iconst_0
    //   118: invokeinterface 106 2 0
    //   123: putfield 76	com/duapps/ad/base/p:a	Ljava/lang/String;
    //   126: aload 4
    //   128: astore_1
    //   129: aload 6
    //   131: aload 4
    //   133: iconst_1
    //   134: invokeinterface 106 2 0
    //   139: putfield 108	com/duapps/ad/base/p:b	Ljava/lang/String;
    //   142: aload 4
    //   144: astore_1
    //   145: aload 6
    //   147: aload 4
    //   149: iconst_2
    //   150: invokeinterface 106 2 0
    //   155: putfield 111	com/duapps/ad/base/p:d	Ljava/lang/String;
    //   158: aload 4
    //   160: astore_1
    //   161: aload 6
    //   163: aload 4
    //   165: iconst_3
    //   166: invokeinterface 115 2 0
    //   171: putfield 80	com/duapps/ad/base/p:c	I
    //   174: aload 4
    //   176: ifnull +20 -> 196
    //   179: aload 4
    //   181: invokeinterface 118 1 0
    //   186: ifne +10 -> 196
    //   189: aload 4
    //   191: invokeinterface 121 1 0
    //   196: aload 6
    //   198: areturn
    //   199: astore 5
    //   201: aconst_null
    //   202: astore 4
    //   204: aload 4
    //   206: astore_1
    //   207: ldc 62
    //   209: ldc 123
    //   211: aload 5
    //   213: invokestatic 69	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   216: aload 4
    //   218: ifnull -22 -> 196
    //   221: aload 4
    //   223: invokeinterface 118 1 0
    //   228: ifne -32 -> 196
    //   231: aload 4
    //   233: invokeinterface 121 1 0
    //   238: aload 6
    //   240: areturn
    //   241: astore 4
    //   243: aconst_null
    //   244: astore_1
    //   245: aload_1
    //   246: ifnull +18 -> 264
    //   249: aload_1
    //   250: invokeinterface 118 1 0
    //   255: ifne +9 -> 264
    //   258: aload_1
    //   259: invokeinterface 121 1 0
    //   264: aload 4
    //   266: athrow
    //   267: astore 4
    //   269: goto -24 -> 245
    //   272: astore 5
    //   274: goto -70 -> 204
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	277	0	this	y
    //   0	277	1	paramString	String
    //   24	53	2	l	long
    //   90	142	4	localCursor	android.database.Cursor
    //   241	24	4	localObject1	Object
    //   267	1	4	localObject2	Object
    //   199	13	5	localException1	Exception
    //   272	1	5	localException2	Exception
    //   7	232	6	localp	p
    // Exception table:
    //   from	to	target	type
    //   25	92	199	java/lang/Exception
    //   25	92	241	finally
    //   100	110	267	finally
    //   113	126	267	finally
    //   129	142	267	finally
    //   145	158	267	finally
    //   161	174	267	finally
    //   207	216	267	finally
    //   100	110	272	java/lang/Exception
    //   113	126	272	java/lang/Exception
    //   129	142	272	java/lang/Exception
    //   145	158	272	java/lang/Exception
    //   161	174	272	java/lang/Exception
  }
  
  public void a(p paramp)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("_url", a);
    localContentValues.put("pkg", b);
    localContentValues.put("p_url", d);
    localContentValues.put("type", Integer.valueOf(c));
    localContentValues.put("ts", Long.valueOf(e));
    paramp = a;
    try
    {
      if (a.getContentResolver().update(DuAdCacheProvider.a(a, 1), localContentValues, "_url = ?", new String[] { paramp }) < 1) {
        a.getContentResolver().insert(DuAdCacheProvider.a(a, 1), localContentValues);
      }
      a();
      return;
    }
    catch (Exception paramp)
    {
      l.a("ToolboxCacheMgr", "saveParseResult() exception: ", paramp);
    }
  }
  
  /* Error */
  public int b(String paramString)
  {
    // Byte code:
    //   0: invokestatic 35	java/lang/System:currentTimeMillis	()J
    //   3: lstore_3
    //   4: aload_0
    //   5: getfield 15	com/duapps/ad/stats/y:a	Landroid/content/Context;
    //   8: invokevirtual 39	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   11: aload_0
    //   12: getfield 15	com/duapps/ad/stats/y:a	Landroid/content/Context;
    //   15: iconst_1
    //   16: invokestatic 44	com/duapps/ad/stats/DuAdCacheProvider:a	(Landroid/content/Context;I)Landroid/net/Uri;
    //   19: iconst_1
    //   20: anewarray 48	java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc 88
    //   27: aastore
    //   28: ldc 90
    //   30: iconst_2
    //   31: anewarray 48	java/lang/String
    //   34: dup
    //   35: iconst_0
    //   36: aload_1
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: lload_3
    //   41: ldc2_w 49
    //   44: lsub
    //   45: invokestatic 54	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   48: aastore
    //   49: ldc 92
    //   51: invokevirtual 96	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   54: astore 5
    //   56: aload 5
    //   58: ifnull +131 -> 189
    //   61: aload 5
    //   63: astore_1
    //   64: aload 5
    //   66: invokeinterface 102 1 0
    //   71: ifeq +118 -> 189
    //   74: aload 5
    //   76: astore_1
    //   77: aload 5
    //   79: iconst_0
    //   80: invokeinterface 115 2 0
    //   85: istore_2
    //   86: aload 5
    //   88: ifnull +20 -> 108
    //   91: aload 5
    //   93: invokeinterface 118 1 0
    //   98: ifne +10 -> 108
    //   101: aload 5
    //   103: invokeinterface 121 1 0
    //   108: iload_2
    //   109: ireturn
    //   110: astore 6
    //   112: aconst_null
    //   113: astore 5
    //   115: aload 5
    //   117: astore_1
    //   118: ldc 62
    //   120: ldc -86
    //   122: aload 6
    //   124: invokestatic 69	com/duapps/ad/base/l:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   127: aload 5
    //   129: ifnull +58 -> 187
    //   132: aload 5
    //   134: invokeinterface 118 1 0
    //   139: ifne +48 -> 187
    //   142: aload 5
    //   144: invokeinterface 121 1 0
    //   149: iconst_0
    //   150: ireturn
    //   151: astore 5
    //   153: aconst_null
    //   154: astore_1
    //   155: aload_1
    //   156: ifnull +18 -> 174
    //   159: aload_1
    //   160: invokeinterface 118 1 0
    //   165: ifne +9 -> 174
    //   168: aload_1
    //   169: invokeinterface 121 1 0
    //   174: aload 5
    //   176: athrow
    //   177: astore 5
    //   179: goto -24 -> 155
    //   182: astore 6
    //   184: goto -69 -> 115
    //   187: iconst_0
    //   188: ireturn
    //   189: iconst_0
    //   190: istore_2
    //   191: goto -105 -> 86
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	194	0	this	y
    //   0	194	1	paramString	String
    //   85	106	2	i	int
    //   3	38	3	l	long
    //   54	89	5	localCursor	android.database.Cursor
    //   151	24	5	localObject1	Object
    //   177	1	5	localObject2	Object
    //   110	13	6	localException1	Exception
    //   182	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   4	56	110	java/lang/Exception
    //   4	56	151	finally
    //   64	74	177	finally
    //   77	86	177	finally
    //   118	127	177	finally
    //   64	74	182	java/lang/Exception
    //   77	86	182	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */