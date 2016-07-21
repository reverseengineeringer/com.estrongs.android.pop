package com.dianxinos.dxservice.stat;

import android.content.Context;
import org.json.JSONArray;

final class ac
{
  private final Context a;
  private final ae b;
  private final ad c;
  
  public ac(Context paramContext)
  {
    a = paramContext;
    b = new ae(a);
    c = new ad(this, a);
  }
  
  private void a(JSONArray paramJSONArray1, JSONArray paramJSONArray2)
  {
    int i = 0;
    while (i < paramJSONArray2.length())
    {
      paramJSONArray1.put(paramJSONArray2.get(i));
      i += 1;
    }
  }
  
  /* Error */
  private boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 17	com/dianxinos/dxservice/stat/ac:a	Landroid/content/Context;
    //   4: invokestatic 54	com/dianxinos/dxservice/a/c:a	(Landroid/content/Context;)Z
    //   7: ifeq +493 -> 500
    //   10: iconst_4
    //   11: anewarray 56	java/lang/String
    //   14: astore 9
    //   16: aload 9
    //   18: iconst_0
    //   19: ldc 58
    //   21: aastore
    //   22: aload 9
    //   24: iconst_1
    //   25: ldc 60
    //   27: aastore
    //   28: aload 9
    //   30: iconst_2
    //   31: ldc 62
    //   33: aastore
    //   34: aload 9
    //   36: iconst_3
    //   37: ldc 64
    //   39: aastore
    //   40: sipush 1000
    //   43: istore_1
    //   44: new 66	java/util/HashMap
    //   47: dup
    //   48: invokespecial 67	java/util/HashMap:<init>	()V
    //   51: astore 8
    //   53: aload 9
    //   55: arraylength
    //   56: istore 4
    //   58: iconst_0
    //   59: istore_2
    //   60: aconst_null
    //   61: astore 5
    //   63: iload_2
    //   64: iload 4
    //   66: if_icmpge +13 -> 79
    //   69: aload 9
    //   71: iload_2
    //   72: aaload
    //   73: astore 10
    //   75: iload_1
    //   76: ifgt +29 -> 105
    //   79: aload 8
    //   81: invokeinterface 72 1 0
    //   86: ifne +183 -> 269
    //   89: getstatic 75	com/dianxinos/dxservice/a/c:c	Z
    //   92: ifeq +11 -> 103
    //   95: ldc 77
    //   97: ldc 79
    //   99: invokestatic 84	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   102: pop
    //   103: iconst_1
    //   104: ireturn
    //   105: aload_0
    //   106: getfield 17	com/dianxinos/dxservice/stat/ac:a	Landroid/content/Context;
    //   109: aload 10
    //   111: iconst_0
    //   112: invokevirtual 90	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   115: ldc 92
    //   117: aconst_null
    //   118: invokeinterface 98 3 0
    //   123: astore 7
    //   125: aload 7
    //   127: ifnonnull +22 -> 149
    //   130: iload_1
    //   131: istore_3
    //   132: aload 5
    //   134: astore 6
    //   136: iload_2
    //   137: iconst_1
    //   138: iadd
    //   139: istore_2
    //   140: aload 6
    //   142: astore 5
    //   144: iload_3
    //   145: istore_1
    //   146: goto -83 -> 63
    //   149: aload 5
    //   151: ifnonnull +365 -> 516
    //   154: aload 7
    //   156: astore 5
    //   158: aload_0
    //   159: getfield 23	com/dianxinos/dxservice/stat/ac:b	Lcom/dianxinos/dxservice/stat/ae;
    //   162: aload 10
    //   164: invokevirtual 101	com/dianxinos/dxservice/stat/ae:a	(Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/v;
    //   167: astore 11
    //   169: aload 5
    //   171: astore 6
    //   173: iload_1
    //   174: istore_3
    //   175: aload 11
    //   177: invokevirtual 105	com/dianxinos/dxservice/stat/v:c	()Z
    //   180: ifne -44 -> 136
    //   183: aload 11
    //   185: invokevirtual 107	com/dianxinos/dxservice/stat/v:a	()V
    //   188: aload 11
    //   190: iload_1
    //   191: invokevirtual 110	com/dianxinos/dxservice/stat/v:b	(I)Lcom/dianxinos/dxservice/stat/w;
    //   194: astore 6
    //   196: aload 6
    //   198: ifnull +321 -> 519
    //   201: aload 6
    //   203: invokevirtual 115	com/dianxinos/dxservice/stat/w:a	()Lorg/json/JSONArray;
    //   206: invokevirtual 38	org/json/JSONArray:length	()I
    //   209: ifle +310 -> 519
    //   212: aload 5
    //   214: aload 7
    //   216: invokevirtual 119	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   219: ifeq +300 -> 519
    //   222: iload_1
    //   223: aload 6
    //   225: invokevirtual 115	com/dianxinos/dxservice/stat/w:a	()Lorg/json/JSONArray;
    //   228: invokevirtual 38	org/json/JSONArray:length	()I
    //   231: isub
    //   232: istore_1
    //   233: aload 8
    //   235: aload 10
    //   237: aload 6
    //   239: invokeinterface 122 3 0
    //   244: pop
    //   245: aload 11
    //   247: invokevirtual 124	com/dianxinos/dxservice/stat/v:b	()V
    //   250: aload 5
    //   252: astore 6
    //   254: iload_1
    //   255: istore_3
    //   256: goto -120 -> 136
    //   259: astore 5
    //   261: aload 11
    //   263: invokevirtual 124	com/dianxinos/dxservice/stat/v:b	()V
    //   266: aload 5
    //   268: athrow
    //   269: new 34	org/json/JSONArray
    //   272: dup
    //   273: invokespecial 125	org/json/JSONArray:<init>	()V
    //   276: astore 6
    //   278: aload 8
    //   280: invokeinterface 129 1 0
    //   285: invokeinterface 135 1 0
    //   290: astore 7
    //   292: aload 7
    //   294: invokeinterface 140 1 0
    //   299: ifeq +60 -> 359
    //   302: aload 8
    //   304: aload 7
    //   306: invokeinterface 144 1 0
    //   311: checkcast 56	java/lang/String
    //   314: invokeinterface 147 2 0
    //   319: checkcast 112	com/dianxinos/dxservice/stat/w
    //   322: astore 9
    //   324: aload_0
    //   325: aload 6
    //   327: aload 9
    //   329: invokevirtual 115	com/dianxinos/dxservice/stat/w:a	()Lorg/json/JSONArray;
    //   332: invokespecial 149	com/dianxinos/dxservice/stat/ac:a	(Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    //   335: goto -43 -> 292
    //   338: astore 9
    //   340: getstatic 152	com/dianxinos/dxservice/a/c:e	Z
    //   343: ifeq -51 -> 292
    //   346: ldc 77
    //   348: ldc -102
    //   350: aload 9
    //   352: invokestatic 157	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   355: pop
    //   356: goto -64 -> 292
    //   359: aload_0
    //   360: getfield 30	com/dianxinos/dxservice/stat/ac:c	Lcom/dianxinos/dxservice/stat/ad;
    //   363: aload 5
    //   365: aload 6
    //   367: invokevirtual 161	org/json/JSONArray:toString	()Ljava/lang/String;
    //   370: invokevirtual 163	com/dianxinos/dxservice/stat/ad:a	(Ljava/lang/String;Ljava/lang/String;)I
    //   373: istore_1
    //   374: iload_1
    //   375: invokestatic 168	com/dianxinos/dxservice/stat/al:b	(I)Z
    //   378: ifeq +105 -> 483
    //   381: aload 8
    //   383: invokeinterface 129 1 0
    //   388: invokeinterface 135 1 0
    //   393: astore 6
    //   395: aload 6
    //   397: invokeinterface 140 1 0
    //   402: ifeq +69 -> 471
    //   405: aload 6
    //   407: invokeinterface 144 1 0
    //   412: checkcast 56	java/lang/String
    //   415: astore 7
    //   417: aload_0
    //   418: getfield 23	com/dianxinos/dxservice/stat/ac:b	Lcom/dianxinos/dxservice/stat/ae;
    //   421: aload 7
    //   423: invokevirtual 101	com/dianxinos/dxservice/stat/ae:a	(Ljava/lang/String;)Lcom/dianxinos/dxservice/stat/v;
    //   426: astore 5
    //   428: aload 5
    //   430: invokevirtual 107	com/dianxinos/dxservice/stat/v:a	()V
    //   433: aload 5
    //   435: aload 8
    //   437: aload 7
    //   439: invokeinterface 147 2 0
    //   444: checkcast 112	com/dianxinos/dxservice/stat/w
    //   447: invokevirtual 171	com/dianxinos/dxservice/stat/w:b	()J
    //   450: invokevirtual 174	com/dianxinos/dxservice/stat/v:a	(J)V
    //   453: aload 5
    //   455: invokevirtual 124	com/dianxinos/dxservice/stat/v:b	()V
    //   458: goto -63 -> 395
    //   461: astore 6
    //   463: aload 5
    //   465: invokevirtual 124	com/dianxinos/dxservice/stat/v:b	()V
    //   468: aload 6
    //   470: athrow
    //   471: aload_0
    //   472: getfield 17	com/dianxinos/dxservice/stat/ac:a	Landroid/content/Context;
    //   475: invokestatic 178	com/dianxinos/dxservice/stat/aa:b	(Landroid/content/Context;)V
    //   478: iload_1
    //   479: invokestatic 168	com/dianxinos/dxservice/stat/al:b	(I)Z
    //   482: ireturn
    //   483: iload_1
    //   484: invokestatic 180	com/dianxinos/dxservice/stat/al:a	(I)Z
    //   487: ifeq -9 -> 478
    //   490: aload_0
    //   491: getfield 17	com/dianxinos/dxservice/stat/ac:a	Landroid/content/Context;
    //   494: invokestatic 182	com/dianxinos/dxservice/stat/aa:d	(Landroid/content/Context;)V
    //   497: goto -19 -> 478
    //   500: getstatic 184	com/dianxinos/dxservice/a/c:d	Z
    //   503: ifeq +11 -> 514
    //   506: ldc 77
    //   508: ldc -70
    //   510: invokestatic 188	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   513: pop
    //   514: iconst_0
    //   515: ireturn
    //   516: goto -358 -> 158
    //   519: goto -274 -> 245
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	522	0	this	ac
    //   43	441	1	i	int
    //   59	81	2	j	int
    //   131	125	3	k	int
    //   56	11	4	m	int
    //   61	190	5	localObject1	Object
    //   259	105	5	str1	String
    //   426	38	5	localv1	v
    //   134	272	6	localObject2	Object
    //   461	8	6	localObject3	Object
    //   123	315	7	localObject4	Object
    //   51	385	8	localHashMap	java.util.HashMap
    //   14	314	9	localObject5	Object
    //   338	13	9	localJSONException	org.json.JSONException
    //   73	163	10	str2	String
    //   167	95	11	localv2	v
    // Exception table:
    //   from	to	target	type
    //   188	196	259	finally
    //   201	245	259	finally
    //   324	335	338	org/json/JSONException
    //   433	453	461	finally
  }
  
  public boolean a()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (aa.a(a))
    {
      bool1 = bool2;
      if (!aa.c(a)) {
        bool1 = b();
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */