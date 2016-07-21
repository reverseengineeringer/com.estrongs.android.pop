package com.estrongs.android.pop.app.unlock;

import android.content.Context;
import android.text.TextUtils;
import com.dianxinos.library.notify.c;
import com.estrongs.android.k.d;
import com.estrongs.android.k.f;
import com.estrongs.android.k.g;
import com.estrongs.android.k.h;
import com.estrongs.android.pop.app.messagebox.e;
import com.estrongs.android.util.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class m
{
  private static m a;
  private Context b;
  private List<Object> c;
  
  private m(Context paramContext)
  {
    b = paramContext;
    c = new ArrayList();
  }
  
  public static m a(Context paramContext)
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new m(paramContext);
      }
      return a;
    }
    finally {}
  }
  
  private void a(List<b> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      b localb = (b)paramList.next();
      d locald = h.a().a(c);
      if (locald == null)
      {
        l.c("lock_id need regist in application");
      }
      else
      {
        locald.a(d, false);
        locald.a(a, false);
        Object localObject = new f(new HashMap());
        ((f)localObject).a("data_id", b);
        ((f)localObject).a("card_icon", e);
        ((f)localObject).a("card_title", f);
        ((f)localObject).a("card_msg", g);
        ((f)localObject).a("card_result", h);
        ((f)localObject).a("card_button", i);
        ((f)localObject).a("dialog_icon", j);
        ((f)localObject).a("dialog_title", k);
        ((f)localObject).a("dialog_msg", l);
        locald.a((f)localObject, false);
        localObject = new g();
        a = m;
        locald.a((g)localObject);
      }
    }
  }
  
  private void a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {
      return;
    }
    paramJSONArray = b(paramJSONArray);
    try
    {
      a(paramJSONArray);
      return;
    }
    finally {}
  }
  
  private boolean a(String paramString)
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
  
  private List<b> b(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    for (;;)
    {
      if (i < paramJSONArray.length())
      {
        b localb = new b();
        try
        {
          JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
          c = localJSONObject.getString("lock_id");
          if (TextUtils.isEmpty(c)) {
            break label238;
          }
          a = localJSONObject.getLong("to");
          b = localJSONObject.getString("id");
          d = localJSONObject.getBoolean("lock_activated");
          e = localJSONObject.getString("card_icon");
          f = localJSONObject.getString("card_title");
          g = localJSONObject.getString("card_msg");
          h = localJSONObject.getString("card_result");
          i = localJSONObject.getString("card_button");
          j = localJSONObject.getString("dialog_icon");
          k = localJSONObject.getString("dialog_title");
          l = localJSONObject.getString("dialog_msg");
          if (localJSONObject.has("charging_unlock_dialog")) {
            m = localJSONObject.getBoolean("charging_unlock_dialog");
          }
          localArrayList.add(localb);
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
        }
      }
      return localArrayList;
      label238:
      i += 1;
    }
  }
  
  public void a()
  {
    c.a(com.estrongs.android.pop.app.messagebox.n.c, new n(this));
  }
  
  public void b()
  {
    String str = c.b(com.estrongs.android.pop.app.messagebox.n.c);
    if (!TextUtils.isEmpty(str)) {
      e.a().a(new p(this, str));
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.unlock.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */