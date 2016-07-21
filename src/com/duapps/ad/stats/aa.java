package com.duapps.ad.stats;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class aa
  extends SQLiteOpenHelper
{
  public aa(Context paramContext)
  {
    super(paramContext, "toolbox.db", null, 4);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS td_parse(_id INTEGER primary key autoincrement,_url TEXT,pkg TEXT,p_url TEXT,type INTEGER,ts INTEGER);");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */