package com.baidu.resultcard.common;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class PhotoDbHelper
  extends SQLiteOpenHelper
{
  public static final String DATABASE_NAME = "duresultcard_image.db";
  private static final int DATABASE_VERSION = 1;
  
  public PhotoDbHelper(Context paramContext)
  {
    super(paramContext, "duresultcard_image.db", null, 1);
  }
  
  private void deleteTable(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS imagelist");
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS imagelist(_id INTEGER primary key autoincrement,ts LONG,path TEXT);");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    deleteTable(paramSQLiteDatabase);
    onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoDbHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */