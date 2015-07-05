package com.estrongs.android.pop.app.a;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.net.Uri;
import android.provider.MediaStore.Audio.Media;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.util.am;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class al
{
  public long a = -1L;
  private String b;
  private int c = -1;
  private List<ak> d = null;
  private boolean e = true;
  
  public al(int paramInt)
  {
    c = paramInt;
    d = new ArrayList();
  }
  
  public al(long paramLong, String paramString)
  {
    a = paramLong;
    b = paramString;
  }
  
  public al(String paramString)
  {
    b = paramString;
    d = new ArrayList();
  }
  
  /* Error */
  private long a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: lload_1
    //   1: lload_3
    //   2: lcmp
    //   3: ifne +5 -> 8
    //   6: lconst_0
    //   7: lreturn
    //   8: invokestatic 44	com/estrongs/android/pop/app/a/an:a	()Lcom/estrongs/android/pop/app/a/an;
    //   11: invokevirtual 47	com/estrongs/android/pop/app/a/an:c	()Landroid/database/sqlite/SQLiteDatabase;
    //   14: astore 7
    //   16: aload_0
    //   17: getfield 24	com/estrongs/android/pop/app/a/al:a	J
    //   20: lstore 5
    //   22: aload 7
    //   24: invokevirtual 52	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   27: aload 7
    //   29: new 54	java/lang/StringBuilder
    //   32: dup
    //   33: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   36: ldc 57
    //   38: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: lload_1
    //   42: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   45: ldc 66
    //   47: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: lload 5
    //   52: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   55: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokevirtual 73	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   61: lload_1
    //   62: lload_3
    //   63: lcmp
    //   64: ifge +98 -> 162
    //   67: aload 7
    //   69: new 54	java/lang/StringBuilder
    //   72: dup
    //   73: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   76: ldc 75
    //   78: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: lload_3
    //   82: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   85: ldc 77
    //   87: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: lload_1
    //   91: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   94: ldc 66
    //   96: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: lload 5
    //   101: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   104: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokevirtual 73	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   110: lload_3
    //   111: lload_1
    //   112: lsub
    //   113: lconst_1
    //   114: ladd
    //   115: lstore_1
    //   116: aload 7
    //   118: new 54	java/lang/StringBuilder
    //   121: dup
    //   122: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   125: ldc 79
    //   127: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: lload_3
    //   131: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   134: ldc 81
    //   136: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: lload 5
    //   141: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   144: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokevirtual 73	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   150: aload 7
    //   152: invokevirtual 84	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   155: aload 7
    //   157: invokevirtual 87	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   160: lload_1
    //   161: lreturn
    //   162: aload 7
    //   164: new 54	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 55	java/lang/StringBuilder:<init>	()V
    //   171: ldc 89
    //   173: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: lload_3
    //   177: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   180: ldc 91
    //   182: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: lload_1
    //   186: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   189: ldc 66
    //   191: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: lload 5
    //   196: invokevirtual 64	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   199: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokevirtual 73	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   205: lload_1
    //   206: lload_3
    //   207: lsub
    //   208: lconst_1
    //   209: ladd
    //   210: lstore_1
    //   211: goto -95 -> 116
    //   214: astore 8
    //   216: aload 7
    //   218: invokevirtual 87	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   221: aload 8
    //   223: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	224	0	this	al
    //   0	224	1	paramLong1	long
    //   0	224	3	paramLong2	long
    //   20	175	5	l	long
    //   14	203	7	localSQLiteDatabase	SQLiteDatabase
    //   214	8	8	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   27	61	214	finally
    //   67	110	214	finally
    //   116	155	214	finally
    //   162	205	214	finally
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(ak paramak)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramak);
    a(localArrayList);
  }
  
  public void a(ak paramak, long paramLong)
  {
    long l2 = d.get((int)paramLong)).d;
    if (a != -1L) {
      a(d, l2);
    }
    long l3 = d.indexOf(paramak);
    if (l3 == paramLong) {
      return;
    }
    ak localak;
    if (l3 < paramLong) {
      for (l1 = l3 + 1L; l1 <= paramLong; l1 += 1L)
      {
        localak = (ak)d.get((int)l1);
        d -= 1L;
      }
    }
    for (long l1 = paramLong; l1 < l3; l1 += 1L)
    {
      localak = (ak)d.get((int)l1);
      d += 1L;
    }
    d = l2;
    d.remove((int)l3);
    d.add((int)paramLong, paramak);
  }
  
  public void a(String paramString)
  {
    b = paramString;
  }
  
  public void a(List<ak> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < paramList.size())
    {
      if (geta != -1L) {
        localArrayList.add(paramList.get(i));
      }
      i += 1;
    }
    SQLiteDatabase localSQLiteDatabase;
    if (localArrayList.size() > 0) {
      localSQLiteDatabase = an.a().c();
    }
    for (;;)
    {
      Object localObject;
      try
      {
        localSQLiteDatabase.beginTransaction();
        i = 0;
        if (i < localArrayList.size())
        {
          localObject = new String[2];
          localObject[0] = "";
          localObject[1] = "";
          localObject[0] = ("" + a);
          localObject[1] = ("" + getd);
          localSQLiteDatabase.execSQL("UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?", (Object[])localObject);
          j = d.indexOf(localArrayList.get(i)) + 1;
          if (j >= d.size()) {
            break label486;
          }
          localObject = (ak)d.get(j);
          d -= 1L;
          j += 1;
          continue;
        }
        long l;
        if (localArrayList.size() % 500 == 0)
        {
          i = localArrayList.size() / 500;
          break label493;
          if (j >= i) {
            break label464;
          }
          localObject = new StringBuffer();
          if (j < i - 1)
          {
            k = 500;
            break label498;
            if (m >= k) {
              break label420;
            }
            l = get500a;
            if (m != 0) {
              continue;
            }
            ((StringBuffer)localObject).append(l);
            break label504;
          }
        }
        else
        {
          i = localArrayList.size() / 500 + 1;
          break label493;
        }
        int k = localArrayList.size() - (i - 1) * 500;
        break label498;
        ((StringBuffer)localObject).append(",").append(l);
      }
      finally
      {
        localSQLiteDatabase.endTransaction();
      }
      label420:
      localSQLiteDatabase.delete("audio_playlists_map", "_id IN (" + ((StringBuffer)localObject).toString() + ")", null);
      j += 1;
      continue;
      label464:
      localSQLiteDatabase.setTransactionSuccessful();
      localSQLiteDatabase.endTransaction();
      d.removeAll(paramList);
      return;
      label486:
      i += 1;
      continue;
      label493:
      int j = 0;
      continue;
      label498:
      int m = 0;
      continue;
      label504:
      m += 1;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    e = paramBoolean;
  }
  
  public int b()
  {
    return c;
  }
  
  public void b(String paramString)
  {
    String str = paramString;
    if (am.bl(paramString)) {
      str = am.bE(paramString);
    }
    paramString = new ak(str, c().size());
    c = a;
    c().add(paramString);
    if (a != -1L) {
      paramString.b();
    }
  }
  
  public List<ak> c()
  {
    if (d != null) {
      return d;
    }
    d = new ArrayList();
    Object localObject4 = an.a().b().query("audio_playlists_map", null, "playlist_id=" + a, null, null, null, "play_order");
    HashMap localHashMap;
    String str;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    long l1;
    label301:
    int i;
    int j;
    if (localObject4 != null)
    {
      localHashMap = null;
      while (((Cursor)localObject4).moveToNext())
      {
        long l2 = ((Cursor)localObject4).getLong(((Cursor)localObject4).getColumnIndex("_id"));
        str = ((Cursor)localObject4).getString(((Cursor)localObject4).getColumnIndex("_data"));
        long l3 = ((Cursor)localObject4).getLong(((Cursor)localObject4).getColumnIndex("play_order"));
        localObject1 = null;
        localObject2 = null;
        localObject3 = null;
        l1 = -1L;
        if (am.bb(str))
        {
          localObject1 = ((Cursor)localObject4).getString(((Cursor)localObject4).getColumnIndex("title"));
          localObject2 = ((Cursor)localObject4).getString(((Cursor)localObject4).getColumnIndex("album"));
          localObject3 = ((Cursor)localObject4).getString(((Cursor)localObject4).getColumnIndex("artist"));
          l1 = ((Cursor)localObject4).getLong(((Cursor)localObject4).getColumnIndex("duration"));
        }
        localObject1 = new ak(l2, str, l2, l3, (String)localObject1, (String)localObject2, (String)localObject3, l1);
        d.add(localObject1);
        if (!am.ba(str)) {
          break label753;
        }
        if (localHashMap != null) {
          break label750;
        }
        localHashMap = new HashMap();
        localHashMap.put(str, localObject1);
      }
      ((Cursor)localObject4).close();
      if (localHashMap != null)
      {
        localObject1 = new ArrayList(localHashMap.keySet());
        if (((List)localObject1).size() % 500 == 0)
        {
          i = ((List)localObject1).size() / 500;
          j = 0;
        }
      }
    }
    label385:
    label388:
    label475:
    label494:
    label750:
    label753:
    label758:
    for (;;)
    {
      if (j < i)
      {
        localObject2 = new StringBuffer();
        int k;
        int m;
        if (j < i - 1)
        {
          k = 500;
          m = 0;
          if (m >= k) {
            break label494;
          }
          localObject3 = (String)((List)localObject1).get(j * 500 + m);
          if (m != 0) {
            break label475;
          }
          ((StringBuffer)localObject2).append(DatabaseUtils.sqlEscapeString((String)localObject3));
        }
        for (;;)
        {
          m += 1;
          break label388;
          i = ((List)localObject1).size() / 500 + 1;
          break;
          k = ((List)localObject1).size() - (i - 1) * 500;
          break label385;
          ((StringBuffer)localObject2).append(",").append(DatabaseUtils.sqlEscapeString((String)localObject3));
        }
      }
      try
      {
        localObject3 = FexApplication.a().getContentResolver();
        localObject4 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
        localObject2 = "_data IN (" + ((StringBuffer)localObject2).toString() + ")";
        localObject2 = ((ContentResolver)localObject3).query((Uri)localObject4, new String[] { "_data", "title", "album", "artist", "duration" }, (String)localObject2, null, null);
        if (localObject2 == null) {
          break label758;
        }
        while (((Cursor)localObject2).moveToNext())
        {
          Object localObject5 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("_data"));
          localObject3 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("title"));
          localObject4 = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("album"));
          str = ((Cursor)localObject2).getString(((Cursor)localObject2).getColumnIndex("artist"));
          l1 = ((Cursor)localObject2).getLong(((Cursor)localObject2).getColumnIndex("duration"));
          localObject5 = (ak)localHashMap.get(localObject5);
          if (localObject5 != null)
          {
            e = ((String)localObject3);
            f = ((String)localObject4);
            g = str;
            h = l1;
          }
        }
        ((Cursor)localObject2).close();
      }
      catch (Exception localException)
      {
        j += 1;
      }
      return d;
      break;
      break label301;
    }
  }
  
  public void c(String paramString)
  {
    b = paramString;
    if (a != -1L)
    {
      paramString = an.a().c();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("name", b);
      paramString.update("audio_playlists", localContentValues, "_id=" + a, null);
    }
  }
  
  public void d()
  {
    d.clear();
    SQLiteDatabase localSQLiteDatabase;
    if (a != -1L) {
      localSQLiteDatabase = an.a().c();
    }
    try
    {
      localSQLiteDatabase.beginTransaction();
      localSQLiteDatabase.delete("audio_playlists_map", "playlist_id=" + a, null);
      localSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }
  
  public void e()
  {
    int k = 1;
    if (a != -1L) {}
    label430:
    label560:
    label565:
    for (;;)
    {
      return;
      Object localObject1;
      Object localObject2;
      if (a == -1L)
      {
        localObject1 = an.a().c();
        localObject2 = new ContentValues();
        ((ContentValues)localObject2).put("name", b);
        a = ((SQLiteDatabase)localObject1).insert("audio_playlists", null, (ContentValues)localObject2);
      }
      for (int i = 1;; i = 0)
      {
        if (d == null) {
          break label565;
        }
        for (;;)
        {
          try
          {
            localObject1 = an.a().c();
            localObject2 = ((SQLiteDatabase)localObject1).compileStatement("INSERT into audio_playlists_map (_data,playlist_id,play_order,title,album,artist,duration) values(?,?,?,?,?,?,?)");
            ((SQLiteDatabase)localObject1).beginTransaction();
            j = 0;
          }
          catch (Exception localException1)
          {
            int j;
            localException1.printStackTrace();
            return;
          }
          try
          {
            if (j < d.size())
            {
              if (i != 0) {
                d.get(j)).c = a;
              }
              ((SQLiteStatement)localObject2).bindString(1, d.get(j)).b);
              ((SQLiteStatement)localObject2).bindLong(2, d.get(j)).c);
              ((SQLiteStatement)localObject2).bindLong(3, d.get(j)).d);
              if (d.get(j)).e != null) {
                ((SQLiteStatement)localObject2).bindString(4, d.get(j)).e);
              }
              if (d.get(j)).f != null) {
                ((SQLiteStatement)localObject2).bindString(5, d.get(j)).f);
              }
              if (d.get(j)).g != null) {
                ((SQLiteStatement)localObject2).bindString(6, d.get(j)).g);
              }
              if (0L <= d.get(j)).h) {
                ((SQLiteStatement)localObject2).bindLong(7, d.get(j)).h);
              }
              ((SQLiteStatement)localObject2).execute();
              j += 1;
            }
            else
            {
              ((SQLiteDatabase)localObject1).setTransactionSuccessful();
              ((SQLiteDatabase)localObject1).endTransaction();
              i = k;
            }
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
            localException1.endTransaction();
            i = 0;
          }
          finally
          {
            localException1.endTransaction();
          }
        }
        if (i == 0) {
          break;
        }
        localObject1 = ((SQLiteDatabase)localObject1).query("audio_playlists_map", new String[] { "_id", "_data" }, null, null, null, null, null);
        for (;;)
        {
          long l;
          if (((Cursor)localObject1).moveToNext())
          {
            l = ((Cursor)localObject1).getLong(0);
            localObject2 = ((Cursor)localObject1).getString(1);
            i = 0;
          }
          for (;;)
          {
            if (i >= d.size()) {
              break label560;
            }
            if (d.get(i)).b.equals(localObject2))
            {
              d.get(i)).a = l;
              break label430;
              break;
            }
            i += 1;
          }
        }
      }
    }
  }
  
  public boolean f()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.a.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */