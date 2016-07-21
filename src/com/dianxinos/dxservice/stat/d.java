package com.dianxinos.dxservice.stat;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.dianxinos.dxservice.a.c;

class d
  extends SQLiteOpenHelper
{
  private final String b = "stat.AppDBHelper";
  private final String c;
  private final String d;
  
  public d(b paramb, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 3);
    c = paramString;
    d = ("CREATE TABLE " + paramString + " (" + "a" + " INTEGER PRIMARY KEY AUTOINCREMENT, " + "b" + " TEXT, " + "c" + " TEXT, " + "d" + " TEXT, " + "e" + " TEXT, " + "f" + " TEXT, " + "g" + " TEXT, " + "h" + " TEXT, " + "i" + " TEXT, " + "j" + " INTEGER, " + "k" + " TEXT, " + "l" + " TEXT, " + "m" + " TEXT, " + "n" + " TEXT, " + "o" + " TEXT);");
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    if (c.d) {
      Log.i("stat.AppDBHelper", d);
    }
    paramSQLiteDatabase.execSQL(d);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (Log.isLoggable("stat.AppDBHelper", 4)) {
      Log.i("stat.AppDBHelper", "AppDatabase onUpgrade from " + paramInt1 + " to " + paramInt2 + ".");
    }
    paramSQLiteDatabase.execSQL("DROP TABLE if exists " + c);
    paramSQLiteDatabase.execSQL(d);
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.stat.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */