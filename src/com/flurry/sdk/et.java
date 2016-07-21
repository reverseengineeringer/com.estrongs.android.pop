package com.flurry.sdk;

import android.app.ProgressDialog;
import android.content.Context;
import android.text.TextUtils;
import java.util.Map;

public abstract class et
{
  private static final String e = et.class.getName();
  protected String a;
  protected String b;
  protected String c;
  protected et.a d;
  private long f = Long.MIN_VALUE;
  private String g = null;
  private int h = -1;
  private ProgressDialog i = null;
  private el j = null;
  private final kb<ln> k = new et.6(this);
  
  public et(et.a parama)
  {
    d = parama;
  }
  
  private void a(Map<String, String> paramMap)
  {
    j = ep.a(g, paramMap, new et.2(this));
  }
  
  private void b()
  {
    g();
    if (i.isShowing()) {
      i.dismiss();
    }
  }
  
  private void b(Context paramContext)
  {
    i = new ProgressDialog(paramContext);
    i.setProgressStyle(0);
    i.setCancelable(true);
    i.setCanceledOnTouchOutside(false);
    f();
    i.show();
  }
  
  private void b(Map<String, String> paramMap)
  {
    j = ep.a(g, paramMap, new et.3(this));
  }
  
  protected abstract Map<String, String> a();
  
  public void a(int paramInt)
  {
    h = paramInt;
  }
  
  public void a(Context paramContext)
  {
    b(paramContext);
    js.a().b(new et.1(this));
  }
  
  protected void a(ed paramed, String paramString)
  {
    js.a().a(new et.4(this));
    ec.a(paramed, h, paramString);
  }
  
  protected void a(Long paramLong)
  {
    js.a().a(new et.5(this));
    ec.a(h, paramLong);
  }
  
  protected void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  public void c(String paramString)
  {
    a = paramString;
  }
  
  public et.a d()
  {
    return d;
  }
  
  public void d(String paramString)
  {
    g = paramString;
  }
  
  public int e()
  {
    return h;
  }
  
  public void e(String paramString)
  {
    b = paramString;
  }
  
  public void f()
  {
    f = System.currentTimeMillis();
    lo.a().a(k);
  }
  
  public void f(String paramString)
  {
    c = paramString;
  }
  
  public void g()
  {
    f = Long.MIN_VALUE;
    lo.a().b(k);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */