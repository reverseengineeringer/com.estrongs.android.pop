package com.estrongs.android.k;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import com.estrongs.android.pop.FexApplication;
import java.util.concurrent.atomic.AtomicInteger;

public class a
  extends SQLiteOpenHelper
{
  private static final String a = com.estrongs.android.pop.a.b;
  private static a d = new a();
  private SQLiteDatabase b;
  private AtomicInteger c = new AtomicInteger();
  
  private a()
  {
    this(FexApplication.a());
  }
  
  private a(Context paramContext)
  {
    this(paramContext, "lock.db", null, 1);
  }
  
  private a(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }
  
  public static a a()
  {
    return d;
  }
  
  private boolean a(c paramc)
  {
    boolean bool2 = true;
    if (paramc == null) {
      return true;
    }
    boolean bool1 = bool2;
    try
    {
      b.beginTransaction();
      bool1 = bool2;
      bool2 = paramc.a();
      if (bool2)
      {
        bool1 = bool2;
        b.setTransactionSuccessful();
      }
      try
      {
        b.endTransaction();
        return bool2;
      }
      catch (Exception paramc)
      {
        paramc.printStackTrace();
        return bool2;
      }
      try
      {
        b.endTransaction();
        throw paramc;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          localException.printStackTrace();
        }
      }
    }
    catch (Exception paramc)
    {
      paramc = paramc;
      paramc.printStackTrace();
      try
      {
        b.endTransaction();
        return bool1;
      }
      catch (Exception paramc)
      {
        paramc.printStackTrace();
        return bool1;
      }
    }
    finally {}
  }
  
  public Cursor a(String paramString1, String[] paramArrayOfString, String paramString2)
  {
    return b.query(true, paramString1, paramArrayOfString, paramString2, null, null, null, null, null);
  }
  
  public boolean a(d paramd)
  {
    if (paramd == null) {
      return true;
    }
    return a(new b(this, paramd));
  }
  
  public SQLiteDatabase b()
  {
    try
    {
      if (c.incrementAndGet() == 1) {
        b = d.getWritableDatabase();
      }
      SQLiteDatabase localSQLiteDatabase = b;
      return localSQLiteDatabase;
    }
    finally {}
  }
  
  public void close()
  {
    try
    {
      if (c.decrementAndGet() == 0) {
        b.close();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("create table lock (_id integer primary key, lockname text not null, locked int not null, lockstatus textpid text);");
    paramSQLiteDatabase.execSQL("CREATE UNIQUE INDEX lockname_index ON lock (lockname);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS lock");
    paramSQLiteDatabase.execSQL("DROP INDEX IF EXISTS lockname_index");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */