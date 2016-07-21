package com.estrongs.android.pop.app.messagebox;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.dianxinos.library.notify.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class z
{
  private static volatile z a;
  private w b;
  private Context c;
  private final List<ah> d = new ArrayList();
  private ah e;
  private af f;
  private boolean g = false;
  
  private z(Context paramContext)
  {
    c = paramContext;
  }
  
  private ah a(JSONObject paramJSONObject, long paramLong, String paramString)
  {
    boolean bool = false;
    ah localah = new ah();
    a = paramJSONObject.getInt("msg_type");
    if (!b(a)) {
      throw new JSONException("not support type");
    }
    i = paramJSONObject.getInt("click_action");
    if (!c(i)) {
      throw new JSONException("not support action");
    }
    c = Long.valueOf(paramLong);
    k = paramString;
    d = paramJSONObject.getString("text");
    e = paramJSONObject.optString("icon_url");
    f = paramJSONObject.getString("click_params");
    g = 0;
    if (paramJSONObject.optInt("show_time") > 0) {
      bool = true;
    }
    j = bool;
    if (!paramJSONObject.isNull("guide_page_params")) {
      l = paramJSONObject.getJSONObject("guide_page_params").toString();
    }
    m = paramJSONObject.optString("hpmessage_icon");
    o = paramJSONObject.optString("hpmessage_button");
    n = paramJSONObject.optString("hpmessage_content");
    return localah;
  }
  
  public static z a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new z(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  private void a(ah paramah)
  {
    ag.a(c);
  }
  
  private boolean b(int paramInt)
  {
    return (paramInt >= 0) && (paramInt <= 4);
  }
  
  private boolean c(int paramInt)
  {
    return (paramInt >= 1) && (paramInt <= 2);
  }
  
  private void d()
  {
    try
    {
      if (b == null) {
        b = w.a(c);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      b = null;
    }
  }
  
  private void e()
  {
    d();
    if (b == null) {}
    while (g) {
      return;
    }
    List localList = b.a(0);
    d.addAll(localList);
    g = true;
    Log.e("MessageBoxRecommend", "get msg from db,count= " + localList.size());
  }
  
  private void f()
  {
    long l = System.currentTimeMillis();
    if (b == null) {}
    ah localah;
    do
    {
      return;
      Object localObject;
      while (!((Iterator)localObject).hasNext())
      {
        do
        {
          localObject = b.a(-1);
        } while ((localObject == null) || (((List)localObject).size() <= 0));
        localObject = ((List)localObject).iterator();
      }
      localah = (ah)((Iterator)localObject).next();
    } while ((TextUtils.isEmpty(o)) || (TextUtils.isEmpty(n)) || (TextUtils.isEmpty(m)) || (c.longValue() * 1000L <= l));
    e = localah;
  }
  
  public void a()
  {
    c.a(n.a, new aa(this));
    c.a(n.b, new ac(this));
  }
  
  public void a(int paramInt)
  {
    for (;;)
    {
      int i;
      synchronized (d)
      {
        i = d.size() - 1;
        if (i >= 0)
        {
          if (d.get(i)).a != paramInt) {
            break label86;
          }
          d.remove(i);
          break label86;
        }
        d();
        if (b == null) {
          return;
        }
      }
      b.a();
      return;
      label86:
      i -= 1;
    }
  }
  
  public void a(af paramaf)
  {
    f = paramaf;
  }
  
  protected void a(List<ah> paramList)
  {
    d();
    if (b == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        ah localah = (ah)paramList.next();
        b.a(c, localah);
      }
    }
  }
  
  protected void a(JSONArray arg1)
  {
    if (??? == null) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    List localList = b(???);
    synchronized (d)
    {
      e();
      d.addAll(localList);
      localArrayList.addAll(d);
      a(localList);
      f();
      if (f != null) {
        e.a().c(new ae(this));
      }
      return;
    }
  }
  
  public boolean a(String paramString)
  {
    boolean bool = false;
    try
    {
      paramString = new JSONObject(paramString).optJSONArray("datas");
      if (paramString != null)
      {
        a(paramString);
        bool = true;
      }
      return bool;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
    return false;
  }
  
  public ah b()
  {
    if (e == null) {}
    synchronized (d)
    {
      d();
      if (b != null) {
        f();
      }
      return e;
    }
  }
  
  protected List<ah> b(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      if (i < paramJSONArray.length()) {
        try
        {
          Object localObject = paramJSONArray.getJSONObject(i);
          long l = ((JSONObject)localObject).getLong("to");
          String str = ((JSONObject)localObject).getString("id");
          localObject = ((JSONObject)localObject).getJSONArray("contents");
          boolean bool = ao.a();
          int j = 0;
          while (j < 1)
          {
            ah localah = a(((JSONArray)localObject).getJSONObject(j), l, str);
            a(localah);
            localArrayList.add(localah);
            if ((bool) && (!TextUtils.isEmpty(e))) {
              ai.a(e);
            }
            j += 1;
          }
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          i += 1;
        }
      }
    }
    return localArrayList;
  }
  
  public void c()
  {
    e = null;
    f = null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */