package com.estrongs.android.scanner.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;

public class d
  extends c
{
  public static String a = "insert into %s(pid, name, lastmodified, isLogPath, size, filetype, extension, groupname, pathtype) values(?,?,?,?,?,?,?,?,?)";
  private long b;
  private long c;
  private String d;
  private String e;
  private long f;
  private int g;
  private int h;
  private int i;
  private int j = 0;
  
  public d(long paramLong1, String paramString1, String paramString2, long paramLong2, long paramLong3)
  {
    super(paramLong1, paramString1, paramString2, paramLong2);
    f = paramLong3;
  }
  
  public d(String paramString1, String paramString2, long paramLong1, long paramLong2)
  {
    this(-1L, paramString1, paramString2, paramLong1, paramLong2);
  }
  
  public d(String paramString1, String paramString2, String paramString3)
  {
    super(paramString1, paramString2);
    f = 0L;
    e = paramString3;
  }
  
  public ContentValues a()
  {
    ContentValues localContentValues = super.a();
    localContentValues.put("pid", Long.valueOf(b));
    localContentValues.put("size", Long.valueOf(f));
    localContentValues.put("filetype", Integer.valueOf(g));
    localContentValues.put("extension", e);
    localContentValues.put("groupname", l());
    return localContentValues;
  }
  
  public void a(SQLiteStatement paramSQLiteStatement)
  {
    paramSQLiteStatement.bindLong(1, b);
    paramSQLiteStatement.bindString(2, e());
    paramSQLiteStatement.bindLong(3, f());
    long l;
    if (g())
    {
      l = 1L;
      paramSQLiteStatement.bindLong(4, l);
      paramSQLiteStatement.bindLong(5, f);
      paramSQLiteStatement.bindLong(6, g);
      if (e != null) {
        break label105;
      }
      paramSQLiteStatement.bindNull(7);
      label75:
      if (l() != null) {
        break label118;
      }
      paramSQLiteStatement.bindNull(8);
    }
    for (;;)
    {
      paramSQLiteStatement.bindLong(9, h());
      return;
      l = 0L;
      break;
      label105:
      paramSQLiteStatement.bindString(7, e);
      break label75;
      label118:
      paramSQLiteStatement.bindString(8, l());
    }
  }
  
  public ContentValues b()
  {
    ContentValues localContentValues = super.b();
    localContentValues.put("size", Long.valueOf(f));
    localContentValues.put("lastmodified", Long.valueOf(f()));
    return localContentValues;
  }
  
  public void b(int paramInt)
  {
    i = paramInt;
  }
  
  public void b(String paramString)
  {
    d = paramString;
  }
  
  public void c(int paramInt)
  {
    h = paramInt;
  }
  
  public void c(long paramLong)
  {
    b = paramLong;
  }
  
  public void d(int paramInt)
  {
    g = paramInt;
  }
  
  public void d(long paramLong)
  {
    f = paramLong;
  }
  
  public void e(int paramInt)
  {
    j = paramInt;
  }
  
  public void e(long paramLong)
  {
    c = paramLong;
  }
  
  public long i()
  {
    return b;
  }
  
  public long j()
  {
    return f;
  }
  
  public int k()
  {
    return i;
  }
  
  public String l()
  {
    return d;
  }
  
  public long m()
  {
    return c;
  }
  
  public int n()
  {
    return j;
  }
  
  public String toString()
  {
    return "FileEntity{path='" + d() + '\'' + ", name='" + e() + '\'' + ", lastModified=" + f() + ", isLogPath=" + g() + ", size=" + f + ", type=" + g + ", category=" + i + ", groupName='" + d + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */