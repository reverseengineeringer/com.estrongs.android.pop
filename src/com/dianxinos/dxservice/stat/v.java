package com.dianxinos.dxservice.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.d;
import java.util.Date;
import java.util.concurrent.locks.ReentrantLock;

final class v
  extends SQLiteOpenHelper
{
  private static final String[] a = { "rowId", "a", "b", "c", "d", "f", "g", "h", "j" };
  private final Context b;
  private final String c;
  private final String d;
  private final ReentrantLock e = new ReentrantLock();
  private volatile SQLiteDatabase f;
  
  public v(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 6);
    b = paramContext;
    d = paramString;
    c = ("CREATE TABLE " + paramString + " (" + "a" + " TEXT, " + "b" + " INTEGER, " + "c" + " INTEGER, " + "d" + " TEXT, " + "e" + " INTEGER, " + "f" + " INTEGER, " + "g" + " INTEGER, " + "h" + " TEXT, " + "i" + " INTEGER," + "j" + " INTEGER);");
  }
  
  /* Error */
  private w a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 84	com/dianxinos/dxservice/stat/v:f	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_0
    //   5: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   8: getstatic 34	com/dianxinos/dxservice/stat/v:a	[Ljava/lang/String;
    //   11: aload_1
    //   12: aload_2
    //   13: aconst_null
    //   14: aconst_null
    //   15: ldc 86
    //   17: aload_3
    //   18: invokevirtual 92	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   21: astore_1
    //   22: aload_1
    //   23: astore_2
    //   24: new 94	org/json/JSONArray
    //   27: dup
    //   28: invokespecial 95	org/json/JSONArray:<init>	()V
    //   31: astore 13
    //   33: lconst_0
    //   34: lstore 7
    //   36: iconst_0
    //   37: istore 4
    //   39: iconst_0
    //   40: istore 5
    //   42: aload_1
    //   43: astore_2
    //   44: aload_1
    //   45: invokeinterface 101 1 0
    //   50: ifle +234 -> 284
    //   53: aload_1
    //   54: astore_2
    //   55: aload_1
    //   56: invokeinterface 105 1 0
    //   61: pop
    //   62: aload_1
    //   63: astore_2
    //   64: aload_1
    //   65: iconst_0
    //   66: invokeinterface 109 2 0
    //   71: lstore 7
    //   73: aload_1
    //   74: astore_2
    //   75: new 111	org/json/JSONObject
    //   78: dup
    //   79: invokespecial 112	org/json/JSONObject:<init>	()V
    //   82: astore 14
    //   84: aload_1
    //   85: astore_2
    //   86: aload_1
    //   87: iconst_1
    //   88: invokeinterface 116 2 0
    //   93: astore 15
    //   95: aload_1
    //   96: astore_2
    //   97: aload_1
    //   98: iconst_2
    //   99: invokeinterface 120 2 0
    //   104: istore 4
    //   106: aload_1
    //   107: astore_2
    //   108: aload_1
    //   109: iconst_3
    //   110: invokeinterface 120 2 0
    //   115: istore 6
    //   117: aload_1
    //   118: astore_2
    //   119: aload_1
    //   120: iconst_4
    //   121: invokeinterface 116 2 0
    //   126: astore 16
    //   128: aload_1
    //   129: astore_2
    //   130: aload_1
    //   131: iconst_5
    //   132: invokeinterface 109 2 0
    //   137: lstore 9
    //   139: aload_1
    //   140: astore_2
    //   141: aload_1
    //   142: bipush 6
    //   144: invokeinterface 124 2 0
    //   149: ifeq +221 -> 370
    //   152: aconst_null
    //   153: astore_3
    //   154: aload_1
    //   155: astore_2
    //   156: aload_1
    //   157: bipush 7
    //   159: invokeinterface 116 2 0
    //   164: astore 17
    //   166: aload_1
    //   167: astore_2
    //   168: aload 14
    //   170: ldc 22
    //   172: aload 15
    //   174: invokevirtual 128	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   177: pop
    //   178: aload_1
    //   179: astore_2
    //   180: aload 14
    //   182: ldc 23
    //   184: iload 4
    //   186: invokevirtual 131	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   189: pop
    //   190: aload_1
    //   191: astore_2
    //   192: aload 14
    //   194: ldc 24
    //   196: iload 6
    //   198: invokevirtual 131	org/json/JSONObject:put	(Ljava/lang/String;I)Lorg/json/JSONObject;
    //   201: pop
    //   202: aload_1
    //   203: astore_2
    //   204: aload 14
    //   206: ldc 26
    //   208: lload 9
    //   210: invokevirtual 134	org/json/JSONObject:put	(Ljava/lang/String;J)Lorg/json/JSONObject;
    //   213: pop
    //   214: aload_3
    //   215: ifnull +14 -> 229
    //   218: aload_1
    //   219: astore_2
    //   220: aload 14
    //   222: ldc 28
    //   224: aload_3
    //   225: invokevirtual 128	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   228: pop
    //   229: aload_1
    //   230: astore_2
    //   231: aload 14
    //   233: ldc 25
    //   235: aload 16
    //   237: invokevirtual 128	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   240: pop
    //   241: aload_1
    //   242: astore_2
    //   243: aload 14
    //   245: ldc 30
    //   247: aload 17
    //   249: invokevirtual 128	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   252: pop
    //   253: aload_1
    //   254: astore_2
    //   255: aload 13
    //   257: aload 14
    //   259: invokevirtual 137	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   262: pop
    //   263: iload 5
    //   265: iconst_1
    //   266: iadd
    //   267: istore 4
    //   269: iload 4
    //   271: istore 5
    //   273: aload_1
    //   274: astore_2
    //   275: aload_1
    //   276: invokeinterface 140 1 0
    //   281: ifne -219 -> 62
    //   284: aload_1
    //   285: astore_2
    //   286: getstatic 145	com/dianxinos/dxservice/a/c:d	Z
    //   289: ifeq +58 -> 347
    //   292: aload_1
    //   293: astore_2
    //   294: ldc -109
    //   296: new 52	java/lang/StringBuilder
    //   299: dup
    //   300: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   303: ldc -107
    //   305: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: iload 4
    //   310: invokevirtual 152	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   313: ldc -102
    //   315: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: aload_0
    //   319: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   322: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: ldc -100
    //   327: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: lload 7
    //   332: invokevirtual 159	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   335: ldc -95
    //   337: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   340: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   343: invokestatic 166	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   346: pop
    //   347: iload 4
    //   349: ifne +93 -> 442
    //   352: aconst_null
    //   353: astore_3
    //   354: aload_3
    //   355: astore_2
    //   356: aload_1
    //   357: ifnull +11 -> 368
    //   360: aload_1
    //   361: invokeinterface 169 1 0
    //   366: aload_3
    //   367: astore_2
    //   368: aload_2
    //   369: areturn
    //   370: aload_1
    //   371: astore_2
    //   372: aload_1
    //   373: bipush 6
    //   375: invokeinterface 109 2 0
    //   380: lstore 11
    //   382: lload 11
    //   384: invokestatic 175	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   387: astore_3
    //   388: goto -234 -> 154
    //   391: astore_2
    //   392: aload_1
    //   393: astore_2
    //   394: aload_0
    //   395: lload 7
    //   397: invokestatic 175	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   400: invokespecial 178	com/dianxinos/dxservice/stat/v:a	(Ljava/lang/Long;)V
    //   403: iload 5
    //   405: istore 4
    //   407: goto -138 -> 269
    //   410: astore_3
    //   411: aload_1
    //   412: astore_2
    //   413: getstatic 180	com/dianxinos/dxservice/a/c:e	Z
    //   416: ifeq +14 -> 430
    //   419: aload_1
    //   420: astore_2
    //   421: ldc -109
    //   423: ldc -74
    //   425: aload_3
    //   426: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   429: pop
    //   430: aload_1
    //   431: ifnull +9 -> 440
    //   434: aload_1
    //   435: invokeinterface 169 1 0
    //   440: aconst_null
    //   441: areturn
    //   442: aload_1
    //   443: astore_2
    //   444: new 187	com/dianxinos/dxservice/stat/w
    //   447: dup
    //   448: aload_0
    //   449: aload 13
    //   451: lload 7
    //   453: invokespecial 190	com/dianxinos/dxservice/stat/w:<init>	(Lcom/dianxinos/dxservice/stat/v;Lorg/json/JSONArray;J)V
    //   456: astore_3
    //   457: aload_3
    //   458: astore_2
    //   459: aload_1
    //   460: ifnull -92 -> 368
    //   463: aload_1
    //   464: invokeinterface 169 1 0
    //   469: aload_3
    //   470: areturn
    //   471: astore_1
    //   472: aconst_null
    //   473: astore_2
    //   474: aload_2
    //   475: ifnull +9 -> 484
    //   478: aload_2
    //   479: invokeinterface 169 1 0
    //   484: aload_1
    //   485: athrow
    //   486: astore_1
    //   487: goto -13 -> 474
    //   490: astore_3
    //   491: aconst_null
    //   492: astore_1
    //   493: goto -82 -> 411
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	496	0	this	v
    //   0	496	1	paramString1	String
    //   0	496	2	paramArrayOfString	String[]
    //   0	496	3	paramString2	String
    //   37	369	4	i	int
    //   40	364	5	j	int
    //   115	82	6	k	int
    //   34	418	7	l1	long
    //   137	72	9	l2	long
    //   380	3	11	l3	long
    //   31	419	13	localJSONArray	org.json.JSONArray
    //   82	176	14	localJSONObject	org.json.JSONObject
    //   93	80	15	str1	String
    //   126	110	16	str2	String
    //   164	84	17	str3	String
    // Exception table:
    //   from	to	target	type
    //   75	84	391	java/lang/Exception
    //   86	95	391	java/lang/Exception
    //   97	106	391	java/lang/Exception
    //   108	117	391	java/lang/Exception
    //   119	128	391	java/lang/Exception
    //   130	139	391	java/lang/Exception
    //   141	152	391	java/lang/Exception
    //   156	166	391	java/lang/Exception
    //   168	178	391	java/lang/Exception
    //   180	190	391	java/lang/Exception
    //   192	202	391	java/lang/Exception
    //   204	214	391	java/lang/Exception
    //   220	229	391	java/lang/Exception
    //   231	241	391	java/lang/Exception
    //   243	253	391	java/lang/Exception
    //   255	263	391	java/lang/Exception
    //   372	382	391	java/lang/Exception
    //   24	33	410	java/lang/Exception
    //   44	53	410	java/lang/Exception
    //   55	62	410	java/lang/Exception
    //   64	73	410	java/lang/Exception
    //   275	284	410	java/lang/Exception
    //   286	292	410	java/lang/Exception
    //   294	347	410	java/lang/Exception
    //   394	403	410	java/lang/Exception
    //   444	457	410	java/lang/Exception
    //   0	22	471	finally
    //   24	33	486	finally
    //   44	53	486	finally
    //   55	62	486	finally
    //   64	73	486	finally
    //   75	84	486	finally
    //   86	95	486	finally
    //   97	106	486	finally
    //   108	117	486	finally
    //   119	128	486	finally
    //   130	139	486	finally
    //   141	152	486	finally
    //   156	166	486	finally
    //   168	178	486	finally
    //   180	190	486	finally
    //   192	202	486	finally
    //   204	214	486	finally
    //   220	229	486	finally
    //   231	241	486	finally
    //   243	253	486	finally
    //   255	263	486	finally
    //   275	284	486	finally
    //   286	292	486	finally
    //   294	347	486	finally
    //   372	382	486	finally
    //   394	403	486	finally
    //   413	419	486	finally
    //   421	430	486	finally
    //   444	457	486	finally
    //   0	22	490	java/lang/Exception
  }
  
  private void a(Long paramLong)
  {
    if (paramLong == null) {}
    do
    {
      return;
      if (c.d) {
        Log.i("stat.EventDatabase", "The record with rowId = " + paramLong + " will be deleted from " + d);
      }
      try
      {
        f().delete(d, "rowId=?", new String[] { String.valueOf(paramLong) });
        return;
      }
      catch (Exception paramLong) {}
    } while (!c.e);
    Log.e("stat.EventDatabase", "Failed to delete by row id from " + d, paramLong);
  }
  
  private void a(String paramString, String[] paramArrayOfString)
  {
    try
    {
      int i = f().delete(d, paramString, paramArrayOfString);
      if (c.d) {
        Log.i("stat.EventDatabase", String.format("Delete %d rows by whereClause: %s  from %s", new Object[] { Integer.valueOf(i), paramString, d }));
      }
      return;
    }
    catch (Exception paramString)
    {
      while (!c.e) {}
      Log.e("stat.EventDatabase", "Failed to clear db!", paramString);
    }
  }
  
  /* Error */
  private Long d()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 84	com/dianxinos/dxservice/stat/v:f	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_0
    //   5: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   8: iconst_1
    //   9: anewarray 19	java/lang/String
    //   12: dup
    //   13: iconst_0
    //   14: ldc 21
    //   16: aastore
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: aconst_null
    //   21: aconst_null
    //   22: ldc -29
    //   24: invokevirtual 92	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   27: astore_3
    //   28: aload_3
    //   29: astore 4
    //   31: aload_3
    //   32: invokeinterface 101 1 0
    //   37: ifle +130 -> 167
    //   40: aload_3
    //   41: astore 4
    //   43: aload_3
    //   44: invokeinterface 105 1 0
    //   49: pop
    //   50: aload_3
    //   51: astore 4
    //   53: aload_3
    //   54: iconst_0
    //   55: invokeinterface 109 2 0
    //   60: lstore_1
    //   61: lload_1
    //   62: invokestatic 175	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   65: astore 4
    //   67: aload_3
    //   68: ifnull +9 -> 77
    //   71: aload_3
    //   72: invokeinterface 169 1 0
    //   77: aload 4
    //   79: areturn
    //   80: astore 5
    //   82: aconst_null
    //   83: astore_3
    //   84: aload_3
    //   85: astore 4
    //   87: getstatic 180	com/dianxinos/dxservice/a/c:e	Z
    //   90: ifeq +36 -> 126
    //   93: aload_3
    //   94: astore 4
    //   96: ldc -109
    //   98: new 52	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   105: ldc -27
    //   107: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload_0
    //   111: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   114: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: aload 5
    //   122: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   125: pop
    //   126: aload_3
    //   127: ifnull +38 -> 165
    //   130: aload_3
    //   131: invokeinterface 169 1 0
    //   136: aconst_null
    //   137: areturn
    //   138: astore_3
    //   139: aconst_null
    //   140: astore 4
    //   142: aload 4
    //   144: ifnull +10 -> 154
    //   147: aload 4
    //   149: invokeinterface 169 1 0
    //   154: aload_3
    //   155: athrow
    //   156: astore_3
    //   157: goto -15 -> 142
    //   160: astore 5
    //   162: goto -78 -> 84
    //   165: aconst_null
    //   166: areturn
    //   167: aconst_null
    //   168: astore 4
    //   170: goto -103 -> 67
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	v
    //   60	2	1	l	long
    //   27	104	3	localCursor	android.database.Cursor
    //   138	17	3	localObject1	Object
    //   156	1	3	localObject2	Object
    //   29	140	4	localObject3	Object
    //   80	41	5	localException1	Exception
    //   160	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	28	80	java/lang/Exception
    //   0	28	138	finally
    //   31	40	156	finally
    //   43	50	156	finally
    //   53	61	156	finally
    //   87	93	156	finally
    //   96	126	156	finally
    //   31	40	160	java/lang/Exception
    //   43	50	160	java/lang/Exception
    //   53	61	160	java/lang/Exception
  }
  
  private void e()
  {
    a("f < ?", new String[] { String.valueOf(aa.a(System.currentTimeMillis() - 1209600000L)) });
  }
  
  private SQLiteDatabase f()
  {
    a();
    try
    {
      if ((f == null) || (!f.isOpen())) {
        f = getWritableDatabase();
      }
      return f;
    }
    finally
    {
      b();
    }
  }
  
  /* Error */
  public String a(String paramString1, Date paramDate, String paramString2)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual 267	java/util/Date:getTime	()J
    //   4: invokestatic 269	com/dianxinos/dxservice/stat/aa:b	(J)J
    //   7: lstore 4
    //   9: aload_0
    //   10: invokespecial 84	com/dianxinos/dxservice/stat/v:f	()Landroid/database/sqlite/SQLiteDatabase;
    //   13: aload_0
    //   14: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   17: iconst_1
    //   18: anewarray 19	java/lang/String
    //   21: dup
    //   22: iconst_0
    //   23: ldc 25
    //   25: aastore
    //   26: ldc_w 271
    //   29: iconst_3
    //   30: anewarray 19	java/lang/String
    //   33: dup
    //   34: iconst_0
    //   35: aload_1
    //   36: aastore
    //   37: dup
    //   38: iconst_1
    //   39: lload 4
    //   41: invokestatic 247	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   44: aastore
    //   45: dup
    //   46: iconst_2
    //   47: aload_3
    //   48: aastore
    //   49: aconst_null
    //   50: aconst_null
    //   51: aconst_null
    //   52: invokevirtual 274	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   55: astore_1
    //   56: aload_1
    //   57: astore_2
    //   58: aload_1
    //   59: invokeinterface 101 1 0
    //   64: ifle +116 -> 180
    //   67: aload_1
    //   68: astore_2
    //   69: aload_1
    //   70: invokeinterface 105 1 0
    //   75: pop
    //   76: aload_1
    //   77: astore_2
    //   78: aload_1
    //   79: iconst_0
    //   80: invokeinterface 116 2 0
    //   85: astore_3
    //   86: aload_3
    //   87: astore_2
    //   88: aload_1
    //   89: ifnull +9 -> 98
    //   92: aload_1
    //   93: invokeinterface 169 1 0
    //   98: aload_2
    //   99: areturn
    //   100: astore_3
    //   101: aconst_null
    //   102: astore_1
    //   103: aload_1
    //   104: astore_2
    //   105: getstatic 180	com/dianxinos/dxservice/a/c:e	Z
    //   108: ifeq +35 -> 143
    //   111: aload_1
    //   112: astore_2
    //   113: ldc -109
    //   115: new 52	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   122: ldc_w 276
    //   125: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_0
    //   129: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   132: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 76	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: aload_3
    //   139: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   142: pop
    //   143: aload_1
    //   144: ifnull +34 -> 178
    //   147: aload_1
    //   148: invokeinterface 169 1 0
    //   153: aconst_null
    //   154: areturn
    //   155: astore_1
    //   156: aconst_null
    //   157: astore_2
    //   158: aload_2
    //   159: ifnull +9 -> 168
    //   162: aload_2
    //   163: invokeinterface 169 1 0
    //   168: aload_1
    //   169: athrow
    //   170: astore_1
    //   171: goto -13 -> 158
    //   174: astore_3
    //   175: goto -72 -> 103
    //   178: aconst_null
    //   179: areturn
    //   180: aconst_null
    //   181: astore_2
    //   182: goto -94 -> 88
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	185	0	this	v
    //   0	185	1	paramString1	String
    //   0	185	2	paramDate	Date
    //   0	185	3	paramString2	String
    //   7	33	4	l	long
    // Exception table:
    //   from	to	target	type
    //   9	56	100	java/lang/Exception
    //   9	56	155	finally
    //   58	67	170	finally
    //   69	76	170	finally
    //   78	86	170	finally
    //   105	111	170	finally
    //   113	143	170	finally
    //   58	67	174	java/lang/Exception
    //   69	76	174	java/lang/Exception
    //   78	86	174	java/lang/Exception
  }
  
  public void a()
  {
    e.lock();
  }
  
  public void a(int paramInt)
  {
    try
    {
      f().delete(d, "i=?", new String[] { String.valueOf(paramInt) });
      return;
    }
    catch (Exception localException)
    {
      while (!c.e) {}
      Log.e("stat.EventDatabase", "Failed to delete publicKey version from " + d);
    }
  }
  
  public void a(long paramLong)
  {
    if (paramLong <= 0L)
    {
      a(null, null);
      return;
    }
    if (c.d) {
      Log.i("stat.EventDatabase", String.format("Delete where row_id <= %d  from %s", new Object[] { Long.valueOf(paramLong), d }));
    }
    a("rowId<=?", new String[] { String.valueOf(paramLong) });
  }
  
  public boolean a(String paramString1, int paramInt1, int paramInt2, String paramString2, Date paramDate, String paramString3, int paramInt3, int paramInt4)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = f();
      int i = d.a(localSQLiteDatabase);
      long l = u.b(b);
      if (c.d) {
        Log.i("stat.EventDatabase", String.format("Current db %s file is %s and it's size is %d and is max size is %d!", new Object[] { d, localSQLiteDatabase.getPath(), Integer.valueOf(i), Long.valueOf(l) }));
      }
      if (i > l) {
        a(d());
      }
      l = aa.b(paramDate.getTime());
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("a", paramString1);
      localContentValues.put("b", Integer.valueOf(paramInt1));
      localContentValues.put("c", Integer.valueOf(paramInt2));
      localContentValues.put("d", paramString2);
      localContentValues.put("e", Long.valueOf(l));
      localContentValues.put("f", Long.valueOf(aa.a(paramDate.getTime())));
      localContentValues.put("g", Long.valueOf(aa.a(paramDate.getTime())));
      localContentValues.put("h", paramString3);
      localContentValues.put("i", Integer.valueOf(paramInt3));
      localContentValues.put("j", Integer.valueOf(paramInt4));
      l = localSQLiteDatabase.insert(d, null, localContentValues);
      return l >= 0L;
    }
    catch (Exception paramString1)
    {
      if (c.e) {
        Log.e("stat.EventDatabase", "Failed to add to db " + d, paramString1);
      }
    }
    return false;
  }
  
  public boolean a(String paramString1, String paramString2, Date paramDate, String paramString3)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = f();
      if (c.d)
      {
        i = d.a(localSQLiteDatabase);
        l = u.b(b);
        Log.i("stat.EventDatabase", "Current db " + d + " file is " + localSQLiteDatabase.getPath() + " and its size is " + i + " and its max size is " + l + ".");
      }
      long l = aa.b(paramDate.getTime());
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("d", paramString2);
      localContentValues.put("g", Long.valueOf(aa.a(paramDate.getTime())));
      int i = localSQLiteDatabase.update(d, localContentValues, "a=? and e=? and h=?", new String[] { paramString1, String.valueOf(l), paramString3 });
      return i > 0L;
    }
    catch (Exception paramString1)
    {
      if (c.e) {
        Log.e("stat.EventDatabase", "Failed to update db " + d, paramString1);
      }
    }
    return false;
  }
  
  public w b(int paramInt)
  {
    e();
    if (paramInt <= 0) {}
    for (String str = null;; str = String.valueOf(paramInt)) {
      return a(null, null, str);
    }
  }
  
  public void b()
  {
    e.unlock();
  }
  
  /* Error */
  public boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 84	com/dianxinos/dxservice/stat/v:f	()Landroid/database/sqlite/SQLiteDatabase;
    //   4: aload_0
    //   5: getfield 50	com/dianxinos/dxservice/stat/v:d	Ljava/lang/String;
    //   8: aconst_null
    //   9: aconst_null
    //   10: aconst_null
    //   11: aconst_null
    //   12: aconst_null
    //   13: aconst_null
    //   14: ldc -29
    //   16: invokevirtual 92	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   19: astore 4
    //   21: aload 4
    //   23: astore_3
    //   24: aload 4
    //   26: invokeinterface 101 1 0
    //   31: istore_1
    //   32: iload_1
    //   33: ifne +19 -> 52
    //   36: iconst_1
    //   37: istore_2
    //   38: aload 4
    //   40: ifnull +10 -> 50
    //   43: aload 4
    //   45: invokeinterface 169 1 0
    //   50: iload_2
    //   51: ireturn
    //   52: iconst_0
    //   53: istore_2
    //   54: goto -16 -> 38
    //   57: astore 5
    //   59: aconst_null
    //   60: astore 4
    //   62: aload 4
    //   64: astore_3
    //   65: getstatic 180	com/dianxinos/dxservice/a/c:e	Z
    //   68: ifeq +17 -> 85
    //   71: aload 4
    //   73: astore_3
    //   74: ldc -109
    //   76: ldc_w 354
    //   79: aload 5
    //   81: invokestatic 185	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   84: pop
    //   85: aload 4
    //   87: ifnull +10 -> 97
    //   90: aload 4
    //   92: invokeinterface 169 1 0
    //   97: iconst_1
    //   98: ireturn
    //   99: astore 4
    //   101: aconst_null
    //   102: astore_3
    //   103: aload_3
    //   104: ifnull +9 -> 113
    //   107: aload_3
    //   108: invokeinterface 169 1 0
    //   113: aload 4
    //   115: athrow
    //   116: astore 4
    //   118: goto -15 -> 103
    //   121: astore 5
    //   123: goto -61 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	v
    //   31	2	1	i	int
    //   37	17	2	bool	boolean
    //   23	85	3	localCursor1	android.database.Cursor
    //   19	72	4	localCursor2	android.database.Cursor
    //   99	15	4	localObject1	Object
    //   116	1	4	localObject2	Object
    //   57	23	5	localException1	Exception
    //   121	1	5	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   0	21	57	java/lang/Exception
    //   0	21	99	finally
    //   24	32	116	finally
    //   65	71	116	finally
    //   74	85	116	finally
    //   24	32	121	java/lang/Exception
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL(c);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    String str;
    if ((paramInt1 < 6) && (paramInt2 >= 6))
    {
      str = "ALTER TABLE " + d + " ADD COLUMN " + "j" + " INTEGER;";
      if (c.d) {
        Log.i("stat.EventDatabase", String.format("Upgrade db %s from %d to %d! excute %s", new Object[] { d, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), str }));
      }
    }
    try
    {
      paramSQLiteDatabase.execSQL(str);
      return;
    }
    catch (SQLException paramSQLiteDatabase)
    {
      while (!c.e) {}
      Log.e("stat.EventDatabase", "Failed to upgrade!", paramSQLiteDatabase);
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */