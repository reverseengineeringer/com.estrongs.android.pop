package com.baidu.mobstat;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class ae
  extends SQLiteOpenHelper
{
  private String a;
  private SQLiteDatabase b;
  
  public ae(Context paramContext, String paramString)
  {
    super(paramContext, ".confd", null, 1);
    a = paramString;
  }
  
  public int a(String paramString, String[] paramArrayOfString)
  {
    return b.delete(a, paramString, paramArrayOfString);
  }
  
  public long a(String paramString, ContentValues paramContentValues)
  {
    return b.insert(a, paramString, paramContentValues);
  }
  
  public Cursor a(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return b.query(a, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramString3, paramString4, paramString5);
  }
  
  public void a(String paramString)
  {
    getWritableDatabase().execSQL(paramString);
  }
  
  public boolean a()
  {
    boolean bool1 = true;
    for (;;)
    {
      try
      {
        SQLiteDatabase localSQLiteDatabase = b;
        int i;
        if (localSQLiteDatabase == null)
        {
          i = 1;
          if (i == 0) {}
        }
        try
        {
          b = getWritableDatabase();
          if (b != null)
          {
            boolean bool2 = b.isOpen();
            if (bool2) {}
          }
          else
          {
            bool1 = false;
          }
          return bool1;
        }
        catch (NullPointerException localNullPointerException)
        {
          throw new NullPointerException("db path is null");
        }
        if (!b.isOpen()) {
          i = 1;
        } else {
          i = 0;
        }
      }
      finally {}
    }
  }
  
  public final int b()
  {
    Object localObject1 = null;
    int j = 0;
    try
    {
      Cursor localCursor = b.rawQuery("SELECT COUNT(*) FROM " + a, null);
      if (localCursor != null)
      {
        localObject1 = localCursor;
        if (localCursor.moveToNext())
        {
          localObject1 = localCursor;
          i = localCursor.getInt(0);
          j = i;
          if (localCursor != null)
          {
            localCursor.close();
            j = i;
          }
        }
      }
      while (localCursor == null)
      {
        int i;
        return j;
      }
      localCursor.close();
      return 0;
    }
    finally
    {
      if (localObject1 != null) {
        ((Cursor)localObject1).close();
      }
    }
  }
  
  public void close()
  {
    try
    {
      super.close();
      if (b != null)
      {
        b.close();
        b = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public SQLiteDatabase getReadableDatabase()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = super.getReadableDatabase();
      return localSQLiteDatabase;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
      return localSQLiteDatabase;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    b = paramSQLiteDatabase;
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */