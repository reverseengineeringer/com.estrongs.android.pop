package com.baidu.mobstat;

import android.content.Context;
import android.location.LocationManager;
import com.baidu.mobstat.util.c;
import java.io.IOException;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class i
  extends h
{
  private String g;
  private JSONObject h;
  private JSONObject i;
  private JSONObject j;
  private boolean k;
  
  public i(Context paramContext, String paramString)
  {
    super(paramContext, paramString);
    c = getClass().getName();
  }
  
  private JSONObject a(Context paramContext)
  {
    LocationManager localLocationManager = (LocationManager)paramContext.getSystemService("location");
    JSONObject localJSONObject = new JSONObject();
    for (;;)
    {
      try
      {
        localJSONObject.put("appkey", f.b(paramContext));
        localJSONObject.put("channel", f.a(a));
        localJSONObject.put("os_version", f.e(paramContext));
        localJSONObject.put("manufacturer", f.g(paramContext));
        localJSONObject.put("phone_type", f.j(paramContext));
        localJSONObject.put("deviceid", f.h(paramContext));
        localJSONObject.put("imei", f.l(paramContext));
        localJSONObject.put("resolution", f.n(paramContext));
        localJSONObject.put("platform", "android");
        localJSONObject.put("is_mobile_device", true);
        localJSONObject.put("language", Locale.getDefault().getLanguage());
        localJSONObject.put("modulename", GetReverse.getCooperService(paramContext).getPhoneModel());
        localJSONObject.put("wifimac", f.i(paramContext));
        if (localLocationManager != null) {
          continue;
        }
        bool = false;
        localJSONObject.put("havegps", bool);
        localJSONObject.put("os_sdk", f.f(paramContext));
        localJSONObject.put("tg", GetReverse.getCooperService(paramContext).getTagValue());
        localJSONObject.put("cuid", f.k(paramContext));
      }
      catch (Exception paramContext)
      {
        boolean bool;
        paramContext.printStackTrace();
        continue;
      }
      n.a("Satic Data : " + localJSONObject.toString());
      return localJSONObject;
      bool = true;
    }
  }
  
  private JSONObject b(Context paramContext)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("time", f.a());
      localJSONObject.put("version_name", f.c(paramContext));
      localJSONObject.put("version_code", f.d(paramContext));
      localJSONObject.put("network_type", f.m(paramContext));
      localJSONObject.put("latlongitude", f.a(paramContext, GetReverse.getCooperService(paramContext).checkGPSLocationSetting(paramContext)));
      n.a("Dyna Data : " + localJSONObject.toString());
      return localJSONObject;
    }
    catch (JSONException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  private boolean g()
  {
    g = ("kirin_static_data_" + a.getPackageName());
    i = l.a(a, g);
    if (i == null)
    {
      n.a("Static file is empty, need collect static data!");
      h = a(a);
    }
    do
    {
      return true;
      h = a(a);
    } while (!c.d(m.a(i.toString())).equals(c.d(m.a(h.toString()))));
    return false;
  }
  
  protected void b()
  {
    k = g();
    try
    {
      j = b(a);
      d = m.a(d, h);
      d = m.a(d, j);
      if (k)
      {
        n.a("send new static data!");
        d.put("isUpdateClientData", "1");
        return;
      }
      n.a("send cache static data!");
      d.put("isUpdateClientData", "0");
      return;
    }
    catch (Exception localException)
    {
      n.a("what's going on?? : " + localException.toString());
      localException.printStackTrace();
    }
  }
  
  protected void e()
  {
    n.a("isInfoChanged : " + k + "  dump static data after success!!");
    if (k) {}
    try
    {
      l.a(a, g, h);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        try
        {
          Object localObject = new JSONObject(e.getString("updateConfig"));
          g.a(a).a(true, (JSONObject)localObject);
          localObject = e.getString("logID");
          g.a(a).b((String)localObject);
          return;
        }
        catch (JSONException localJSONException)
        {
          localJSONException.printStackTrace();
          g.a(a).a(false, null);
          g.a(a).b("0");
        }
        localIOException = localIOException;
        n.c("Dump static file has exception!!");
        localIOException.printStackTrace();
      }
    }
  }
  
  protected void f()
  {
    if (f.p(a)) {
      g.a(a).a(false, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */