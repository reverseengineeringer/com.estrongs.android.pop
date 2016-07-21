package com.estrongs.android.ui.view;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.fs.impl.o.b;
import java.util.Properties;

public class CreateOAuthNetDisk
  extends ESResourceActivity
{
  public static int a = 1;
  public static int b = 2;
  public static int d = 3;
  public static int e = 4;
  public static int f = 5;
  public static int g = 6;
  public static int h = 7;
  private static CreateOAuthNetDisk k = null;
  boolean i = false;
  boolean j = false;
  private String l = null;
  private boolean m = false;
  private String n = null;
  private WebView o = null;
  private v p = new v(this, null);
  private u q = new u(this, null);
  private ProgressBar r = null;
  private TextView s = null;
  private View t = null;
  private String u = null;
  private Handler v = new s(this);
  
  private String a(String paramString1, String paramString2)
  {
    String[] arrayOfString2 = paramString1.split("\\?");
    String[] arrayOfString1 = arrayOfString2;
    if (arrayOfString2.length != 2) {
      arrayOfString1 = paramString1.split("#");
    }
    if (arrayOfString1.length == 2)
    {
      paramString1 = arrayOfString1[1].split("&");
      if (paramString1 != null)
      {
        int i1 = 0;
        while (i1 < paramString1.length)
        {
          arrayOfString1 = paramString1[i1].split("=");
          if ((arrayOfString1.length == 2) && (arrayOfString1[0].equals(paramString2))) {
            return arrayOfString1[1];
          }
          i1 += 1;
        }
      }
    }
    return null;
  }
  
  private void a(int paramInt)
  {
    if (j)
    {
      if (k != null) {
        k.a();
      }
      j = false;
    }
    int i1 = o.getWidth();
    int i2 = (int)(o.getContentHeight() * o.getScale());
    if (i2 > paramInt)
    {
      ViewGroup.LayoutParams localLayoutParams = o.getLayoutParams();
      height = paramInt;
      width = ((int)(i1 / i2 * paramInt));
      o.setLayoutParams(localLayoutParams);
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
    {
      paramString = b.f(l, paramString);
      if (paramString != null)
      {
        String str1 = ap.a(l, paramString, "fake", "/");
        if ((m) && (n != null))
        {
          String str2 = ap.as(n);
          ad localad = ad.a(this);
          String str3 = n;
          if (!paramString.equalsIgnoreCase(str2)) {
            bool = true;
          }
          localad.a(str3, bool);
        }
        ad.a(this).a(str1, paramString);
        return true;
      }
    }
    return false;
  }
  
  public static CreateOAuthNetDisk b()
  {
    return k;
  }
  
  private boolean b(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.contains("www.dropbox.com");
  }
  
  private void c(String paramString)
  {
    if (paramString == null) {
      return;
    }
    int i1 = paramString.indexOf("://");
    String str = paramString;
    if (i1 > 0) {
      str = paramString.substring(i1 + 3);
    }
    if ((!str.startsWith("www.estrongs.com")) && (!str.startsWith("localhost")) && (k != null))
    {
      if (!i) {
        break label86;
      }
      j = true;
    }
    for (;;)
    {
      paramString = v.obtainMessage(h);
      v.sendMessageDelayed(paramString, 200L);
      return;
      label86:
      k.a();
    }
  }
  
  public void a()
  {
    Message localMessage = v.obtainMessage(d);
    v.sendMessage(localMessage);
  }
  
  public void a(Properties paramProperties)
  {
    if (l.equalsIgnoreCase("box"))
    {
      paramProperties = paramProperties.getProperty("auth_token");
      Message localMessage = v.obtainMessage(a);
      obj = paramProperties;
      v.sendMessage(localMessage);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    paramConfiguration = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    super.setContentView(2130903352);
    paramBundle = getIntent().getExtras();
    if (paramBundle == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    l = paramBundle.getString("nettype");
    m = paramBundle.getBoolean("editServer", false);
    n = paramBundle.getString("originalPath");
    o = ((WebView)findViewById(2131625280));
    paramBundle = o.getSettings();
    paramBundle.setJavaScriptEnabled(true);
    o.setWebViewClient(p);
    o.setWebChromeClient(q);
    if (("gdrive".equals(l)) && ((bk.p()) || (z.O))) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      if (i)
      {
        paramBundle.setUseWideViewPort(true);
        if (ac.a() >= 7) {
          paramBundle.setLoadWithOverviewMode(true);
        }
        o.setInitialScale(20);
      }
      paramBundle.setSavePassword(false);
      paramBundle.setSaveFormData(false);
      CookieSyncManager.createInstance(this);
      CookieSyncManager.getInstance().startSync();
      CookieManager localCookieManager = CookieManager.getInstance();
      paramBundle.setDefaultTextEncodingName("utf-8");
      s = ((TextView)findViewById(2131625282));
      r = ((ProgressBar)findViewById(2131625281));
      t = findViewById(2131625279);
      new r(this).start();
      localCookieManager.removeAllCookie();
      k = this;
      return;
    }
  }
  
  protected void onDestroy()
  {
    k = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.CreateOAuthNetDisk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */