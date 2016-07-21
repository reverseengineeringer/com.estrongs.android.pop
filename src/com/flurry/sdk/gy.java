package com.flurry.sdk;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.LayoutAlgorithm;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.ZoomButtonsController;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.TimeZone;

@SuppressLint({"SetJavaScriptEnabled"})
public final class gy
  extends gt
{
  private final String a = getClass().getSimpleName();
  private boolean b = false;
  private long c = 0L;
  private final int d = lr.b(5);
  private boolean e = false;
  private WebView f;
  private WebViewClient g;
  private WebChromeClient h;
  private boolean i;
  private gh j;
  private ImageButton k;
  private ImageButton l;
  private ImageButton m;
  private ProgressBar n;
  private LinearLayout o;
  private boolean p;
  private gt.a q = new gy.4(this);
  
  @TargetApi(11)
  public gy(Context paramContext, String paramString, s params, gt.a parama, boolean paramBoolean)
  {
    super(paramContext, params, parama);
    setFocusable(true);
    setFocusableInTouchMode(true);
    requestFocus();
    o = new LinearLayout(paramContext);
    o.setOrientation(1);
    params = new LinearLayout.LayoutParams(-1, -1);
    o.setLayoutParams(params);
    f = new WebView(paramContext);
    g = new gy.b(this, null);
    h = new gy.a(this, null);
    f.getSettings().setJavaScriptEnabled(true);
    f.getSettings().setUseWideViewPort(true);
    f.getSettings().setLoadWithOverviewMode(true);
    f.getSettings().setBuiltInZoomControls(true);
    f.getSettings().setDomStorageEnabled(true);
    f.getSettings().setLightTouchEnabled(true);
    f.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
    f.getSettings().setLoadWithOverviewMode(true);
    f.getSettings().setLoadsImagesAutomatically(true);
    f.getSettings().setDefaultFontSize(16);
    f.getSettings().setDefaultFixedFontSize(13);
    f.getSettings().setSaveFormData(true);
    f.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    f.getSettings().setPluginState(WebSettings.PluginState.ON);
    f.getSettings().setSupportMultipleWindows(false);
    f.getSettings().setSupportZoom(true);
    f.getSettings().setBuiltInZoomControls(true);
    if (Build.VERSION.SDK_INT >= 11) {
      f.getSettings().setDisplayZoomControls(false);
    }
    for (;;)
    {
      if ((paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0) && (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0))
      {
        b = true;
        f.getSettings().setGeolocationEnabled(true);
        f.getSettings().setGeolocationDatabasePath("/tmp/");
      }
      f.getSettings().setNeedInitialFocus(false);
      f.getSettings().setAllowFileAccess(false);
      f.getSettings().setAppCacheEnabled(true);
      f.getSettings().setDatabaseEnabled(true);
      f.setVerticalScrollBarEnabled(true);
      f.setScrollBarStyle(0);
      f.setScrollbarFadingEnabled(true);
      f.setWebViewClient(g);
      f.setWebChromeClient(h);
      f.setPadding(5, 5, 5, 5);
      params = new LinearLayout.LayoutParams(-1, -1);
      try
      {
        CookieSyncManager.getInstance();
        parama = CookieManager.getInstance();
        parama.setAcceptCookie(true);
        if (Build.VERSION.SDK_INT >= 21) {
          parama.setAcceptThirdPartyCookies(f, true);
        }
        if (paramBoolean)
        {
          setYCookieInWebView(parama);
          f.loadUrl(paramString);
          n = new ProgressBar(paramContext, null, 16842872);
          n.setMax(100);
          n.setProgress(0);
          paramString = new RelativeLayout.LayoutParams(-1, lr.b(3));
          n.setLayoutParams(paramString);
          k = new ImageButton(paramContext);
          k.setImageBitmap(hc.a());
          k.setBackgroundColor(getResources().getColor(17170445));
          k.setScaleType(ImageView.ScaleType.CENTER_CROP);
          k.setOnClickListener(new gy.1(this));
          l = new ImageButton(paramContext);
          l.setId(1);
          l.setScaleType(ImageView.ScaleType.CENTER_CROP);
          l.setImageBitmap(hc.b());
          l.setBackgroundColor(getResources().getColor(17170445));
          l.setVisibility(0);
          l.setOnClickListener(new gy.2(this));
          m = new ImageButton(paramContext);
          m.setScaleType(ImageView.ScaleType.CENTER_CROP);
          m.setImageBitmap(hc.c());
          m.setBackgroundColor(getResources().getColor(17170445));
          m.setOnClickListener(new gy.3(this));
          paramContext = new RelativeLayout(paramContext);
          paramContext.setBackgroundColor(-1);
          paramContext.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
          paramString = new RelativeLayout.LayoutParams(lr.b(35), lr.b(35));
          paramString.addRule(11);
          paramString.addRule(13);
          paramString.setMargins(d, d, d, d);
          paramContext.addView(k, paramString);
          parama = new RelativeLayout.LayoutParams(lr.b(35), lr.b(35));
          parama.addRule(9);
          paramString.addRule(13);
          parama.addRule(0, m.getId());
          parama.setMargins(d, d, d, d);
          paramContext.addView(l, parama);
          parama = new RelativeLayout.LayoutParams(lr.b(35), lr.b(35));
          parama.addRule(1, l.getId());
          paramString.addRule(13);
          parama.setMargins(d, d, d, d);
          paramContext.addView(m, parama);
          showProgressDialog();
          paramContext.setGravity(17);
          g();
          o.addView(paramContext);
          o.addView(n);
          o.addView(f, params);
          setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
          addView(o);
          return;
          try
          {
            ((ZoomButtonsController)f.getClass().getMethod("getZoomButtonsController", new Class[0]).invoke(f, new Object[] { null })).getContainer().setVisibility(8);
          }
          catch (Exception params)
          {
            kg.a(5, a, params.getMessage());
          }
        }
      }
      catch (Exception parama)
      {
        for (;;)
        {
          CookieSyncManager.createInstance(js.a().c());
          continue;
          f();
        }
      }
    }
  }
  
  private void a(String paramString)
  {
    try
    {
      CookieSyncManager.getInstance();
      CookieManager localCookieManager = CookieManager.getInstance();
      Object localObject1 = new Date();
      ((Date)localObject1).setTime(((Date)localObject1).getTime() - 60000L);
      Object localObject2 = new SimpleDateFormat("dd MMM yyyy kk:mm:ss z");
      ((DateFormat)localObject2).setTimeZone(TimeZone.getTimeZone("GMT"));
      localObject1 = "Expires=" + ((DateFormat)localObject2).format((Date)localObject1);
      localObject2 = localCookieManager.getCookie(paramString);
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        localObject2 = ((String)localObject2).split(";");
        int i2 = localObject2.length;
        int i1 = 0;
        while (i1 < i2)
        {
          String str = localObject2[i1];
          if (b(str)) {
            localCookieManager.setCookie(paramString, str + "; " + (String)localObject1);
          }
          i1 += 1;
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        CookieSyncManager.createInstance(js.a().c());
      }
      CookieSyncManager.getInstance().sync();
    }
  }
  
  private boolean a(String paramString1, String paramString2)
  {
    if ((TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString2))) {}
    do
    {
      return false;
      paramString2 = Uri.parse(paramString2).getQueryParameter("link");
    } while ((TextUtils.isEmpty(paramString2)) || (!paramString2.equalsIgnoreCase(paramString1)));
    return true;
  }
  
  private boolean b(String paramString)
  {
    return (!paramString.toLowerCase().contains("path")) && (!paramString.toLowerCase().contains("domain")) && (!paramString.toLowerCase().contains("port")) && (!paramString.toLowerCase().contains("expires"));
  }
  
  private void e()
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      CookieSyncManager.getInstance().sync();
      return;
    }
    CookieManager.getInstance().flush();
  }
  
  private void f()
  {
    a(i.a().h().f());
  }
  
  private void g()
  {
    if (f.canGoForward())
    {
      m.setVisibility(0);
      return;
    }
    m.setVisibility(4);
  }
  
  private void h()
  {
    onViewClose();
  }
  
  private void i()
  {
    onViewBack();
  }
  
  private void setYCookieInWebView(CookieManager paramCookieManager)
  {
    String str1 = i.a().h().d();
    String str2 = i.a().h().e();
    String str3 = i.a().h().f();
    if (!TextUtils.isEmpty(str1)) {
      paramCookieManager.setCookie(str3, str1);
    }
    if (!TextUtils.isEmpty(str2)) {
      paramCookieManager.setCookie(str3, str2);
    }
  }
  
  public void a(gy.c paramc)
  {
    if ((paramc.equals(gy.c.c)) || (paramc.equals(gy.c.a)))
    {
      h();
      return;
    }
    i();
  }
  
  public boolean a()
  {
    return (i) || ((f != null) && (f.canGoBack()));
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    if (ma.g(paramString))
    {
      if (ma.g(paramString)) {
        if (!getAdController().q()) {
          break label70;
        }
      }
      label70:
      for (j = gi.a(getContext(), gj.b, getAdObject(), q);; j = gi.a(getContext(), gj.c, getAdObject(), q))
      {
        if (j != null)
        {
          j.initLayout();
          addView(j);
        }
        return true;
      }
    }
    boolean bool1;
    if (ma.d(paramString))
    {
      bool1 = paramBoolean;
      if (!paramBoolean) {
        bool1 = a(paramString, getUrl());
      }
      fi.a(getContext(), paramString);
      if (bool1) {
        h();
      }
      fa.a(bb.S, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
      return true;
    }
    boolean bool2;
    if (ma.f(paramString))
    {
      bool2 = fi.b(getContext(), paramString);
      bool1 = bool2;
      if (bool2)
      {
        bool1 = paramBoolean;
        if (!paramBoolean) {
          bool1 = a(paramString, getUrl());
        }
        if (bool1) {
          h();
        }
        fa.a(bb.S, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
        return bool2;
      }
    }
    else
    {
      bool2 = fi.c(getContext(), paramString);
      bool1 = bool2;
      if (bool2)
      {
        bool1 = paramBoolean;
        if (!paramBoolean) {
          bool1 = a(paramString, getUrl());
        }
        if (bool1) {
          h();
        }
        fa.a(bb.S, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
        bool1 = bool2;
      }
    }
    return bool1;
  }
  
  public void b()
  {
    if (i) {
      h.onHideCustomView();
    }
    while (f == null) {
      return;
    }
    f.goBack();
  }
  
  @TargetApi(11)
  public void c()
  {
    if (f != null)
    {
      dismissProgressDialog();
      removeView(f);
      f.stopLoading();
      if (Build.VERSION.SDK_INT >= 11) {
        f.onPause();
      }
      f.destroy();
      f = null;
    }
  }
  
  public void d()
  {
    setVisibility(0);
    if (j != null) {
      j.c();
    }
  }
  
  public String getUrl()
  {
    String str = null;
    if (f != null) {
      str = f.getUrl();
    }
    return str;
  }
  
  public void initLayout()
  {
    super.initLayout();
    setOrientation(4);
  }
  
  @TargetApi(11)
  public void onActivityDestroy()
  {
    super.onActivityDestroy();
    c();
  }
  
  @TargetApi(11)
  public void onActivityPause()
  {
    super.onActivityPause();
    if ((f != null) && (Build.VERSION.SDK_INT >= 11)) {
      f.onPause();
    }
  }
  
  @TargetApi(11)
  public void onActivityResume()
  {
    super.onActivityResume();
    if ((f != null) && (Build.VERSION.SDK_INT >= 11)) {
      f.onResume();
    }
  }
  
  public boolean onBackKey()
  {
    if (a()) {
      b();
    }
    for (;;)
    {
      d();
      return true;
      a(gy.c.b);
    }
  }
  
  protected void onViewLoadTimeout()
  {
    fa.a(bb.u, Collections.emptyMap(), getContext(), getAdObject(), getAdController(), 0);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */