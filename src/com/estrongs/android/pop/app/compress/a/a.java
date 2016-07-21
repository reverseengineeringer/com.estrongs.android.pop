package com.estrongs.android.pop.app.compress.a;

import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.pop.FexApplication;
import java.io.File;

public class a
{
  private static final String a = com.estrongs.android.pop.a.b + "/";
  private SQLiteDatabase b;
  private String c;
  
  private a()
  {
    if (!new File(a).exists()) {
      new File(a).mkdirs();
    }
    try
    {
      c = (a + "archive.db");
      b = SQLiteDatabase.openOrCreateDatabase(c, null);
      d();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        c = FexApplication.a().getDatabasePath("archive.db").getAbsolutePath();
        b = FexApplication.a().openOrCreateDatabase("archive.db", 0, null);
      }
    }
  }
  
  public static a a()
  {
    return c.a();
  }
  
  private void d()
  {
    b.execSQL("CREATE TABLE IF NOT EXISTS archive_lists (_id INTEGER PRIMARY KEY AUTOINCREMENT,archive_path TEXT NOT NULL UNIQUE,unzip_path TEXT NOT NULL,zip_status INTEGER DEFAULT 0 )");
  }
  
  public SQLiteDatabase b()
  {
    return b;
  }
  
  public SQLiteDatabase c()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.compress.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */