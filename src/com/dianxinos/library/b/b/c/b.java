package com.dianxinos.library.b.b.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.dianxinos.library.b.c.e;

public class b
  extends SQLiteOpenHelper
{
  private String a;
  
  public b(Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
    a = paramString;
  }
  
  public void a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    String str1 = com.dianxinos.library.b.b.b.b.a(paramString + "t72f283666ae9a3482660515b0f9acebeaff91e04");
    String str2 = com.dianxinos.library.b.b.b.b.a(paramString + "te925705f61b25bfc077944de94029ec78ed12da0");
    paramSQLiteDatabase.execSQL("CREATE TABLE " + paramString + " (" + "_id" + " INTEGER PRIMARY KEY AUTOINCREMENT," + str1 + " TEXT UNIQUE, " + str2 + " BLOB);");
    paramSQLiteDatabase.execSQL("CREATE UNIQUE INDEX  " + paramString + "_index ON " + paramString + " (" + str1 + ");");
  }
  
  public void close()
  {
    e.a(getWritableDatabase());
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    String str1 = com.dianxinos.library.b.b.b.b.a(a + "tcfb3352c2df335696c6bc631932c6a61a4cdf318");
    String str2 = com.dianxinos.library.b.b.b.b.a(str1 + "t72f283666ae9a3482660515b0f9acebeaff91e04");
    String str3 = com.dianxinos.library.b.b.b.b.a(str1 + "te925705f61b25bfc077944de94029ec78ed12da0");
    paramSQLiteDatabase.execSQL("CREATE TABLE " + str1 + " (" + "_id" + " INTEGER PRIMARY KEY AUTOINCREMENT," + str2 + " TEXT UNIQUE, " + str3 + " BLOB);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.dianxinos.library.b.b.c.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */