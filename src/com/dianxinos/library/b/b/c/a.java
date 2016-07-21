package com.dianxinos.library.b.b.c;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.dianxinos.library.b.b.a.d;
import com.dianxinos.library.b.c.e;

public class a
{
  SQLiteStatement a = null;
  SQLiteStatement b = null;
  private boolean c = com.dianxinos.library.b.a.b;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private b i;
  private volatile SQLiteDatabase j;
  
  public a(b paramb, String paramString1, String paramString2)
  {
    d = paramString1;
    e = paramString2;
    f = com.dianxinos.library.b.b.b.b.a(d + paramString2);
    g = com.dianxinos.library.b.b.b.b.a(f + "t72f283666ae9a3482660515b0f9acebeaff91e04");
    h = com.dianxinos.library.b.b.b.b.a(f + "te925705f61b25bfc077944de94029ec78ed12da0");
    i = paramb;
    j = d();
  }
  
  static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    boolean bool = true;
    try
    {
      paramString = paramSQLiteDatabase.rawQuery("select count(*) from sqlite_master where tbl_name=?  and type=?", new String[] { paramString, "table" });
      if (paramString != null) {}
      int k;
      e.a(paramString);
    }
    finally
    {
      try
      {
        if (paramString.moveToNext())
        {
          k = paramString.getInt(0);
          if (k > 0) {}
          for (;;)
          {
            e.a(paramString);
            return bool;
            bool = false;
          }
        }
        e.a(paramString);
        return false;
      }
      finally {}
      paramSQLiteDatabase = finally;
      paramString = null;
    }
    throw paramSQLiteDatabase;
  }
  
  private boolean a(d[] paramArrayOfd, int paramInt, SQLiteDatabase paramSQLiteDatabase)
  {
    int k = 0;
    for (;;)
    {
      if (k < paramInt)
      {
        paramSQLiteDatabase = paramArrayOfd[k];
        if (paramSQLiteDatabase != null) {
          try
          {
            if (b != com.dianxinos.library.b.b.d.a.a)
            {
              a.bindString(1, d);
              a.bindBlob(2, e);
              a.execute();
              a.clearBindings();
            }
            else
            {
              b.bindString(1, d);
              b.execute();
              b.clearBindings();
            }
          }
          catch (Exception paramArrayOfd)
          {
            return false;
          }
        }
      }
      else
      {
        return true;
      }
      k += 1;
    }
  }
  
  private SQLiteDatabase d()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = i.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (Exception localException) {}
    return null;
  }
  
  public long a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put(g, paramString);
      localContentValues.put(h, paramArrayOfByte);
      long l = localSQLiteDatabase.insert(f, null, localContentValues);
      return l;
    }
    catch (Exception paramString)
    {
      paramString = paramString;
      if (c) {
        paramString.printStackTrace();
      }
      return 0L;
    }
    finally {}
  }
  
  public boolean a()
  {
    try
    {
      boolean bool = a(c(), f);
      return bool;
    }
    catch (Exception localException)
    {
      localException = localException;
      if (c) {
        localException.printStackTrace();
      }
      return false;
    }
    finally {}
  }
  
  public boolean a(d[] paramArrayOfd, int paramInt)
  {
    bool4 = false;
    boolean bool3 = true;
    localSQLiteDatabase = c();
    int k = 0;
    do
    {
      m = k + 1;
      bool2 = bool3;
      try
      {
        if (a == null)
        {
          bool2 = bool3;
          a = localSQLiteDatabase.compileStatement("REPLACE INTO \"" + f + "\" (" + g + "," + h + ") VALUES(?, ?);");
        }
        bool2 = bool3;
        if (b == null)
        {
          bool2 = bool3;
          b = localSQLiteDatabase.compileStatement("DELETE FROM \"" + f + "\" WHERE " + g + "=?");
        }
        bool2 = bool3;
        localSQLiteDatabase.beginTransaction();
        bool2 = bool3;
        bool3 = a(paramArrayOfd, paramInt, localSQLiteDatabase);
        if (bool3)
        {
          bool2 = bool3;
          localSQLiteDatabase.setTransactionSuccessful();
        }
        bool1 = bool3;
        if (localSQLiteDatabase != null)
        {
          localSQLiteDatabase.endTransaction();
          bool1 = bool3;
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          a = null;
          b = null;
          if (m >= 2)
          {
            bool1 = bool4;
            return false;
          }
          boolean bool1 = bool2;
          if (localSQLiteDatabase != null)
          {
            localSQLiteDatabase.endTransaction();
            bool1 = bool2;
          }
        }
      }
      finally
      {
        if (localSQLiteDatabase == null) {
          break label299;
        }
        localSQLiteDatabase.endTransaction();
      }
      if (bool1) {
        break;
      }
      bool3 = bool1;
      k = m;
    } while (m < 2);
    return bool1;
  }
  
  /* Error */
  public byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokevirtual 140	com/dianxinos/library/b/b/c/a:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore_3
    //   7: aload_0
    //   8: getfield 64	com/dianxinos/library/b/b/c/a:h	Ljava/lang/String;
    //   11: astore 4
    //   13: new 40	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 41	java/lang/StringBuilder:<init>	()V
    //   20: aload_0
    //   21: getfield 60	com/dianxinos/library/b/b/c/a:g	Ljava/lang/String;
    //   24: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc -78
    //   29: invokevirtual 45	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 49	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: astore 5
    //   37: aload_3
    //   38: aload_0
    //   39: getfield 56	com/dianxinos/library/b/b/c/a:f	Ljava/lang/String;
    //   42: iconst_1
    //   43: anewarray 77	java/lang/String
    //   46: dup
    //   47: iconst_0
    //   48: aload 4
    //   50: aastore
    //   51: aload 5
    //   53: iconst_1
    //   54: anewarray 77	java/lang/String
    //   57: dup
    //   58: iconst_0
    //   59: aload_1
    //   60: aastore
    //   61: aconst_null
    //   62: aconst_null
    //   63: aconst_null
    //   64: invokevirtual 194	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   67: astore_1
    //   68: aload_1
    //   69: astore_2
    //   70: aload_2
    //   71: ifnull +39 -> 110
    //   74: aload_2
    //   75: astore_1
    //   76: aload_2
    //   77: invokeinterface 91 1 0
    //   82: ifeq +28 -> 110
    //   85: aload_2
    //   86: astore_1
    //   87: aload_2
    //   88: aload_2
    //   89: aload_0
    //   90: getfield 64	com/dianxinos/library/b/b/c/a:h	Ljava/lang/String;
    //   93: invokeinterface 198 2 0
    //   98: invokeinterface 202 2 0
    //   103: astore_3
    //   104: aload_2
    //   105: invokestatic 100	com/dianxinos/library/b/c/e:a	(Landroid/database/Cursor;)V
    //   108: aload_3
    //   109: areturn
    //   110: aload_2
    //   111: invokestatic 100	com/dianxinos/library/b/c/e:a	(Landroid/database/Cursor;)V
    //   114: aconst_null
    //   115: areturn
    //   116: astore_3
    //   117: aconst_null
    //   118: astore_2
    //   119: aload_2
    //   120: astore_1
    //   121: aload_0
    //   122: getfield 30	com/dianxinos/library/b/b/c/a:c	Z
    //   125: ifeq +9 -> 134
    //   128: aload_2
    //   129: astore_1
    //   130: aload_3
    //   131: invokevirtual 157	java/lang/Exception:printStackTrace	()V
    //   134: aload_2
    //   135: invokestatic 100	com/dianxinos/library/b/c/e:a	(Landroid/database/Cursor;)V
    //   138: goto -24 -> 114
    //   141: astore_1
    //   142: aload_2
    //   143: invokestatic 100	com/dianxinos/library/b/c/e:a	(Landroid/database/Cursor;)V
    //   146: aload_1
    //   147: athrow
    //   148: astore_3
    //   149: aload_1
    //   150: astore_2
    //   151: aload_3
    //   152: astore_1
    //   153: goto -11 -> 142
    //   156: astore_3
    //   157: goto -38 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	160	0	this	a
    //   0	160	1	paramString	String
    //   1	150	2	str1	String
    //   6	103	3	localObject1	Object
    //   116	15	3	localException1	Exception
    //   148	4	3	localObject2	Object
    //   156	1	3	localException2	Exception
    //   11	38	4	str2	String
    //   35	17	5	str3	String
    // Exception table:
    //   from	to	target	type
    //   2	68	116	java/lang/Exception
    //   2	68	141	finally
    //   76	85	148	finally
    //   87	104	148	finally
    //   121	128	148	finally
    //   130	134	148	finally
    //   76	85	156	java/lang/Exception
    //   87	104	156	java/lang/Exception
  }
  
  public boolean b()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    try
    {
      SQLiteDatabase localSQLiteDatabase = c();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.beginTransaction();
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      i.a(localSQLiteDatabase, f);
      localObject1 = localSQLiteDatabase;
      localObject3 = localSQLiteDatabase;
      localSQLiteDatabase.setTransactionSuccessful();
      if (localSQLiteDatabase != null) {
        localSQLiteDatabase.endTransaction();
      }
      return true;
    }
    catch (Exception localException)
    {
      localObject3 = localObject1;
      if (c)
      {
        localObject3 = localObject1;
        localException.printStackTrace();
      }
      return false;
    }
    finally
    {
      if (localObject3 != null) {
        ((SQLiteDatabase)localObject3).endTransaction();
      }
    }
  }
  
  SQLiteDatabase c()
  {
    if (j == null) {}
    synchronized (j)
    {
      j = d();
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */