package com.duapps.ad.stats;

import android.content.Context;
import com.duapps.ad.base.r;
import org.json.JSONException;
import org.json.JSONStringer;

public class b
{
  public static void a(Context paramContext, int paramInt)
  {
    c(paramContext, "dln", Integer.toString(0), paramInt);
  }
  
  public static void a(Context paramContext, int paramInt1, int paramInt2, long paramLong)
  {
    a(paramContext, paramInt1, paramInt2, paramLong, "dle");
  }
  
  private static void a(Context paramContext, int paramInt1, int paramInt2, long paramLong, String paramString)
  {
    if (3 > r.j(paramContext)) {
      return;
    }
    try
    {
      q.b(paramContext).a("behavior", new JSONStringer().object().key("key").value(paramString).key("sid").value(paramInt1).key("co").value(paramInt2).key("tsi").value(paramLong).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, int paramInt, long paramLong)
  {
    if (3 > r.j(paramContext)) {
      return;
    }
    try
    {
      q.b(paramContext).a("behavior", new JSONStringer().object().key("key").value("srce").key("co").value(paramInt).key("tsi").value(paramLong).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, int paramInt1, long paramLong, int paramInt2)
  {
    if (3 > r.j(paramContext)) {
      return;
    }
    try
    {
      q.b(paramContext).a("behavior", new JSONStringer().object().key("key").value("fbe").key("sid").value(paramInt2).key("co").value(paramInt1).key("tsi").value(paramLong).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void a(Context paramContext, int paramInt, String paramString)
  {
    if (4 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("proiority").key("sid").value(paramInt).key("pro").value(paramString).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void a(Context paramContext, String paramString, int paramInt)
  {
    if (2 > r.j(paramContext)) {
      return;
    }
    b(paramContext, "fbgr", paramString, paramInt);
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("fb_info").key("sid").value(paramInt).key("fb_title").value(paramString1).key("fb_img").value(paramString2).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void b(Context paramContext, int paramInt)
  {
    c(paramContext, "imn", Integer.toString(0), paramInt);
  }
  
  public static void b(Context paramContext, int paramInt1, int paramInt2, long paramLong)
  {
    a(paramContext, paramInt1, paramInt2, paramLong, "ime");
  }
  
  public static void b(Context paramContext, String paramString, int paramInt)
  {
    c(paramContext, "dlgr", paramString, paramInt);
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    try
    {
      q.b(paramContext).a("behavior", new JSONStringer().object().key("key").value(paramString1).key("st").value(paramString2).key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void c(Context paramContext, int paramInt)
  {
    c(paramContext, "oln", Integer.toString(0), paramInt);
  }
  
  public static void c(Context paramContext, int paramInt1, int paramInt2, long paramLong)
  {
    a(paramContext, paramInt1, paramInt2, paramLong, "ole");
  }
  
  public static void c(Context paramContext, String paramString, int paramInt)
  {
    c(paramContext, "imgr", paramString, paramInt);
  }
  
  private static void c(Context paramContext, String paramString1, String paramString2, int paramInt)
  {
    if (2 > r.j(paramContext)) {
      return;
    }
    try
    {
      q.b(paramContext).a("behavior", new JSONStringer().object().key("key").value(paramString1).key("st").value(paramString2).key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 1);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void d(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("tccu").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (Exception paramContext) {}
  }
  
  public static void d(Context paramContext, int paramInt1, int paramInt2, long paramLong)
  {
    a(paramContext, paramInt1, paramInt2, paramLong, "ame");
  }
  
  public static void d(Context paramContext, String paramString, int paramInt)
  {
    c(paramContext, "olgr", paramString, paramInt);
  }
  
  public static void e(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("owshow").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void e(Context paramContext, String paramString, int paramInt)
  {
    c(paramContext, "amgr", paramString, paramInt);
  }
  
  public static void f(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("ows").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (JSONException paramContext) {}
  }
  
  public static void g(Context paramContext, int paramInt)
  {
    if (1 > r.j(paramContext)) {
      return;
    }
    paramContext = q.b(paramContext);
    try
    {
      paramContext.a("behavior", new JSONStringer().object().key("key").value("owf").key("sid").value(paramInt).key("ts").value(System.currentTimeMillis()).endObject().toString(), 0);
      return;
    }
    catch (JSONException paramContext) {}
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */