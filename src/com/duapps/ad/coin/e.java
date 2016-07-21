package com.duapps.ad.coin;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;

public class e
  extends SQLiteOpenHelper
{
  public e(Context paramContext)
  {
    super(paramContext, "integral.db", null, 4);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS record(_id INTEGER  primary key autoincrement,mid TEXT,type TEXT,ac TEXT,value INTEGER,time INTEGER);");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS items(_id INTEGER PRIMARY KEY,mid TEXT,type TEXT,value INTEGER,time INTEGER);");
  }
  
  public void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    onCreate(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if (l.a()) {
      l.c("IntegralRecordManager", String.format("upgrade db from %d to %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }));
    }
    if ((paramInt1 == 3) && (paramInt2 == 4))
    {
      Cursor localCursor = paramSQLiteDatabase.query(true, "record", new String[] { "ac" }, null, null, null, null, null, null);
      while (localCursor.moveToNext())
      {
        String str = localCursor.getString(0);
        if (str.contains("@")) {
          paramSQLiteDatabase.execSQL("UPDATE record SET ac='" + ap.a(str) + "' WHERE " + "ac" + "='" + str + "'");
        }
      }
      localCursor.close();
      return;
    }
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS record");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS items");
    onCreate(paramSQLiteDatabase);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */