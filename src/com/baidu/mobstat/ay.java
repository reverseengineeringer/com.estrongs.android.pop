package com.baidu.mobstat;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ay
{
  public static final ay a = new ay();
  
  private void a(JSONObject paramJSONObject)
  {
    paramJSONObject = new bc(paramJSONObject);
    ba.c = a;
    ba.d = b;
    ba.e = c;
  }
  
  private boolean a()
  {
    if (!x.a.b()) {}
    while ((!x.b.b()) || (!x.c.b()) || (!x.d.b()) || (!x.e.b())) {
      return true;
    }
    return false;
  }
  
  private void b(Context paramContext, JSONObject paramJSONObject)
  {
    int i = 0;
    JSONObject localJSONObject = new JSONObject();
    int j;
    Object localObject;
    try
    {
      localJSONObject.put("he", paramJSONObject);
      j = paramJSONObject.toString().length();
      i = 0 + j;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        try
        {
          localJSONObject.put("app_mem", localObject);
          j = ((JSONArray)localObject).toString().length();
          j = i + j;
          bb.a("APP_APK");
          localObject = x.e.a(20480);
          paramJSONObject = new JSONArray();
          localObject = ((List)localObject).iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          str = (String)((Iterator)localObject).next();
          bb.a(str);
          paramJSONObject.put(str);
          continue;
          paramJSONObject = paramJSONObject;
          bb.a(paramJSONObject);
        }
        catch (JSONException paramJSONObject)
        {
          bb.a(paramJSONObject);
        }
        j = i;
      }
      i = j;
      if (paramJSONObject.length() <= 0) {
        break label229;
      }
      try
      {
        localJSONObject.put("app_apk", paramJSONObject);
        i = paramJSONObject.toString().length();
        i = j + i;
      }
      catch (JSONException paramJSONObject)
      {
        for (;;)
        {
          label229:
          bb.a(paramJSONObject);
          i = j;
        }
        j = i;
        if (paramJSONObject.length() <= 0) {
          break label344;
        }
        try
        {
          localJSONObject.put("app_change", paramJSONObject);
          j = paramJSONObject.toString().length();
          j = i + j;
        }
        catch (JSONException paramJSONObject)
        {
          for (;;)
          {
            bb.a(paramJSONObject);
            j = i;
          }
          i = j;
          if (paramJSONObject.length() <= 0) {
            break label457;
          }
          try
          {
            localJSONObject.put("app_trace2", paramJSONObject);
            i = paramJSONObject.toString().length();
            i = j + i;
          }
          catch (JSONException paramJSONObject)
          {
            for (;;)
            {
              bb.a(paramJSONObject);
              i = j;
            }
            j = i;
            if (paramJSONObject.length() <= 0) {
              break label571;
            }
            try
            {
              localJSONObject.put("app_list2", paramJSONObject);
              j = paramJSONObject.toString().length();
              j = i + j;
            }
            catch (JSONException paramJSONObject)
            {
              for (;;)
              {
                bb.a(paramJSONObject);
                j = i;
              }
              i = j;
              if (paramJSONObject.length() <= 0) {
                break label686;
              }
              try
              {
                localJSONObject.put("ap_list", paramJSONObject);
                i = paramJSONObject.toString().length();
                i = j + i;
              }
              catch (JSONException paramJSONObject)
              {
                for (;;)
                {
                  try
                  {
                    localJSONObject.put("payload", paramJSONObject);
                    ak.a().a(paramContext, localJSONObject.toString());
                    return;
                  }
                  catch (Exception paramContext)
                  {
                    bb.a(paramContext);
                  }
                  paramJSONObject = paramJSONObject;
                  bb.a(paramJSONObject);
                  i = j;
                }
              }
              bb.a("log in bytes is almost :" + i);
              paramJSONObject = new JSONArray();
              paramJSONObject.put(localJSONObject);
              localJSONObject = new JSONObject();
            }
            bb.a("AP_LIST");
            localObject = x.a.a(184320 - j);
            paramJSONObject = new JSONArray();
            localObject = ((List)localObject).iterator();
            while (((Iterator)localObject).hasNext())
            {
              str = (String)((Iterator)localObject).next();
              bb.a(str);
              paramJSONObject.put(str);
            }
          }
          bb.a("APP_LIST2");
          localObject = x.b.a(46080);
          paramJSONObject = new JSONArray();
          localObject = ((List)localObject).iterator();
          while (((Iterator)localObject).hasNext())
          {
            str = (String)((Iterator)localObject).next();
            bb.a(str);
            paramJSONObject.put(str);
          }
        }
        bb.a("APP_TRACE2");
        localObject = x.c.a(15360);
        paramJSONObject = new JSONArray();
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          str = (String)((Iterator)localObject).next();
          bb.a(str);
          paramJSONObject.put(str);
        }
      }
      bb.a("APP_CHANGE");
      localObject = x.d.a(10240);
      paramJSONObject = new JSONArray();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        str = (String)((Iterator)localObject).next();
        bb.a(str);
        paramJSONObject.put(str);
      }
    }
    bb.a("APP_MEM");
    if (!ax.a(paramContext).b())
    {
      paramJSONObject = cu.r(paramContext);
      localObject = new JSONArray();
      bb.a(paramJSONObject);
      ((JSONArray)localObject).put(paramJSONObject);
      if (((JSONArray)localObject).length() <= 0) {}
    }
    String str;
    label344:
    label457:
    label571:
    label686:
    return;
  }
  
  private void c(Context paramContext)
  {
    bb.a("collectAPWithStretegy 1");
    ax localax = ax.a(paramContext);
    long l1 = localax.a(t.a);
    long l2 = System.currentTimeMillis();
    long l3 = localax.e();
    bb.a("now time: " + l2 + ": last time: " + l1 + "; time interval: " + l3);
    if ((l1 == 0L) || (l2 - l1 > l3))
    {
      bb.a("collectAPWithStretegy 2");
      m.a(paramContext);
    }
  }
  
  private void d(Context paramContext)
  {
    bb.a("collectAPPListWithStretegy 1");
    long l1 = System.currentTimeMillis();
    ax localax = ax.a(paramContext);
    long l2 = localax.a(t.b);
    long l3 = localax.f();
    bb.a("now time: " + l1 + ": last time: " + l2 + "; userInterval : " + l3);
    if ((l2 == 0L) || (l1 - l2 > l3))
    {
      bb.a("collectUserAPPListWithStretegy 2");
      m.a(paramContext, false);
    }
    l2 = localax.a(t.c);
    l3 = localax.g();
    bb.a("now time: " + l1 + ": last time: " + l2 + "; sysInterval : " + l3);
    if ((l2 == 0L) || (l1 - l2 > l3))
    {
      bb.a("collectSysAPPListWithStretegy 2");
      m.a(paramContext, true);
    }
  }
  
  private void e(Context paramContext)
  {
    bb.a("collectAPPTraceWithStretegy 1");
    long l1 = System.currentTimeMillis();
    ax localax = ax.a(paramContext);
    long l2 = localax.a(t.e);
    long l3 = localax.i();
    bb.a("now time: " + l1 + ": last time: " + l2 + "; time interval: " + l3);
    if ((l2 == 0L) || (l1 - l2 > l3))
    {
      bb.a("collectAPPTraceWithStretegy 2");
      m.b(paramContext, false);
    }
  }
  
  private void f(Context paramContext)
  {
    bb.a("collectAPKWithStretegy 1");
    long l1 = System.currentTimeMillis();
    ax localax = ax.a(paramContext);
    long l2 = localax.a(t.g);
    long l3 = localax.h();
    bb.a("now time: " + l1 + ": last time: " + l2 + "; interval : " + l3);
    if ((l2 == 0L) || (l1 - l2 > l3))
    {
      bb.a("collectAPKWithStretegy 2");
      m.b(paramContext);
    }
  }
  
  private void g(Context paramContext)
  {
    ax.a(paramContext).a(t.h, System.currentTimeMillis());
    JSONObject localJSONObject = u.a(paramContext);
    bb.a("header: " + localJSONObject);
    while (a()) {
      b(paramContext, localJSONObject);
    }
  }
  
  public void a(Context paramContext, long paramLong)
  {
    ax.a(paramContext).a(t.i, paramLong);
  }
  
  public void a(Context paramContext, String paramString)
  {
    ax.a(paramContext).a(paramString);
  }
  
  public void a(Context paramContext, JSONObject paramJSONObject)
  {
    bb.a("startDataAnynalyzed start");
    a(paramJSONObject);
    paramJSONObject = ax.a(paramContext);
    boolean bool = paramJSONObject.a();
    bb.a("is data collect closed:" + bool);
    if (!bool)
    {
      if (!x.a.b(10000)) {
        c(paramContext);
      }
      if (!x.b.b(10000)) {
        d(paramContext);
      }
      if (!x.c.b(10000)) {
        e(paramContext);
      }
      if ((ba.f) && (!x.e.b(10000))) {
        f(paramContext);
      }
      bool = cu.m(paramContext);
      if ((!bool) || (!paramJSONObject.l())) {
        break label156;
      }
      bb.a("sendLog");
      g(paramContext);
    }
    for (;;)
    {
      bb.a("startDataAnynalyzed finished");
      return;
      label156:
      if (!bool) {
        bb.a("isWifiAvailable = false, will not sendLog");
      } else {
        bb.a("can not sendLog due to time stratergy");
      }
    }
  }
  
  public boolean a(Context paramContext)
  {
    paramContext = ax.a(paramContext);
    long l1 = paramContext.a(t.i);
    long l2 = paramContext.c();
    long l3 = System.currentTimeMillis();
    if (l3 - l1 > l2)
    {
      bb.a("need to update, checkWithLastUpdateTime lastUpdateTime =" + l1 + "nowTime=" + l3 + ";timeInteveral=" + l2);
      return true;
    }
    bb.a("no need to update, checkWithLastUpdateTime lastUpdateTime =" + l1 + "nowTime=" + l3 + ";timeInteveral=" + l2);
    return false;
  }
  
  public void b(Context paramContext, String paramString)
  {
    ax.a(paramContext).b(paramString);
  }
  
  public boolean b(Context paramContext)
  {
    return (!ax.a(paramContext).a()) || (a(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */