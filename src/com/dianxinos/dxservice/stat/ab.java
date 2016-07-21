package com.dianxinos.dxservice.stat;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.format.DateUtils;
import android.util.Log;
import com.dianxinos.dxservice.a.c;
import com.dianxinos.dxservice.a.d;
import java.util.Calendar;

final class ab
  extends SQLiteOpenHelper
{
  private static String a = "a";
  private static String b = "b";
  private final Context c;
  private final String d;
  private final String e;
  
  public ab(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
    c = paramContext;
    e = paramString;
    d = ("CREATE TABLE " + paramString + "(" + a + " TEXT," + b + " INTEGER);");
  }
  
  private void a()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      Calendar localCalendar = Calendar.getInstance();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localCalendar.set(11, 0);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localCalendar.set(12, 0);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localCalendar.set(13, 0);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localCalendar.set(14, 0);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.delete(e, b + "< ?", new String[] { String.valueOf(localCalendar.getTimeInMillis()) });
      d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      if (c.e)
      {
        localObject3 = localObject1;
        Log.e("stat.EventReportKeyDatabase", "Failed to delete oldest record!", localException);
      }
      return;
    }
    finally
    {
      d.b((SQLiteDatabase)localObject3);
    }
  }
  
  /* Error */
  private long b(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 7
    //   6: aconst_null
    //   7: astore 8
    //   9: aconst_null
    //   10: astore 5
    //   12: aload_0
    //   13: invokevirtual 108	com/dianxinos/dxservice/stat/ab:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   16: astore 6
    //   18: aload 7
    //   20: astore 4
    //   22: aload 8
    //   24: astore 5
    //   26: getstatic 19	com/dianxinos/dxservice/stat/ab:b	Ljava/lang/String;
    //   29: astore 9
    //   31: aload 7
    //   33: astore 4
    //   35: aload 8
    //   37: astore 5
    //   39: new 31	java/lang/StringBuilder
    //   42: dup
    //   43: invokespecial 33	java/lang/StringBuilder:<init>	()V
    //   46: getstatic 16	com/dianxinos/dxservice/stat/ab:a	Ljava/lang/String;
    //   49: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 110
    //   54: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: astore 10
    //   62: aload 7
    //   64: astore 4
    //   66: aload 8
    //   68: astore 5
    //   70: aload 6
    //   72: aload_0
    //   73: getfield 29	com/dianxinos/dxservice/stat/ab:e	Ljava/lang/String;
    //   76: iconst_1
    //   77: anewarray 71	java/lang/String
    //   80: dup
    //   81: iconst_0
    //   82: aload 9
    //   84: aastore
    //   85: aload 10
    //   87: iconst_1
    //   88: anewarray 71	java/lang/String
    //   91: dup
    //   92: iconst_0
    //   93: aload_1
    //   94: aastore
    //   95: aconst_null
    //   96: aconst_null
    //   97: aconst_null
    //   98: invokevirtual 114	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   101: astore_1
    //   102: aload_1
    //   103: astore 4
    //   105: aload_1
    //   106: astore 5
    //   108: aload_1
    //   109: invokeinterface 120 1 0
    //   114: ifle +47 -> 161
    //   117: aload_1
    //   118: astore 4
    //   120: aload_1
    //   121: astore 5
    //   123: aload_1
    //   124: invokeinterface 124 1 0
    //   129: pop
    //   130: aload_1
    //   131: astore 4
    //   133: aload_1
    //   134: astore 5
    //   136: aload_1
    //   137: iconst_0
    //   138: invokeinterface 128 2 0
    //   143: lstore_2
    //   144: aload_1
    //   145: ifnull +9 -> 154
    //   148: aload_1
    //   149: invokeinterface 131 1 0
    //   154: aload 6
    //   156: invokestatic 90	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   159: lload_2
    //   160: lreturn
    //   161: aload_1
    //   162: ifnull +9 -> 171
    //   165: aload_1
    //   166: invokeinterface 131 1 0
    //   171: aload 6
    //   173: invokestatic 90	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   176: ldc2_w 132
    //   179: lreturn
    //   180: astore 4
    //   182: aconst_null
    //   183: astore_1
    //   184: getstatic 95	com/dianxinos/dxservice/a/c:e	Z
    //   187: ifeq +13 -> 200
    //   190: ldc 97
    //   192: ldc -121
    //   194: aload 4
    //   196: invokestatic 104	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   199: pop
    //   200: aload 5
    //   202: ifnull +10 -> 212
    //   205: aload 5
    //   207: invokeinterface 131 1 0
    //   212: aload_1
    //   213: invokestatic 90	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   216: ldc2_w 132
    //   219: lreturn
    //   220: astore 6
    //   222: aconst_null
    //   223: astore_1
    //   224: aload 4
    //   226: ifnull +10 -> 236
    //   229: aload 4
    //   231: invokeinterface 131 1 0
    //   236: aload_1
    //   237: invokestatic 90	com/dianxinos/dxservice/a/d:b	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   240: aload 6
    //   242: athrow
    //   243: astore 5
    //   245: aload 6
    //   247: astore_1
    //   248: aload 5
    //   250: astore 6
    //   252: goto -28 -> 224
    //   255: astore 6
    //   257: aload 5
    //   259: astore 4
    //   261: goto -37 -> 224
    //   264: astore 4
    //   266: aload 6
    //   268: astore_1
    //   269: goto -85 -> 184
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	ab
    //   0	272	1	paramString	String
    //   143	17	2	l	long
    //   1	131	4	localObject1	Object
    //   180	50	4	localException1	Exception
    //   259	1	4	localObject2	Object
    //   264	1	4	localException2	Exception
    //   10	196	5	localObject3	Object
    //   243	15	5	localObject4	Object
    //   16	156	6	localSQLiteDatabase	SQLiteDatabase
    //   220	26	6	localObject5	Object
    //   250	1	6	localObject6	Object
    //   255	12	6	localObject7	Object
    //   4	59	7	localObject8	Object
    //   7	60	8	localObject9	Object
    //   29	54	9	str1	String
    //   60	26	10	str2	String
    // Exception table:
    //   from	to	target	type
    //   12	18	180	java/lang/Exception
    //   12	18	220	finally
    //   26	31	243	finally
    //   39	62	243	finally
    //   70	102	243	finally
    //   108	117	243	finally
    //   123	130	243	finally
    //   136	144	243	finally
    //   184	200	255	finally
    //   26	31	264	java/lang/Exception
    //   39	62	264	java/lang/Exception
    //   70	102	264	java/lang/Exception
    //   108	117	264	java/lang/Exception
    //   123	130	264	java/lang/Exception
    //   136	144	264	java/lang/Exception
  }
  
  private void b(String paramString, long paramLong)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      int i = d.a(localSQLiteDatabase);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      long l = u.b(c);
      if (i > l)
      {
        localObject1 = localSQLiteDatabase;
        localObject2 = localSQLiteDatabase;
        a();
      }
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      ContentValues localContentValues = new ContentValues();
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put(a, paramString);
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localContentValues.put(b, Long.valueOf(paramLong));
      localObject1 = localSQLiteDatabase;
      localObject2 = localSQLiteDatabase;
      localSQLiteDatabase.insert(e, null, localContentValues);
      d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception paramString)
    {
      localObject2 = localObject1;
      if (c.e)
      {
        localObject2 = localObject1;
        Log.e("stat.EventReportKeyDatabase", "Failed to insert into db!", paramString);
      }
      return;
    }
    finally
    {
      d.b((SQLiteDatabase)localObject2);
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    String str = c.a(paramString);
    Object localObject = null;
    paramString = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
      paramString = localSQLiteDatabase;
      localObject = localSQLiteDatabase;
      ContentValues localContentValues = new ContentValues();
      paramString = localSQLiteDatabase;
      localObject = localSQLiteDatabase;
      localContentValues.put(b, Long.valueOf(paramLong));
      paramString = localSQLiteDatabase;
      localObject = localSQLiteDatabase;
      if (localSQLiteDatabase.update(e, localContentValues, a + "=?", new String[] { str }) < 1)
      {
        paramString = localSQLiteDatabase;
        localObject = localSQLiteDatabase;
        b(str, paramLong);
      }
      d.b(localSQLiteDatabase);
      return;
    }
    catch (Exception localException)
    {
      localObject = paramString;
      if (c.e)
      {
        localObject = paramString;
        Log.e("stat.EventReportKeyDatabase", "Failed to update db!", localException);
      }
      d.b(paramString);
      return;
    }
    finally
    {
      d.b((SQLiteDatabase)localObject);
    }
  }
  
  public boolean a(String paramString)
  {
    return DateUtils.isToday(Long.valueOf(b(c.a(paramString))).longValue());
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    if (c.d) {
      Log.i("stat.EventReportKeyDatabase", "Create table " + e + " with " + d);
    }
    paramSQLiteDatabase.execSQL(d);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (c.d) {
      Log.i("stat.EventReportKeyDatabase", "Table " + e + " upgrade from " + paramInt1 + " to " + paramInt2);
    }
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + e);
    paramSQLiteDatabase.execSQL(d);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */