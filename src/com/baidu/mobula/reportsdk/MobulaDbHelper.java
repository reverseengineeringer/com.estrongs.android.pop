package com.baidu.mobula.reportsdk;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class MobulaDbHelper
  extends SQLiteOpenHelper
{
  public static final String DATABASE_NAME = "duscene_mobula.db";
  private static final int DATABASE_VERSION = 2;
  
  public MobulaDbHelper(Context paramContext)
  {
    super(paramContext, "duscene_mobula.db", null, 2);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS srecord(_id INTEGER primary key autoincrement,ts INTEGER,ls TEXT,child TEXT,stype TEXT,content BLOB);");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaDbHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */