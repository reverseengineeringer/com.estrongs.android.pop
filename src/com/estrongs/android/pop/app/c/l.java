package com.estrongs.android.pop.app.c;

import android.database.sqlite.SQLiteDatabase;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.a;
import com.estrongs.android.pop.ad;
import java.io.File;

public class l
{
  private static String a = a.b + "/";
  private static l b = null;
  private SQLiteDatabase c;
  
  public static l a()
  {
    if (b == null)
    {
      b = new l();
      if (!ad.a(FexApplication.a()).v()) {
        break label126;
      }
      if (!new File(a).exists()) {
        new File(a).mkdirs();
      }
    }
    for (;;)
    {
      try
      {
        bc = SQLiteDatabase.openOrCreateDatabase(a + "playlists.db", null);
        f();
        return b;
      }
      catch (Exception localException)
      {
        ad.a(FexApplication.a()).e(false);
        bc = FexApplication.a().openOrCreateDatabase("playlists.db", 0, null);
        continue;
      }
      label126:
      bc = FexApplication.a().openOrCreateDatabase("playlists.db", 0, null);
    }
  }
  
  public static void d()
  {
    if (b != null)
    {
      if (bc != null)
      {
        bc.close();
        bc = null;
      }
      b = null;
    }
  }
  
  public static String e()
  {
    if (ad.a(FexApplication.a()).v()) {
      return a + "playlists.db";
    }
    return FexApplication.a().getDatabasePath("playlists.db").getAbsolutePath();
  }
  
  private static void f()
  {
    bc.execSQL("CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL)");
    bc.execSQL("CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,title TEXT,album TEXT,artist TEXT,duration INTEGER)");
  }
  
  public SQLiteDatabase b()
  {
    return c;
  }
  
  public SQLiteDatabase c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */