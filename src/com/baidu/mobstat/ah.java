package com.baidu.mobstat;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;

class ah
  extends w
{
  public ah()
  {
    super("app_change", "Create table if not exists app_change(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);");
  }
  
  private ArrayList<v> a(Cursor paramCursor)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramCursor == null) {}
    for (;;)
    {
      return localArrayList;
      if (paramCursor.getCount() != 0)
      {
        int i = paramCursor.getColumnIndex("_id");
        int j = paramCursor.getColumnIndex("time");
        int k = paramCursor.getColumnIndex("content");
        while (paramCursor.moveToNext()) {
          localArrayList.add(new v(paramCursor.getLong(i), paramCursor.getString(j), paramCursor.getString(k)));
        }
      }
    }
  }
  
  public long a(String paramString1, String paramString2)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("time", paramString1);
    localContentValues.put("content", paramString2);
    return a(localContentValues);
  }
  
  public ArrayList<v> a(int paramInt1, int paramInt2)
  {
    Cursor localCursor = a("time", paramInt1, paramInt2);
    ArrayList localArrayList = a(localCursor);
    if (localCursor != null) {
      localCursor.close();
    }
    return localArrayList;
  }
  
  public boolean b(long paramLong)
  {
    return a(paramLong);
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */