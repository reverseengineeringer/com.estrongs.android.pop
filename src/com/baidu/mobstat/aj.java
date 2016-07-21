package com.baidu.mobstat;

import android.content.ContentValues;
import android.database.Cursor;
import java.util.ArrayList;

class aj
  extends w
{
  public aj()
  {
    super("app_trace2", "Create table if not exists app_trace2(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);");
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
    Object localObject = a("content", paramString2, "time", 1);
    ArrayList localArrayList = a((Cursor)localObject);
    if (localObject != null) {
      ((Cursor)localObject).close();
    }
    if (localArrayList.size() != 0) {
      return ((v)localArrayList.get(0)).a();
    }
    localObject = new ContentValues();
    ((ContentValues)localObject).put("time", paramString1);
    ((ContentValues)localObject).put("content", paramString2);
    return a((ContentValues)localObject);
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
 * Qualified Name:     com.baidu.mobstat.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */