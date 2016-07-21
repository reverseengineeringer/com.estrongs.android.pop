package com.estrongs.android.scanner.a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteStatement;

public abstract class c
{
  private long a;
  private String b;
  private final String c;
  private long d;
  private boolean e;
  private int f;
  
  public c(long paramLong1, String paramString1, String paramString2, long paramLong2)
  {
    b = paramString1;
    c = paramString2;
    d = paramLong2;
    a = paramLong1;
    f = 0;
  }
  
  public c(String paramString1, String paramString2)
  {
    this(-1L, paramString1, paramString2, 0L);
  }
  
  public c(String paramString1, String paramString2, long paramLong)
  {
    this(-1L, paramString1, paramString2, paramLong);
  }
  
  public ContentValues a()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("name", c);
    localContentValues.put("lastmodified", Long.valueOf(d));
    if (e) {}
    for (int i = 1;; i = 0)
    {
      localContentValues.put("isLogPath", Integer.valueOf(i));
      localContentValues.put("pathtype", Integer.valueOf(f));
      return localContentValues;
    }
  }
  
  public void a(int paramInt)
  {
    f = paramInt;
  }
  
  public void a(long paramLong)
  {
    a = paramLong;
  }
  
  public abstract void a(SQLiteStatement paramSQLiteStatement);
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (paramBoolean1) {
      if (paramBoolean2) {
        a(101);
      }
    }
    while (!paramBoolean2)
    {
      return;
      a(3);
      return;
    }
    a(1);
  }
  
  public ContentValues b()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("lastmodified", Long.valueOf(d));
    return localContentValues;
  }
  
  public void b(long paramLong)
  {
    d = paramLong;
  }
  
  public long c()
  {
    return a;
  }
  
  public String d()
  {
    return b;
  }
  
  public String e()
  {
    return c;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
    } while (!(paramObject instanceof c));
    return ((c)paramObject).d().equals(b);
  }
  
  public long f()
  {
    return d;
  }
  
  public boolean g()
  {
    return e;
  }
  
  public int h()
  {
    return f;
  }
  
  public int hashCode()
  {
    return b.hashCode();
  }
  
  public String toString()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.scanner.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */