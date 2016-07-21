package com.estrongs.android.ui.view;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.utils.cl;

public class PcsThirdPartOAuth
  extends ESResourceActivity
{
  private static PcsThirdPartOAuth b = null;
  String a = null;
  private String d = null;
  private String e = null;
  private String f = null;
  private boolean g = false;
  private String h = null;
  private String i = null;
  private WebView j = null;
  private bv k = new bv(this, null);
  private ProgressBar l = null;
  private TextView m = null;
  private ScrollView n = null;
  private String o = null;
  private String p = null;
  private boolean q = false;
  private Button r;
  private ImageView s;
  private Handler t = new bs(this);
  
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
  
  public void a()
  {
    Message localMessage = t.obtainMessage(3);
    t.sendMessage(localMessage);
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
    super.setContentView(2130903372);
    j = ((WebView)findViewById(2131625280));
    j.getSettings().setJavaScriptEnabled(true);
    j.addJavascriptInterface(new PcsThirdPartOAuth.MyHandler(t), "handler");
    j.setWebViewClient(k);
    Object localObject = j.getSettings();
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setSaveFormData(true);
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
    paramBundle = CookieManager.getInstance();
    ((WebSettings)localObject).setDefaultTextEncodingName("utf-8");
    m = ((TextView)findViewById(2131625282));
    l = ((ProgressBar)findViewById(2131625281));
    n = ((ScrollView)findViewById(2131625279));
    r = ((Button)findViewById(2131625344));
    r.setOnClickListener(new bp(this));
    s = ((ImageView)findViewById(2131624051));
    s.setOnClickListener(new bq(this));
    localObject = getIntent().getExtras();
    if (localObject == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    d = ((Bundle)localObject).getString("nettype");
    e = ((Bundle)localObject).getString("ostype");
    f = ((Bundle)localObject).getString("login");
    if (e == null) {
      e = "sinaweibo";
    }
    g = ((Bundle)localObject).getBoolean("editServer", false);
    h = ((Bundle)localObject).getString("originalPath");
    i = ((Bundle)localObject).getString("displayName");
    localObject = cl.c();
    if ((e.equals("qq")) && (!cl.b()) && (!"TW".equalsIgnoreCase((String)localObject)) && (!"HK".equalsIgnoreCase((String)localObject))) {}
    for (boolean bool = true;; bool = false)
    {
      q = bool;
      new br(this).start();
      paramBundle.removeAllCookie();
      b = this;
      return;
    }
  }
  
  protected void onDestroy()
  {
    b = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.PcsThirdPartOAuth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */