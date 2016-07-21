package com.estrongs.android.scanner.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;

public class h
  extends d
{
  public static String b = "insert into %s(pid, name, lastmodified, isLogPath, size, filetype, extension, groupname, pathtype, archive) values(?,?,?,?,?,?,?,?,?,?)";
  
  public h(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2, paramString3);
  }
  
  public ContentValues a()
  {
    ContentValues localContentValues = super.a();
    localContentValues.put("archive", Integer.valueOf(n()));
    return localContentValues;
  }
  
  public void a(SQLiteStatement paramSQLiteStatement)
  {
    super.a(paramSQLiteStatement);
    paramSQLiteStatement.bindLong(10, n());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */