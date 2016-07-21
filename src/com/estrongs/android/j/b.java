package com.estrongs.android.j;

import android.content.Context;
import android.provider.Settings.System;
import com.dianxinos.dxservice.core.a;
import com.dianxinos.dxservice.core.e;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.ac;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class b
{
  private static b a = null;
  private static Map<String, String> b = new HashMap();
  private Context c = FexApplication.a();
  private a d;
  
  public b()
  {
    if (!e()) {
      return;
    }
    c();
    d = a.a(c);
    d.a();
  }
  
  public static b a()
  {
    if (a == null) {
      a = new b();
    }
    return a;
  }
  
  private void c()
  {
    b.put("feedback", "http://pasta.esfile.duapps.com/feedback");
    b.put("appInfo", "http://pasta.esfile.duapps.com/api/tokens");
    b.put("data", "http://pasta.esfile.duapps.com/api/data");
    b.put("token", "http://pasta.esfile.duapps.com/api/tokens");
    e.a(b);
    e.b("prod");
  }
  
  private void d()
  {
    if (d != null) {
      d.b();
    }
  }
  
  private boolean e()
  {
    if (ac.a() < 23) {
      return true;
    }
    try
    {
      boolean bool = Boolean.parseBoolean(Settings.System.class.getDeclaredMethod("canWrite", new Class[] { Context.class }).invoke(Settings.System.class, new Object[] { FexApplication.a() }).toString());
      return bool;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return true;
  }
  
  public void a(String paramString)
  {
    a("class", paramString);
    d();
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (d != null) {
      d.a(paramString1, paramString2, Integer.valueOf(1));
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    if (d != null) {
      d.a(paramString, 0, paramJSONObject);
    }
  }
  
  public void b()
  {
    if (d != null) {
      d.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */