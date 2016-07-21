package com.estrongs.android.pop.app.messagebox;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class x
  extends SQLiteOpenHelper
{
  public x(w paramw, Context paramContext)
  {
    super(paramContext, "message_box_list.db", null, 2);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS messages_list (_id INTEGER PRIMARY KEY AUTOINCREMENT,msg_deadline INTEGER,msg_text TEXT,icon_url TEXT,click_action INTEGER,click_params TEXT,guide_page TEXT,msg_status INTEGER,msg_type INTEGER,msg_recommend_id TEXT,msg_time INTEGER,del INTEGER,hpmessage_icon TEXT,hpmessage_content TEXT,hpmessage_button TEXT,st INTEGER,UNIQUE (msg_recommend_id) ON CONFLICT IGNORE);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2))
    {
      paramSQLiteDatabase.execSQL("ALTER TABLE messages_list ADD COLUMN del INTEGER;");
      paramSQLiteDatabase.execSQL("ALTER TABLE messages_list ADD COLUMN st INTEGER;");
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */