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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.z;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.fs.impl.j.b;
import java.util.Properties;

public class CreateOAuthNetDisk
  extends ESActivity
{
  public static int a = 1;
  public static int b = 2;
  public static int c = 3;
  public static int d = 4;
  public static int e = 5;
  public static int f = 6;
  public static int g = 7;
  private static CreateOAuthNetDisk j = null;
  boolean h = false;
  boolean i = false;
  private String k = null;
  private boolean l = false;
  private String m = null;
  private WebView n = null;
  private v o = new v(this, null);
  private u p = new u(this, null);
  private ProgressBar q = null;
  private TextView r = null;
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
    if (i)
    {
      if (j != null) {
        j.a();
      }
      i = false;
    }
    int i1 = n.getWidth();
    int i2 = (int)(n.getContentHeight() * n.getScale());
    if (i2 > paramInt)
    {
      ViewGroup.LayoutParams localLayoutParams = n.getLayoutParams();
      height = paramInt;
      width = ((int)(i1 / i2 * paramInt));
      n.setLayoutParams(localLayoutParams);
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool = false;
    if (paramString != null)
    {
      paramString = b.f(k, paramString);
      if (paramString != null)
      {
        String str1 = am.a(k, paramString, "fake", "/");
        if ((l) && (m != null))
        {
          String str2 = am.ai(m);
          ad localad = ad.a(this);
          String str3 = m;
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
    return j;
  }
  
  private boolean b(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    return paramString.contains("www.dropbox.com");
  }
  
  private void d(String paramString)
  {
    if (paramString == null) {
      return;
    }
    int i1 = paramString.indexOf("://");
    String str = paramString;
    if (i1 > 0) {
      str = paramString.substring(i1 + 3);
    }
    if ((!str.startsWith("www.estrongs.com")) && (!str.startsWith("localhost")) && (j != null))
    {
      if (!h) {
        break label86;
      }
      i = true;
    }
    for (;;)
    {
      paramString = v.obtainMessage(g);
      v.sendMessageDelayed(paramString, 200L);
      return;
      label86:
      j.a();
    }
  }
  
  public void a()
  {
    Message localMessage = v.obtainMessage(c);
    v.sendMessage(localMessage);
  }
  
  public void a(Properties paramProperties)
  {
    if (k.equalsIgnoreCase("box"))
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
    super.setContentView(2130903201);
    paramBundle = getIntent().getExtras();
    if (paramBundle == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    k = paramBundle.getString("nettype");
    l = paramBundle.getBoolean("editServer", false);
    m = paramBundle.getString("originalPath");
    n = ((WebView)findViewById(2131362543));
    paramBundle = n.getSettings();
    paramBundle.setJavaScriptEnabled(true);
    n.setWebViewClient(o);
    n.setWebChromeClient(p);
    if (("gdrive".equals(k)) && ((bd.p()) || (z.O))) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      if (h)
      {
        paramBundle.setUseWideViewPort(true);
        if (ac.a() >= 7) {
          paramBundle.setLoadWithOverviewMode(true);
        }
        n.setInitialScale(20);
      }
      paramBundle.setSavePassword(false);
      paramBundle.setSaveFormData(false);
      CookieSyncManager.createInstance(this);
      CookieSyncManager.getInstance().startSync();
      CookieManager localCookieManager = CookieManager.getInstance();
      paramBundle.setDefaultTextEncodingName("utf-8");
      r = ((TextView)findViewById(2131362545));
      q = ((ProgressBar)findViewById(2131362544));
      t = findViewById(2131362542);
      new r(this).start();
      localCookieManager.removeAllCookie();
      j = this;
      return;
    }
  }
  
  protected void onDestroy()
  {
    j = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.CreateOAuthNetDisk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */