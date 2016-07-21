package com.duapps.ad.stats;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.duapps.ad.base.DuAdNetwork;
import com.duapps.ad.base.an;
import com.duapps.ad.base.ap;
import com.duapps.ad.base.l;
import com.duapps.ad.base.m;
import com.duapps.ad.entity.AdData;
import org.apache.http.HttpResponse;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;

public class c
  extends n
{
  private Context c;
  private WebView d;
  private i e;
  private com.duapps.ad.base.k f;
  
  public c(Context paramContext)
  {
    super(paramContext);
    c = paramContext;
  }
  
  private void d(p paramp)
  {
    boolean bool = ap.a(c, "com.android.vending");
    if (l.a()) {
      l.c("ToolClickHandler", "Click with Play installed? " + bool);
    }
    if (bool)
    {
      String str = paramp.j();
      if (b(str))
      {
        paramp.b(true);
        h(paramp, str);
        return;
      }
      if (paramp.e() > 0)
      {
        com.duapps.ad.base.p localp = m.a(c).a(str);
        paramp.a(localp);
        if (1 == c)
        {
          paramp.b(true);
          h(paramp, d);
          return;
        }
        if ((c == 2) || (c == 3))
        {
          str = "https://play.google.com/store/apps/details?id=" + gc;
          l.c("ToolClickHandler", gb + " parse result is " + c + " and start google play via url -->" + str);
          h(paramp, str);
          return;
        }
        a(com.dianxinos.a.a.f.duapps_ad_loading_switch_google_play_des);
        b(paramp, str);
        return;
      }
      a(com.dianxinos.a.a.f.duapps_ad_loading_switch_google_play_des);
      b(paramp, str);
      return;
    }
    g(paramp, paramp.j());
  }
  
  private void e(p paramp)
  {
    if (l.a()) {
      l.c("ToolClickHandler", "CHINA Click to download:" + paramp.a());
    }
    g(paramp, paramp.j());
  }
  
  private com.duapps.ad.base.k g()
  {
    com.duapps.ad.base.k localk = new com.duapps.ad.base.k(c, 2);
    localk.setOnCancelListener(new f(this));
    localk.getWindow().setType(2003);
    return localk;
  }
  
  protected void a()
  {
    if (a == null) {
      return;
    }
    a.post(new e(this));
  }
  
  protected void a(int paramInt)
  {
    if (a == null) {
      return;
    }
    a.post(new d(this, paramInt));
  }
  
  public void a(p paramp)
  {
    a(paramp, true);
  }
  
  void a(p paramp, String paramString)
  {
    if (paramp.e() <= 0) {
      return;
    }
    com.duapps.ad.base.p localp = new com.duapps.ad.base.p();
    a = paramp.j();
    d = paramString;
    b = paramp.a();
    c = 1;
    e = System.currentTimeMillis();
    y.a(c).a(localp);
  }
  
  public void a(p paramp, boolean paramBoolean)
  {
    b = false;
    if (ap.a(c, paramp.a())) {
      b(paramp);
    }
    do
    {
      return;
      if (paramBoolean) {
        u.a(c, paramp);
      }
      if ((d()) && (!ap.a(c)))
      {
        c(paramp);
        return;
      }
      if (paramp.h())
      {
        f(paramp, paramp.j());
        return;
      }
      if (paramp.i())
      {
        paramp.b(false);
        if (l.a()) {
          l.c("ToolClickHandler", "Clicked URL: " + paramp.j());
        }
        if (DuAdNetwork.d())
        {
          d(paramp);
          return;
        }
        e(paramp);
        return;
      }
    } while (!l.a());
    l.c("ToolClickHandler", "Unknown Open type: " + paramp.d());
  }
  
  protected void b()
  {
    c();
  }
  
  protected void b(p paramp, String paramString)
  {
    if (ap.a())
    {
      if (l.a()) {
        l.c("ToolClickHandler", "Newer OS, use WebView redirect.");
      }
      d(paramp, paramString);
      return;
    }
    if (l.a()) {
      l.c("ToolClickHandler", "Older OS, use Http redirect.");
    }
    an.b(new g(this, paramp, paramString));
  }
  
  protected void c()
  {
    if (e != null) {
      e.a();
    }
  }
  
  protected void c(p paramp, String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = f();
    Object localObject = new j(this, paramp);
    e = ((i)localObject);
    localDefaultHttpClient.setRedirectHandler((RedirectHandler)localObject);
    if (l.a()) {
      l.c("ToolClickHandler", "[Http] Decode URL: " + paramString);
    }
    try
    {
      localObject = new HttpGet(paramString);
      HttpConnectionParams.setConnectionTimeout(((HttpGet)localObject).getParams(), 10000);
      HttpConnectionParams.setSoTimeout(((HttpGet)localObject).getParams(), 4000);
      localDefaultHttpClient.execute((HttpUriRequest)localObject).getEntity();
      return;
    }
    catch (Exception localException)
    {
      do
      {
        l.b("ToolClickHandler", "[Http] Others error: ", localException);
      } while (paramp.o());
      i(paramp, paramString);
      a();
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  @TargetApi(11)
  protected void d(p paramp, String paramString)
  {
    if (d == null)
    {
      d = new WebView(c);
      WebSettings localWebSettings = d.getSettings();
      localWebSettings.setAllowContentAccess(true);
      localWebSettings.setJavaScriptEnabled(true);
      localWebSettings.setUserAgentString(m.b);
    }
    d.stopLoading();
    paramp = new k(this, paramp);
    e = paramp;
    d.setWebViewClient(paramp);
    if (l.a()) {
      l.c("ToolClickHandler", "[WebView] Decode URL: " + paramString);
    }
    d.loadUrl(paramString);
  }
  
  protected boolean d()
  {
    return false;
  }
  
  public void e(p paramp, String paramString)
  {
    u.i(c, paramp);
    an.b(new h(this, paramp, paramString));
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.stats.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */