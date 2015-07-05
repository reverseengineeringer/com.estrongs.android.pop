package com.baidu.mobstat;

import android.content.Context;
import com.baidu.kirin.KirinConfig;
import org.json.JSONException;
import org.json.JSONObject;

public class h
{
  protected Context a;
  protected String b;
  protected String c;
  protected JSONObject d;
  protected JSONObject e;
  protected boolean f;
  private int g = -1;
  
  h(Context paramContext, String paramString)
  {
    a = paramContext;
    b = (KirinConfig.PREURL + paramString);
    n.a("PostUrl: " + b);
    d = new JSONObject();
    try
    {
      d.put("appkey", f.b(a));
      d.put("version_code", f.d(a));
      d.put("version_name", f.c(a));
      d.put("deviceid", f.h(paramContext));
      d.put("channel", f.a(paramContext));
      d.put("sdk_version", GetReverse.getCooperService(paramContext).getMTJSDKVersion());
      d.put("sdk_tag", "mtj");
      b();
      return;
    }
    catch (JSONException paramContext)
    {
      for (;;)
      {
        paramContext.printStackTrace();
      }
    }
  }
  
  public JSONObject a()
  {
    return d;
  }
  
  public void a(String paramString, Object paramObject)
  {
    try
    {
      d.put(paramString, paramObject);
      return;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  protected void b() {}
  
  public JSONObject c()
  {
    if (f.p(a)) {}
    for (;;)
    {
      try
      {
        n.a(c + " send Content is:" + d.toString());
        localObject = k.a(d.toString());
        localObject = p.a(b, (String)localObject);
        try
        {
          g = ((o)localObject).a();
          if (!((o)localObject).b())
          {
            n.c(c + " : " + ((o)localObject).c());
            f = false;
            if (!f) {
              continue;
            }
            e = ((o)localObject).d();
            e();
            return e;
          }
          if (g != 0) {
            continue;
          }
          n.a(c + " : " + ((o)localObject).c());
          f = true;
          continue;
          localException1.printStackTrace();
        }
        catch (Exception localException1) {}
      }
      catch (Exception localException2)
      {
        JSONObject localJSONObject;
        Object localObject = null;
        continue;
      }
      n.c("Fuck, " + c + " post Exception!");
      f = false;
      continue;
      n.c(c + "Backend return Code is not zeror, is : " + g);
      f = false;
      e = ((o)localObject).d();
      f();
      localJSONObject = e;
      return localJSONObject;
      f = false;
      n.a("network has sth wrong!");
      localObject = null;
    }
    f();
    return null;
  }
  
  public int d()
  {
    return g;
  }
  
  protected void e() {}
  
  protected void f() {}
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */