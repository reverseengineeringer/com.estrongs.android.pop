package com.duapps.ad.stats;

import android.content.Context;
import com.duapps.ad.base.DuAdNetwork;
import com.duapps.ad.base.an;
import com.duapps.ad.base.l;
import com.duapps.ad.base.r;
import com.duapps.ad.base.t;
import com.duapps.ad.entity.AdData;
import org.json.JSONException;
import org.json.JSONStringer;

public class u
{
  public static final String a = u.class.getSimpleName();
  private static long b = 0L;
  
  private static String a(int paramInt)
  {
    String str = "";
    if (paramInt == 0) {
      str = "none";
    }
    do
    {
      return str;
      if (1 == paramInt) {
        return "tctp";
      }
      if (2 == paramInt) {
        return "tctb";
      }
    } while (3 != paramInt);
    return "err";
  }
  
  public static void a(Context paramContext, int paramInt)
  {
    a(paramContext, "admob", paramInt);
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("facebook", new JSONStringer().object().key("key").value("show").key("sid").value(paramInt2).key("ts").value(System.currentTimeMillis()).key("pos").value(paramInt1).endObject().toString(), 1);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(Context paramContext, AdData paramAdData, int paramInt1, int paramInt2, long paramLong)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    try
    {
      q.b(paramContext).a("native", new JSONStringer().object().key("key").value("pclick").key("id").value(a).key("logid").value(v).key("sid").value(x).key("ptype").value(paramInt1).key("loop").value(paramInt2).key("tsi").value(paramLong).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, p paramp)
  {
    a(paramContext, "tctc", paramp);
  }
  
  public static void a(Context paramContext, p paramp, int paramInt)
  {
    if (1 > r.j(paramContext)) {}
    do
    {
      return;
      paramContext = q.b(paramContext);
      try
      {
        JSONStringer localJSONStringer = new JSONStringer().object().key("key").value("show").key("sid").value(b).key("logid").value(paramp.m()).key("ts").value(System.currentTimeMillis());
        localJSONStringer.key("pos").array().value(paramInt).endArray();
        localJSONStringer.key("ids").array().value(paramp.c()).endArray();
        localJSONStringer.endObject();
        paramContext.a(c, localJSONStringer.toString(), 1);
        return;
      }
      catch (JSONException paramContext) {}
    } while (!l.a());
    l.a("ToolStatsHelper", "create report content failed.", paramContext);
  }
  
  private static void a(Context paramContext, String paramString, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a(paramString, new JSONStringer().object().key("key").value("show").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  private static void a(Context paramContext, String paramString, p paramp)
  {
    if (1 > r.j(paramContext)) {}
    do
    {
      return;
      paramContext = q.b(paramContext);
      try
      {
        JSONStringer localJSONStringer = new JSONStringer().object().key("key").value(paramString).key("ts").value(System.currentTimeMillis());
        localJSONStringer.key("logid").value(paramp.m());
        int i = gf;
        if (i != -1) {
          localJSONStringer.key("pos").value(i);
        }
        localJSONStringer.key("id").value(paramp.c());
        if (paramp.e() > 0)
        {
          localObject = paramp.f();
          if (localObject != null)
          {
            localJSONStringer.key("preclick").value(a(c));
            localJSONStringer.key("adpkg").value(paramp.a());
          }
        }
        if (paramp.l().equals("online")) {
          localJSONStringer.key("adpkg").value(paramp.a());
        }
        Object localObject = DuAdNetwork.a();
        if (("thi".equals(paramString)) && (localObject != null)) {
          localJSONStringer.key("referrer").value(localObject);
        }
        localJSONStringer.key("sid").value(paramp.k());
        if (paramString.equals("tctp")) {
          localJSONStringer.key("directgp").value(paramp.p());
        }
        localJSONStringer.endObject();
        paramContext.a(c, localJSONStringer.toString(), 0);
        return;
      }
      catch (JSONException paramContext) {}
    } while (!l.a());
    l.a("ToolStatsHelper", "create report content failed.", paramContext);
  }
  
  public static void a(AdData paramAdData)
  {
    String[] arrayOfString = F;
    int i = 0;
    while (i < arrayOfString.length)
    {
      String str = arrayOfString[i];
      an.a().a(new v(str, paramAdData));
      i += 1;
    }
  }
  
  public static void b(Context paramContext, int paramInt)
  {
    b(paramContext, "admob", paramInt);
  }
  
  public static void b(Context paramContext, int paramInt1, int paramInt2)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("facebook", new JSONStringer().object().key("key").value("tctc").key("sid").value(paramInt2).key("ts").value(System.currentTimeMillis()).key("pos").value(paramInt1).endObject().toString(), 0);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void b(Context paramContext, p paramp)
  {
    a(paramContext, "tcta", paramp);
  }
  
  private static void b(Context paramContext, String paramString, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a(paramString, new JSONStringer().object().key("key").value("tctc").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void b(AdData paramAdData)
  {
    String[] arrayOfString = E;
    int i = 0;
    while (i < arrayOfString.length)
    {
      String str = arrayOfString[i];
      an.a().a(new w(str, paramAdData));
      i += 1;
    }
  }
  
  public static void c(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("facebook", new JSONStringer().object().key("key").value("tctc").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void c(Context paramContext, p paramp)
  {
    a(paramContext, "tct", paramp);
  }
  
  public static void d(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("facebook", new JSONStringer().object().key("key").value("show").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void d(Context paramContext, p paramp)
  {
    t.a(paramContext).a(paramp);
    a(paramContext, "tctb", paramp);
  }
  
  public static void e(Context paramContext, p paramp)
  {
    t.a(paramContext).a(paramp);
    a(paramContext, "tctp", paramp);
  }
  
  public static void f(Context paramContext, p paramp)
  {
    a(paramContext, "thi", paramp);
  }
  
  public static void g(Context paramContext, p paramp)
  {
    if (System.currentTimeMillis() - b > 2000L) {
      a(paramContext, "tccu", paramp);
    }
    b = System.currentTimeMillis();
  }
  
  public static void h(Context paramContext, p paramp)
  {
    if (1 > r.j(paramContext)) {}
    do
    {
      return;
      paramContext = q.b(paramContext);
      try
      {
        JSONStringer localJSONStringer = new JSONStringer().object().key("key").value("show").key("sid").value(b).key("logid").value(paramp.m()).key("ts").value(System.currentTimeMillis());
        localJSONStringer.key("ids").array().value(paramp.c()).endArray();
        if (paramp.l().equals("online")) {
          localJSONStringer.key("adpkg").value(paramp.a());
        }
        localJSONStringer.endObject();
        paramContext.a(c, localJSONStringer.toString(), 1);
        return;
      }
      catch (JSONException paramContext) {}
    } while (!l.a());
    l.a("ToolStatsHelper", "create report content failed.", paramContext);
  }
  
  public static void i(Context paramContext, p paramp)
  {
    a(paramContext, "tcpp", paramp);
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */