package com.estrongs.android.pop.app.messagebox;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class w
{
  private static w b;
  private final SQLiteDatabase a;
  
  private w(Context paramContext)
  {
    a = new x(this, paramContext).getWritableDatabase();
  }
  
  public static w a(Context paramContext)
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new w(paramContext.getApplicationContext());
      }
      return b;
    }
    finally {}
  }
  
  public int a(ah arg1)
  {
    int i = b;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("msg_deadline", c);
    localContentValues.put("msg_text", d);
    localContentValues.put("icon_url", e);
    localContentValues.put("click_action", Integer.valueOf(i));
    localContentValues.put("click_params", f);
    localContentValues.put("guide_page", l);
    localContentValues.put("msg_status", Integer.valueOf(g));
    localContentValues.put("msg_type", Integer.valueOf(a));
    synchronized (a)
    {
      i = a.update("messages_list", localContentValues, "_id=?", new String[] { String.valueOf(i) });
      return i;
    }
  }
  
  public List<ah> a(int paramInt)
  {
    Object localObject4 = null;
    ArrayList localArrayList = new ArrayList();
    Object localObject1;
    if (paramInt != -1)
    {
      localObject1 = "msg_status= ?";
      localObject4 = new String[1];
      localObject4[0] = String.valueOf(paramInt);
    }
    for (;;)
    {
      synchronized (a)
      {
        localObject1 = a.query("messages_list", new String[] { "_id", "msg_deadline", "msg_text", "icon_url", "click_action", "click_params", "guide_page", "msg_status", "msg_type", "msg_recommend_id", "msg_time", "del", "hpmessage_icon", "hpmessage_content", "hpmessage_button", "st" }, (String)localObject1, (String[])localObject4, null, null, "msg_time desc");
        if (!((Cursor)localObject1).moveToNext()) {
          break label409;
        }
        if (((Cursor)localObject1).getShort(11) == 444) {
          continue;
        }
        localObject4 = new ah();
        b = ((Cursor)localObject1).getInt(0);
        c = Long.valueOf(((Cursor)localObject1).getLong(1));
        d = ((Cursor)localObject1).getString(2);
        e = ((Cursor)localObject1).getString(3);
        i = ((Cursor)localObject1).getInt(4);
        f = ((Cursor)localObject1).getString(5);
        l = ((Cursor)localObject1).getString(6);
        g = ((Cursor)localObject1).getInt(7);
        a = ((Cursor)localObject1).getInt(8);
        k = ((Cursor)localObject1).getString(9);
        h = ((Cursor)localObject1).getLong(10);
        m = ((Cursor)localObject1).getString(12);
        n = ((Cursor)localObject1).getString(13);
        o = ((Cursor)localObject1).getString(14);
        if (((Cursor)localObject1).getShort(15) > 0)
        {
          bool = true;
          j = bool;
          localArrayList.add(localObject4);
        }
      }
      boolean bool = false;
      continue;
      label409:
      ((Cursor)localObject2).close();
      return localArrayList;
      Object localObject3 = null;
    }
  }
  
  public void a()
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("msg_status", Integer.valueOf(1));
    synchronized (a)
    {
      a.update("messages_list", localContentValues, "msg_status=?", new String[] { String.valueOf(0) });
      return;
    }
  }
  
  public void a(Context paramContext, ah arg2)
  {
    paramContext = new ContentValues();
    paramContext.put("msg_deadline", c);
    paramContext.put("msg_text", d);
    paramContext.put("icon_url", e);
    paramContext.put("click_action", Integer.valueOf(i));
    paramContext.put("click_params", f);
    paramContext.put("guide_page", l);
    paramContext.put("msg_status", Integer.valueOf(g));
    paramContext.put("msg_type", Integer.valueOf(a));
    paramContext.put("msg_recommend_id", k);
    paramContext.put("msg_time", Long.valueOf(System.currentTimeMillis()));
    paramContext.put("st", Boolean.valueOf(j));
    paramContext.put("hpmessage_icon", m);
    paramContext.put("hpmessage_content", n);
    paramContext.put("hpmessage_button", o);
    synchronized (a)
    {
      long l = a.insert("messages_list", null, paramContext);
      if (l > 0L) {}
    }
  }
  
  public void b(ah arg1)
  {
    int i = b;
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("del", Integer.valueOf(444));
    synchronized (a)
    {
      a.update("messages_list", localContentValues, "_id=?", new String[] { String.valueOf(i) });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */