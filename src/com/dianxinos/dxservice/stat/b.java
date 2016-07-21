package com.dianxinos.dxservice.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

final class b
{
  private static final String[] a = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "k", "l", "m", "n", "o" };
  private d b;
  private Context c;
  private String d;
  
  b(Context paramContext, String paramString)
  {
    b = new d(this, paramContext, paramString);
    c = paramContext;
    d = paramString;
  }
  
  /* Error */
  private c a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 54	com/dianxinos/dxservice/stat/b:b	Lcom/dianxinos/dxservice/stat/d;
    //   4: invokevirtual 67	com/dianxinos/dxservice/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore 7
    //   9: aload 7
    //   11: aload_0
    //   12: getfield 58	com/dianxinos/dxservice/stat/b:d	Ljava/lang/String;
    //   15: getstatic 42	com/dianxinos/dxservice/stat/b:a	[Ljava/lang/String;
    //   18: aload_1
    //   19: aload_2
    //   20: aconst_null
    //   21: aconst_null
    //   22: ldc 69
    //   24: aload_3
    //   25: invokevirtual 75	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   28: astore_3
    //   29: new 77	org/json/JSONArray
    //   32: dup
    //   33: invokespecial 78	org/json/JSONArray:<init>	()V
    //   36: astore_1
    //   37: lconst_0
    //   38: lstore 5
    //   40: aload_3
    //   41: ifnull +450 -> 491
    //   44: aload_3
    //   45: invokeinterface 84 1 0
    //   50: ifle +441 -> 491
    //   53: aload_3
    //   54: invokeinterface 88 1 0
    //   59: pop
    //   60: iconst_0
    //   61: istore 4
    //   63: aload_3
    //   64: iconst_0
    //   65: invokeinterface 92 2 0
    //   70: lstore 5
    //   72: new 94	org/json/JSONObject
    //   75: dup
    //   76: invokespecial 95	org/json/JSONObject:<init>	()V
    //   79: astore_2
    //   80: aload_2
    //   81: ldc 18
    //   83: aload_3
    //   84: iconst_1
    //   85: invokeinterface 99 2 0
    //   90: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   93: pop
    //   94: aload_2
    //   95: ldc 19
    //   97: aload_3
    //   98: iconst_2
    //   99: invokeinterface 99 2 0
    //   104: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   107: pop
    //   108: aload_2
    //   109: ldc 20
    //   111: aload_3
    //   112: iconst_3
    //   113: invokeinterface 99 2 0
    //   118: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   121: pop
    //   122: aload_2
    //   123: ldc 22
    //   125: aload_3
    //   126: iconst_4
    //   127: invokeinterface 99 2 0
    //   132: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   135: pop
    //   136: aload_2
    //   137: ldc 24
    //   139: aload_3
    //   140: iconst_5
    //   141: invokeinterface 99 2 0
    //   146: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   149: pop
    //   150: aload_2
    //   151: ldc 26
    //   153: aload_3
    //   154: bipush 6
    //   156: invokeinterface 99 2 0
    //   161: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   164: pop
    //   165: aload_2
    //   166: ldc 28
    //   168: aload_3
    //   169: bipush 7
    //   171: invokeinterface 99 2 0
    //   176: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   179: pop
    //   180: aload_2
    //   181: ldc 30
    //   183: aload_3
    //   184: bipush 8
    //   186: invokeinterface 99 2 0
    //   191: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   194: pop
    //   195: aload_2
    //   196: ldc 32
    //   198: aload_3
    //   199: bipush 9
    //   201: invokeinterface 99 2 0
    //   206: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   209: pop
    //   210: aload_2
    //   211: ldc 34
    //   213: aload_3
    //   214: bipush 10
    //   216: invokeinterface 99 2 0
    //   221: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   224: pop
    //   225: aload_2
    //   226: ldc 36
    //   228: aload_3
    //   229: bipush 11
    //   231: invokeinterface 99 2 0
    //   236: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   239: pop
    //   240: aload_2
    //   241: ldc 38
    //   243: aload_3
    //   244: bipush 12
    //   246: invokeinterface 99 2 0
    //   251: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   254: pop
    //   255: aload_2
    //   256: ldc 40
    //   258: aload_3
    //   259: bipush 13
    //   261: invokeinterface 99 2 0
    //   266: invokevirtual 103	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   269: pop
    //   270: aload_1
    //   271: aload_2
    //   272: invokevirtual 106	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   275: pop
    //   276: iload 4
    //   278: iconst_1
    //   279: iadd
    //   280: istore 4
    //   282: aload_3
    //   283: invokeinterface 109 1 0
    //   288: ifne +200 -> 488
    //   291: getstatic 114	com/dianxinos/dxservice/a/c:d	Z
    //   294: ifeq +44 -> 338
    //   297: ldc 116
    //   299: new 118	java/lang/StringBuilder
    //   302: dup
    //   303: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   306: ldc 121
    //   308: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   311: iload 4
    //   313: invokevirtual 128	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   316: ldc -126
    //   318: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: lload 5
    //   323: invokevirtual 133	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   326: ldc -121
    //   328: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 139	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 144	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   337: pop
    //   338: new 146	com/dianxinos/dxservice/stat/c
    //   341: dup
    //   342: aload_0
    //   343: aload_1
    //   344: invokevirtual 147	org/json/JSONArray:toString	()Ljava/lang/String;
    //   347: lload 5
    //   349: invokespecial 150	com/dianxinos/dxservice/stat/c:<init>	(Lcom/dianxinos/dxservice/stat/b;Ljava/lang/String;J)V
    //   352: astore_1
    //   353: aload_3
    //   354: ifnull +9 -> 363
    //   357: aload_3
    //   358: invokeinterface 153 1 0
    //   363: aload 7
    //   365: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   368: aload_1
    //   369: areturn
    //   370: astore_2
    //   371: getstatic 160	com/dianxinos/dxservice/a/c:e	Z
    //   374: ifeq +12 -> 386
    //   377: ldc 116
    //   379: ldc -94
    //   381: aload_2
    //   382: invokestatic 165	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   385: pop
    //   386: aload_0
    //   387: lload 5
    //   389: invokespecial 168	com/dianxinos/dxservice/stat/b:b	(J)V
    //   392: goto -110 -> 282
    //   395: astore_1
    //   396: aconst_null
    //   397: astore_2
    //   398: aconst_null
    //   399: astore_3
    //   400: getstatic 160	com/dianxinos/dxservice/a/c:e	Z
    //   403: ifeq +12 -> 415
    //   406: ldc 116
    //   408: ldc -86
    //   410: aload_1
    //   411: invokestatic 165	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   414: pop
    //   415: aload_3
    //   416: ifnull +9 -> 425
    //   419: aload_3
    //   420: invokeinterface 153 1 0
    //   425: aload_2
    //   426: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   429: aconst_null
    //   430: areturn
    //   431: astore_1
    //   432: aconst_null
    //   433: astore_2
    //   434: aconst_null
    //   435: astore_3
    //   436: aload_3
    //   437: ifnull +9 -> 446
    //   440: aload_3
    //   441: invokeinterface 153 1 0
    //   446: aload_2
    //   447: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   450: aload_1
    //   451: athrow
    //   452: astore_1
    //   453: aconst_null
    //   454: astore_3
    //   455: aload 7
    //   457: astore_2
    //   458: goto -22 -> 436
    //   461: astore_1
    //   462: aload 7
    //   464: astore_2
    //   465: goto -29 -> 436
    //   468: astore_1
    //   469: goto -33 -> 436
    //   472: astore_1
    //   473: aconst_null
    //   474: astore_3
    //   475: aload 7
    //   477: astore_2
    //   478: goto -78 -> 400
    //   481: astore_1
    //   482: aload 7
    //   484: astore_2
    //   485: goto -85 -> 400
    //   488: goto -425 -> 63
    //   491: iconst_0
    //   492: istore 4
    //   494: goto -203 -> 291
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	497	0	this	b
    //   0	497	1	paramString1	String
    //   0	497	2	paramArrayOfString	String[]
    //   0	497	3	paramString2	String
    //   61	432	4	i	int
    //   38	350	5	l	long
    //   7	476	7	localSQLiteDatabase	SQLiteDatabase
    // Exception table:
    //   from	to	target	type
    //   72	276	370	org/json/JSONException
    //   0	9	395	java/lang/Exception
    //   0	9	431	finally
    //   9	29	452	finally
    //   29	37	461	finally
    //   44	60	461	finally
    //   63	72	461	finally
    //   72	276	461	finally
    //   282	291	461	finally
    //   291	338	461	finally
    //   338	353	461	finally
    //   371	386	461	finally
    //   386	392	461	finally
    //   400	415	468	finally
    //   9	29	472	java/lang/Exception
    //   29	37	481	java/lang/Exception
    //   44	60	481	java/lang/Exception
    //   63	72	481	java/lang/Exception
    //   72	276	481	java/lang/Exception
    //   282	291	481	java/lang/Exception
    //   291	338	481	java/lang/Exception
    //   338	353	481	java/lang/Exception
    //   371	386	481	java/lang/Exception
    //   386	392	481	java/lang/Exception
  }
  
  private void a(String paramString, String[] paramArrayOfString)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localSQLiteDatabase.delete(d, paramString, paramArrayOfString);
      com.dianxinos.dxservice.a.d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception paramString)
    {
      localObject2 = localObject1;
      if (com.dianxinos.dxservice.a.c.e)
      {
        localObject2 = localObject1;
        Log.e("stat.AppDatabase", "Faild to clear data from db!", paramString);
      }
      return;
    }
    finally
    {
      com.dianxinos.dxservice.a.d.b((SQLiteDatabase)localObject2);
    }
  }
  
  private void b(long paramLong)
  {
    if (com.dianxinos.dxservice.a.c.d) {
      Log.i("stat.AppDatabase", "The record with rowId = " + paramLong + " will be deleted.");
    }
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.delete(d, "a=?", new String[] { String.valueOf(paramLong) });
      com.dianxinos.dxservice.a.d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      if (com.dianxinos.dxservice.a.c.e)
      {
        localObject3 = localObject1;
        Log.e("stat.AppDatabase", "Failed to deleteByRowId!", localException);
      }
      return;
    }
    finally
    {
      com.dianxinos.dxservice.a.d.b((SQLiteDatabase)localObject3);
    }
  }
  
  /* Error */
  private long c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore 7
    //   5: aconst_null
    //   6: astore 6
    //   8: aconst_null
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 54	com/dianxinos/dxservice/stat/b:b	Lcom/dianxinos/dxservice/stat/d;
    //   15: invokevirtual 67	com/dianxinos/dxservice/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore 5
    //   20: aload 7
    //   22: astore_3
    //   23: aload 6
    //   25: astore 4
    //   27: aload 5
    //   29: aload_0
    //   30: getfield 58	com/dianxinos/dxservice/stat/b:d	Ljava/lang/String;
    //   33: iconst_1
    //   34: anewarray 16	java/lang/String
    //   37: dup
    //   38: iconst_0
    //   39: ldc 17
    //   41: aastore
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: aconst_null
    //   46: ldc 69
    //   48: ldc -61
    //   50: invokevirtual 75	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   53: astore 6
    //   55: aload 6
    //   57: ifnull +167 -> 224
    //   60: aload 6
    //   62: astore_3
    //   63: aload 6
    //   65: astore 4
    //   67: aload 6
    //   69: invokeinterface 84 1 0
    //   74: ifle +150 -> 224
    //   77: aload 6
    //   79: astore_3
    //   80: aload 6
    //   82: astore 4
    //   84: aload 6
    //   86: invokeinterface 88 1 0
    //   91: pop
    //   92: aload 6
    //   94: astore_3
    //   95: aload 6
    //   97: astore 4
    //   99: aload 6
    //   101: iconst_0
    //   102: invokeinterface 92 2 0
    //   107: lstore_1
    //   108: aload 6
    //   110: ifnull +10 -> 120
    //   113: aload 6
    //   115: invokeinterface 153 1 0
    //   120: aload 5
    //   122: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   125: lload_1
    //   126: lreturn
    //   127: astore 5
    //   129: aconst_null
    //   130: astore_3
    //   131: getstatic 160	com/dianxinos/dxservice/a/c:e	Z
    //   134: ifeq +13 -> 147
    //   137: ldc 116
    //   139: ldc -86
    //   141: aload 5
    //   143: invokestatic 165	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   146: pop
    //   147: aload 4
    //   149: ifnull +10 -> 159
    //   152: aload 4
    //   154: invokeinterface 153 1 0
    //   159: aload_3
    //   160: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   163: lconst_0
    //   164: lreturn
    //   165: astore 5
    //   167: aconst_null
    //   168: astore 6
    //   170: aload_3
    //   171: ifnull +9 -> 180
    //   174: aload_3
    //   175: invokeinterface 153 1 0
    //   180: aload 6
    //   182: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   185: aload 5
    //   187: athrow
    //   188: astore 4
    //   190: aload 5
    //   192: astore 6
    //   194: aload 4
    //   196: astore 5
    //   198: goto -28 -> 170
    //   201: astore 5
    //   203: aload_3
    //   204: astore 6
    //   206: aload 4
    //   208: astore_3
    //   209: goto -39 -> 170
    //   212: astore 6
    //   214: aload 5
    //   216: astore_3
    //   217: aload 6
    //   219: astore 5
    //   221: goto -90 -> 131
    //   224: lconst_0
    //   225: lstore_1
    //   226: goto -118 -> 108
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	229	0	this	b
    //   107	119	1	l	long
    //   1	216	3	localObject1	Object
    //   9	144	4	localObject2	Object
    //   188	19	4	localObject3	Object
    //   18	103	5	localSQLiteDatabase	SQLiteDatabase
    //   127	15	5	localException1	Exception
    //   165	26	5	localObject4	Object
    //   196	1	5	localObject5	Object
    //   201	14	5	localObject6	Object
    //   219	1	5	localException2	Exception
    //   6	199	6	localObject7	Object
    //   212	6	6	localException3	Exception
    //   3	18	7	localObject8	Object
    // Exception table:
    //   from	to	target	type
    //   11	20	127	java/lang/Exception
    //   11	20	165	finally
    //   27	55	188	finally
    //   67	77	188	finally
    //   84	92	188	finally
    //   99	108	188	finally
    //   131	147	201	finally
    //   27	55	212	java/lang/Exception
    //   67	77	212	java/lang/Exception
    //   84	92	212	java/lang/Exception
    //   99	108	212	java/lang/Exception
  }
  
  public int a()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getReadableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      int i = com.dianxinos.dxservice.a.d.a(localSQLiteDatabase);
      com.dianxinos.dxservice.a.d.b(localSQLiteDatabase);
      return i;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      if (com.dianxinos.dxservice.a.c.e)
      {
        localObject3 = localObject1;
        Log.e("stat.AppDatabase", "Failed to get the Size of DB", localException);
      }
      return 0;
    }
    finally
    {
      com.dianxinos.dxservice.a.d.b((SQLiteDatabase)localObject3);
    }
  }
  
  public void a(int paramInt)
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.delete(d, "j=?", new String[] { String.valueOf(paramInt) });
      com.dianxinos.dxservice.a.d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      if (com.dianxinos.dxservice.a.c.e)
      {
        localObject3 = localObject1;
        Log.e("stat.AppDatabase", "DeleteByPublicKeyVersion has Exception!", localException);
      }
      return;
    }
    finally
    {
      com.dianxinos.dxservice.a.d.b((SQLiteDatabase)localObject3);
    }
  }
  
  public void a(long paramLong)
  {
    if (paramLong <= 0L)
    {
      a(null, null);
      return;
    }
    a("a<=?", new String[] { String.valueOf(paramLong) });
  }
  
  public boolean a(r paramr)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    boolean bool = false;
    try
    {
      SQLiteDatabase localSQLiteDatabase = b.getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      int i = com.dianxinos.dxservice.a.d.a(localSQLiteDatabase);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      long l = u.b(c);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      if (com.dianxinos.dxservice.a.c.d)
      {
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        Log.i("stat.AppDatabase", "Current db file is " + localSQLiteDatabase.getPath() + " and its size is " + i + " and its max size is " + l + ".");
      }
      if (i > l)
      {
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        b(c());
      }
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      ContentValues localContentValues = new ContentValues();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      String str = paramr.o();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("b", s.b(paramr.m(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("c", s.b(paramr.a(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("d", s.b(paramr.b(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("e", s.b(paramr.c(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("f", s.b(paramr.g(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("g", s.b(paramr.e(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("h", s.b(paramr.f(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("i", paramr.l());
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("j", Integer.valueOf(paramr.n()));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("k", s.b(paramr.h(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("l", s.b(paramr.d(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("m", s.b(paramr.i(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("n", s.b(paramr.j(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put("o", s.b(paramr.k(), str));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      l = localSQLiteDatabase.insert(d, null, localContentValues);
      if (l >= 0L) {
        bool = true;
      }
      com.dianxinos.dxservice.a.d.b(localSQLiteDatabase);
      return bool;
    }
    catch (Exception paramr)
    {
      localObject2 = localObject1;
      if (com.dianxinos.dxservice.a.c.e)
      {
        localObject2 = localObject1;
        Log.e("stat.AppDatabase", "Failed to push to DB!", paramr);
      }
      return false;
    }
    finally
    {
      com.dianxinos.dxservice.a.d.b((SQLiteDatabase)localObject2);
    }
  }
  
  public c b(int paramInt)
  {
    if (paramInt <= 0) {}
    for (String str = null;; str = String.valueOf(paramInt)) {
      return a(null, null, str);
    }
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: aload_0
    //   7: getfield 54	com/dianxinos/dxservice/stat/b:b	Lcom/dianxinos/dxservice/stat/d;
    //   10: invokevirtual 67	com/dianxinos/dxservice/stat/d:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: astore_3
    //   14: aload_3
    //   15: aload_0
    //   16: getfield 58	com/dianxinos/dxservice/stat/b:d	Ljava/lang/String;
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: aconst_null
    //   23: aconst_null
    //   24: aconst_null
    //   25: ldc -61
    //   27: invokevirtual 75	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   30: astore 4
    //   32: aload 4
    //   34: ifnull +40 -> 74
    //   37: aload 4
    //   39: invokeinterface 84 1 0
    //   44: istore_1
    //   45: iload_1
    //   46: ifne +23 -> 69
    //   49: iconst_1
    //   50: istore_2
    //   51: aload 4
    //   53: ifnull +10 -> 63
    //   56: aload 4
    //   58: invokeinterface 153 1 0
    //   63: aload_3
    //   64: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   67: iload_2
    //   68: ireturn
    //   69: iconst_0
    //   70: istore_2
    //   71: goto -20 -> 51
    //   74: aload 4
    //   76: ifnull +10 -> 86
    //   79: aload 4
    //   81: invokeinterface 153 1 0
    //   86: aload_3
    //   87: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   90: iconst_1
    //   91: ireturn
    //   92: astore 5
    //   94: aconst_null
    //   95: astore_3
    //   96: getstatic 160	com/dianxinos/dxservice/a/c:e	Z
    //   99: ifeq +14 -> 113
    //   102: ldc 116
    //   104: ldc_w 292
    //   107: aload 5
    //   109: invokestatic 165	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   112: pop
    //   113: aload_3
    //   114: ifnull +9 -> 123
    //   117: aload_3
    //   118: invokeinterface 153 1 0
    //   123: aload 4
    //   125: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   128: iconst_1
    //   129: ireturn
    //   130: astore_3
    //   131: aconst_null
    //   132: astore 4
    //   134: aload 5
    //   136: ifnull +10 -> 146
    //   139: aload 5
    //   141: invokeinterface 153 1 0
    //   146: aload 4
    //   148: invokestatic 158	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   151: aload_3
    //   152: athrow
    //   153: astore 6
    //   155: aload_3
    //   156: astore 4
    //   158: aload 6
    //   160: astore_3
    //   161: goto -27 -> 134
    //   164: astore 6
    //   166: aload 4
    //   168: astore 5
    //   170: aload_3
    //   171: astore 4
    //   173: aload 6
    //   175: astore_3
    //   176: goto -42 -> 134
    //   179: astore 6
    //   181: aload_3
    //   182: astore 5
    //   184: aload 6
    //   186: astore_3
    //   187: goto -53 -> 134
    //   190: astore 5
    //   192: aconst_null
    //   193: astore 6
    //   195: aload_3
    //   196: astore 4
    //   198: aload 6
    //   200: astore_3
    //   201: goto -105 -> 96
    //   204: astore 5
    //   206: aload_3
    //   207: astore 6
    //   209: aload 4
    //   211: astore_3
    //   212: aload 6
    //   214: astore 4
    //   216: goto -120 -> 96
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	b
    //   44	2	1	i	int
    //   50	21	2	bool	boolean
    //   13	105	3	localSQLiteDatabase	SQLiteDatabase
    //   130	26	3	localObject1	Object
    //   160	52	3	localObject2	Object
    //   4	211	4	localObject3	Object
    //   1	1	5	localObject4	Object
    //   92	48	5	localException1	Exception
    //   168	15	5	localObject5	Object
    //   190	1	5	localException2	Exception
    //   204	1	5	localException3	Exception
    //   153	6	6	localObject6	Object
    //   164	10	6	localObject7	Object
    //   179	6	6	localObject8	Object
    //   193	20	6	localObject9	Object
    // Exception table:
    //   from	to	target	type
    //   6	14	92	java/lang/Exception
    //   6	14	130	finally
    //   14	32	153	finally
    //   37	45	164	finally
    //   96	113	179	finally
    //   14	32	190	java/lang/Exception
    //   37	45	204	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */