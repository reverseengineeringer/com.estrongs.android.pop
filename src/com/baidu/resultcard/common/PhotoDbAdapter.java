package com.baidu.resultcard.common;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.ConcurrentHashMap;

public class PhotoDbAdapter
{
  private static PhotoDbAdapter sInstance;
  private Context mContext;
  private PhotoDbHelper mHelper;
  
  private PhotoDbAdapter(Context paramContext)
  {
    mContext = paramContext;
    mHelper = new PhotoDbHelper(paramContext);
  }
  
  public static PhotoDbAdapter getInstance(Context paramContext)
  {
    if (sInstance == null) {}
    try
    {
      if (sInstance == null) {
        sInstance = new PhotoDbAdapter(paramContext);
      }
      return sInstance;
    }
    finally {}
  }
  
  public void delete(long paramLong)
  {
    try
    {
      mHelper.getWritableDatabase().delete("imagelist", "ts <= ?", new String[] { String.valueOf(paramLong) });
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void insert(long paramLong, String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = mHelper.getWritableDatabase();
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("ts", Long.valueOf(paramLong));
      localContentValues.put("path", paramString);
      localSQLiteDatabase.insert("imagelist", null, localContentValues);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public int query(long paramLong1, long paramLong2)
  {
    try
    {
      Cursor localCursor = mHelper.getReadableDatabase().rawQuery("SELECT count(*) FROM imagelist where ts >= " + paramLong1 + " and " + "ts" + " <= " + paramLong2, null);
      localCursor.moveToFirst();
      int i = localCursor.getInt(0);
      localCursor.close();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long query(ConcurrentHashMap<Long, Integer> paramConcurrentHashMap)
  {
    long l1;
    try
    {
      Cursor localCursor = mHelper.getWritableDatabase().rawQuery("SELECT * FROM imagelist ORDER BY ts DESC", null);
      int i = localCursor.getColumnIndex("ts");
      l1 = 0L;
      if (localCursor.moveToNext())
      {
        long l2 = localCursor.getLong(i);
        long l3 = l2 / 86400000L;
        if (paramConcurrentHashMap.containsKey(Long.valueOf(l3))) {
          paramConcurrentHashMap.put(Long.valueOf(l3), Integer.valueOf(((Integer)paramConcurrentHashMap.get(Long.valueOf(l3))).intValue() + 1));
        }
        for (;;)
        {
          l1 = Math.max(l1, l2);
          break;
          paramConcurrentHashMap.put(Long.valueOf(l3), Integer.valueOf(1));
        }
      }
      localCursor.close();
    }
    finally {}
    return l1;
  }
}

/* Location:
 * Qualified Name:     com.baidu.resultcard.common.PhotoDbAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */