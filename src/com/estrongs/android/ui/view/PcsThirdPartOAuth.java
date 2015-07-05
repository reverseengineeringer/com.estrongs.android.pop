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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cc;

public class PcsThirdPartOAuth
  extends ESActivity
{
  private static PcsThirdPartOAuth b = null;
  String a = null;
  private String c = null;
  private String d = null;
  private String e = null;
  private boolean f = false;
  private String g = null;
  private String h = null;
  private WebView i = null;
  private bm j = new bm(this, null);
  private ProgressBar k = null;
  private TextView l = null;
  private ScrollView m = null;
  private String n = null;
  private String o = null;
  private boolean p = false;
  private Button q;
  private ImageView r;
  private Handler t = new bj(this);
  
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
    super.setContentView(2130903211);
    i = ((WebView)findViewById(2131362543));
    i.getSettings().setJavaScriptEnabled(true);
    i.addJavascriptInterface(new PcsThirdPartOAuth.MyHandler(t), "handler");
    i.setWebViewClient(j);
    Object localObject = i.getSettings();
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setSaveFormData(true);
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
    paramBundle = CookieManager.getInstance();
    ((WebSettings)localObject).setDefaultTextEncodingName("utf-8");
    l = ((TextView)findViewById(2131362545));
    k = ((ProgressBar)findViewById(2131362544));
    m = ((ScrollView)findViewById(2131362542));
    q = ((Button)findViewById(2131362593));
    q.setOnClickListener(new bg(this));
    r = ((ImageView)findViewById(2131362092));
    r.setOnClickListener(new bh(this));
    localObject = getIntent().getExtras();
    if (localObject == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    c = ((Bundle)localObject).getString("nettype");
    d = ((Bundle)localObject).getString("ostype");
    e = ((Bundle)localObject).getString("login");
    if (d == null) {
      d = "sinaweibo";
    }
    f = ((Bundle)localObject).getBoolean("editServer", false);
    g = ((Bundle)localObject).getString("originalPath");
    h = ((Bundle)localObject).getString("displayName");
    localObject = cc.e();
    if ((d.equals("qq")) && (!cc.b()) && (!"TW".equalsIgnoreCase((String)localObject)) && (!"HK".equalsIgnoreCase((String)localObject))) {}
    for (boolean bool = true;; bool = false)
    {
      p = bool;
      new bi(this).start();
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