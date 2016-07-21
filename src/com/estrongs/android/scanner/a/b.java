package com.estrongs.android.scanner.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;

public class b
  extends c
{
  public static String a = "insert into %s(_id, path, name, lastmodified, isLogPath, pathtype) values(?,?,?,?,?,?)";
  
  public b(String paramString1, String paramString2, long paramLong)
  {
    super(paramString1, paramString2, paramLong);
    a(paramString1);
  }
  
  public b(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    super(paramLong1, paramString1, paramString2, paramLong2);
  }
  
  public ContentValues a()
  {
    ContentValues localContentValues = super.a();
    localContentValues.put("_id", Long.valueOf(c()));
    localContentValues.put("path", d());
    return localContentValues;
  }
  
  public void a(SQLiteStatement paramSQLiteStatement)
  {
    paramSQLiteStatement.bindLong(1, c());
    paramSQLiteStatement.bindString(2, d());
    paramSQLiteStatement.bindString(3, e());
    paramSQLiteStatement.bindLong(4, f());
    if (g()) {}
    for (long l = 1L;; l = 0L)
    {
      paramSQLiteStatement.bindLong(5, l);
      paramSQLiteStatement.bindLong(6, h());
      return;
    }
  }
  
  public String toString()
  {
    return "DirEntity{, path='" + d() + '\'' + ", name='" + e() + '\'' + ", lastModified=" + f() + ", isLogPath=" + g() + '}';
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */