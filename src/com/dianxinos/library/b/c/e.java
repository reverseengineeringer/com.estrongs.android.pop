package com.dianxinos.library.b.c;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;

public class e
{
  public static void a(Cursor paramCursor)
  {
    if (paramCursor != null) {}
    try
    {
      paramCursor.close();
      return;
    }
    catch (Throwable paramCursor)
    {
      paramCursor.printStackTrace();
    }
  }
  
  public static void a(SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramSQLiteDatabase != null) {}
    try
    {
      paramSQLiteDatabase.close();
      return;
    }
    catch (Throwable paramSQLiteDatabase)
    {
      paramSQLiteDatabase.printStackTrace();
    }
  }
  
  public static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null) {
      try
      {
        if ((paramCloseable instanceof Cursor))
        {
          ((Cursor)paramCloseable).close();
          return;
        }
        paramCloseable.close();
        return;
      }
      catch (Throwable paramCloseable)
      {
        paramCloseable.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.c.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */