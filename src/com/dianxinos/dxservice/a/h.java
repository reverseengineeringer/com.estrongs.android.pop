package com.dianxinos.dxservice.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.dianxinos.DXStatService.stat.TokenManager;
import com.dianxinos.dxservice.stat.s;
import com.dianxinos.dxservice.stat.u;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

public final class h
{
  private static h e = null;
  private Context a;
  private String b = "";
  private boolean c = false;
  private Object d = new Object();
  private final Runnable f = new i(this);
  
  private h(Context paramContext)
  {
    a = paramContext.getApplicationContext();
    d();
  }
  
  public static h a(Context paramContext)
  {
    try
    {
      if (e == null) {
        e = new h(paramContext);
      }
      return e;
    }
    finally {}
  }
  
  private boolean a(String paramString)
  {
    if (c.c) {
      Log.d("stat.TokenUtils", "Enter reportToken()");
    }
    if (!c.a(a)) {
      return false;
    }
    String str;
    JSONObject localJSONObject;
    Object localObject1;
    try
    {
      str = c.a("token", a);
      localJSONObject = new JSONObject();
      localObject1 = g.a(a).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localJSONObject.put((String)((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
      }
      localObject1 = new ArrayList();
    }
    catch (Exception paramString)
    {
      if (c.e) {
        Log.e("stat.TokenUtils", "Can not report the token.", paramString);
      }
      return false;
    }
    ((List)localObject1).add(new BasicNameValuePair("token", paramString));
    paramString = u.a(a);
    Object localObject2 = s.a(u.a(), paramString);
    ((List)localObject1).add(new BasicNameValuePair("pu", paramString));
    ((List)localObject1).add(new BasicNameValuePair("ci", (String)localObject2));
    ((List)localObject1).add(new BasicNameValuePair("hw", s.a(localJSONObject.toString(), u.b())));
    boolean bool = new f(a, str, "DXCoreServiceToken", "stat.TokenUtils").a((List)localObject1);
    return bool;
  }
  
  private void d()
  {
    SharedPreferences localSharedPreferences = a.getSharedPreferences("utils", 1);
    c = localSharedPreferences.getBoolean("st", false);
    long l = localSharedPreferences.getLong("rt", -1L);
    if ((l == -1L) || (System.currentTimeMillis() - l > 1209600000L)) {
      c = false;
    }
    b = TokenManager.getToken(a);
    if (c.d) {
      Log.i("stat.TokenUtils", "Loaded token: " + b + ", status: " + c);
    }
  }
  
  private void e()
  {
    SharedPreferences.Editor localEditor = a.getSharedPreferences("utils", 1).edit();
    localEditor.putBoolean("st", c);
    localEditor.putLong("rt", System.currentTimeMillis());
    c.a(localEditor);
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    if ((b.length() != 0) && (!c)) {
      e.a(f);
    }
    return b;
  }
  
  public void c()
  {
    synchronized (d)
    {
      c = false;
      e();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.dxservice.a.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */