package com.estrongs.android.a.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import com.estrongs.android.a.b.r;
import com.estrongs.android.pop.a;
import com.estrongs.android.util.l;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public class f
{
  private static final String a = a.b + "/samefiles0.db";
  private SQLiteDatabase b = null;
  private int c;
  
  public f(int paramInt)
  {
    c = paramInt;
  }
  
  /* Error */
  private r[] b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iconst_0
    //   3: anewarray 45	com/estrongs/android/a/b/r
    //   6: astore 8
    //   8: aload_0
    //   9: getfield 38	com/estrongs/android/a/a/f:b	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ldc 47
    //   14: aconst_null
    //   15: aload_1
    //   16: aconst_null
    //   17: aconst_null
    //   18: aconst_null
    //   19: aconst_null
    //   20: invokevirtual 53	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   23: astore_1
    //   24: aload_1
    //   25: ifnonnull +20 -> 45
    //   28: aload_1
    //   29: ifnull +9 -> 38
    //   32: aload_1
    //   33: invokeinterface 58 1 0
    //   38: aload 8
    //   40: astore 9
    //   42: aload 9
    //   44: areturn
    //   45: aload_1
    //   46: invokeinterface 62 1 0
    //   51: istore_3
    //   52: iload_3
    //   53: ifne +16 -> 69
    //   56: aload_1
    //   57: ifnull +9 -> 66
    //   60: aload_1
    //   61: invokeinterface 58 1 0
    //   66: aload 8
    //   68: areturn
    //   69: aload_1
    //   70: invokeinterface 66 1 0
    //   75: anewarray 45	com/estrongs/android/a/b/r
    //   78: astore 10
    //   80: aload_1
    //   81: iconst_0
    //   82: invokeinterface 70 2 0
    //   87: i2l
    //   88: lstore 4
    //   90: aload_1
    //   91: iconst_1
    //   92: invokeinterface 74 2 0
    //   97: astore 8
    //   99: aload_1
    //   100: iconst_2
    //   101: invokeinterface 74 2 0
    //   106: astore 9
    //   108: aload_1
    //   109: iconst_3
    //   110: invokeinterface 70 2 0
    //   115: i2l
    //   116: lstore 6
    //   118: aload 10
    //   120: iload_2
    //   121: new 45	com/estrongs/android/a/b/r
    //   124: dup
    //   125: lload 4
    //   127: aload 8
    //   129: aload_1
    //   130: iconst_4
    //   131: invokeinterface 70 2 0
    //   136: i2l
    //   137: lload 6
    //   139: aload 9
    //   141: aload_1
    //   142: iconst_5
    //   143: invokeinterface 70 2 0
    //   148: invokespecial 77	com/estrongs/android/a/b/r:<init>	(JLjava/lang/String;JJLjava/lang/String;I)V
    //   151: aastore
    //   152: aload_1
    //   153: invokeinterface 80 1 0
    //   158: istore_3
    //   159: iload_3
    //   160: ifne +113 -> 273
    //   163: aload_1
    //   164: ifnull +106 -> 270
    //   167: aload_1
    //   168: invokeinterface 58 1 0
    //   173: aload 10
    //   175: areturn
    //   176: astore 9
    //   178: aconst_null
    //   179: astore 10
    //   181: aload 8
    //   183: astore_1
    //   184: aload 10
    //   186: astore 8
    //   188: aload 9
    //   190: invokevirtual 83	java/lang/Exception:printStackTrace	()V
    //   193: aload_1
    //   194: astore 9
    //   196: aload 8
    //   198: ifnull -156 -> 42
    //   201: aload 8
    //   203: invokeinterface 58 1 0
    //   208: aload_1
    //   209: areturn
    //   210: astore 8
    //   212: aconst_null
    //   213: astore_1
    //   214: aload_1
    //   215: ifnull +9 -> 224
    //   218: aload_1
    //   219: invokeinterface 58 1 0
    //   224: aload 8
    //   226: athrow
    //   227: astore 8
    //   229: goto -15 -> 214
    //   232: astore 9
    //   234: aload 8
    //   236: astore_1
    //   237: aload 9
    //   239: astore 8
    //   241: goto -27 -> 214
    //   244: astore 9
    //   246: aload_1
    //   247: astore 10
    //   249: aload 8
    //   251: astore_1
    //   252: aload 10
    //   254: astore 8
    //   256: goto -68 -> 188
    //   259: astore 9
    //   261: aload_1
    //   262: astore 8
    //   264: aload 10
    //   266: astore_1
    //   267: goto -79 -> 188
    //   270: aload 10
    //   272: areturn
    //   273: iload_2
    //   274: iconst_1
    //   275: iadd
    //   276: istore_2
    //   277: goto -197 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	f
    //   0	280	1	paramString	String
    //   1	276	2	i	int
    //   51	109	3	bool	boolean
    //   88	38	4	l1	long
    //   116	22	6	l2	long
    //   6	196	8	localObject1	Object
    //   210	15	8	localObject2	Object
    //   227	8	8	localObject3	Object
    //   239	24	8	localObject4	Object
    //   40	100	9	localObject5	Object
    //   176	13	9	localException1	Exception
    //   194	1	9	str	String
    //   232	6	9	localObject6	Object
    //   244	1	9	localException2	Exception
    //   259	1	9	localException3	Exception
    //   78	193	10	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   8	24	176	java/lang/Exception
    //   8	24	210	finally
    //   45	52	227	finally
    //   69	80	227	finally
    //   80	159	227	finally
    //   188	193	232	finally
    //   45	52	244	java/lang/Exception
    //   69	80	244	java/lang/Exception
    //   80	159	259	java/lang/Exception
  }
  
  public void a()
  {
    File localFile = new File(a);
    boolean bool2 = localFile.exists();
    boolean bool1 = bool2;
    if (!bool2) {
      bool1 = bool2;
    }
    while (!bool1) {
      try
      {
        bool2 = localFile.createNewFile();
        bool1 = bool2;
        if (bool2)
        {
          bool1 = bool2;
          b = SQLiteDatabase.openOrCreateDatabase(localFile, null);
          bool1 = bool2;
          b.execSQL("CREATE TABLE IF NOT EXISTS samefiles(_id integer primary key autoincrement, fullpath text not null, md5 text not null, lastmodified int not null, size integer not null,type integer not null,source integer not null);");
          bool1 = bool2;
          b.execSQL("CREATE INDEX path_index ON samefiles (fullpath);");
          bool1 = bool2;
          b.execSQL("CREATE INDEX type_index ON samefiles (type);");
          bool1 = bool2;
          b.execSQL("CREATE INDEX source_index ON samefiles (source);");
          return;
        }
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
      }
    }
    try
    {
      b = SQLiteDatabase.openDatabase(a, null, 0);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public void a(List<r> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()) || (b == null)) {
      return;
    }
    l.b("DbAdapter", "insert files, number:" + paramList.size());
    b.beginTransaction();
    try
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        r localr = (r)paramList.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("fullpath", localr.e_());
        localContentValues.put("md5", localr.k());
        localContentValues.put("lastmodified", Long.valueOf(localr.f()));
        localContentValues.put("size", Long.valueOf(localr.d()));
        localContentValues.put("type", Integer.valueOf(localr.n()));
        localContentValues.put("source", Integer.valueOf(c));
        long l = b.insert("samefiles", null, localContentValues);
        if (l < 0L) {
          try
          {
            b.endTransaction();
            return;
          }
          catch (Exception paramList)
          {
            paramList.printStackTrace();
            return;
          }
        }
        localr.a(l);
      }
      try
      {
        b.endTransaction();
        throw paramList;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      paramList.printStackTrace();
      try
      {
        b.endTransaction();
        return;
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      b.setTransactionSuccessful();
      try
      {
        b.endTransaction();
        return;
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
    }
    finally {}
  }
  
  public r[] a(int paramInt)
  {
    if (b == null) {
      return new r[0];
    }
    StringBuilder localStringBuilder = new StringBuilder("type");
    localStringBuilder.append(" = ").append(paramInt).append(" and ").append("source").append("=").append(c);
    return b(localStringBuilder.toString());
  }
  
  public r[] a(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (b == null)) {
      return new r[0];
    }
    StringBuilder localStringBuilder = new StringBuilder("fullpath");
    localStringBuilder.append(" like '").append(paramString).append("/%' and ").append("source").append("=").append(c);
    return b(localStringBuilder.toString());
  }
  
  public void b()
  {
    if (b != null) {
      b.close();
    }
    b = null;
  }
  
  public void b(List<Long> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()) || (b == null)) {
      return;
    }
    b.beginTransaction();
    try
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        long l = ((Long)paramList.next()).longValue();
        l.b("DbAdapter", "delete :" + l);
        b.delete("samefiles", "_id = " + l, null);
      }
      try
      {
        b.endTransaction();
        throw paramList;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    catch (Exception paramList)
    {
      paramList = paramList;
      paramList.printStackTrace();
      try
      {
        b.endTransaction();
        return;
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
      b.setTransactionSuccessful();
      try
      {
        b.endTransaction();
        return;
      }
      catch (Exception paramList)
      {
        paramList.printStackTrace();
        return;
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.a.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */