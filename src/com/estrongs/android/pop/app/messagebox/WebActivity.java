package com.estrongs.android.pop.app.messagebox;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.dianxinos.DXStatService.stat.TokenManager;
import com.dianxinos.DXStatService.stat.a;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.an;
import com.estrongs.android.pop.view.FileExplorerActivity;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

@SuppressLint({"SetJavaScriptEnabled"})
public class WebActivity
  extends ESActivity
{
  private boolean a = false;
  private boolean b = false;
  private long c;
  private WebView d;
  private boolean e;
  private ValueCallback<Uri> f;
  private String g;
  private ProgressBar h;
  private String i;
  private TextView j;
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramIntent == null) || (paramInt2 != -1)) {}
    for (Uri localUri1 = null;; localUri1 = paramIntent.getData())
    {
      if (paramInt1 == 1)
      {
        Uri localUri2 = localUri1;
        if (localUri1 == null)
        {
          localUri2 = localUri1;
          if (paramInt2 == -1)
          {
            localUri2 = localUri1;
            if (g != null)
            {
              File localFile = new File(g);
              localUri2 = localUri1;
              if (localFile.exists())
              {
                localUri2 = Uri.fromFile(localFile);
                sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", localUri2));
              }
            }
          }
        }
        if (f != null)
        {
          f.onReceiveValue(localUri2);
          f = null;
        }
      }
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
  }
  
  @SuppressLint({"NewApi"})
  protected void onCreate(Bundle paramBundle)
  {
    c = SystemClock.currentThreadTimeMillis();
    super.onCreate(paramBundle);
    paramBundle = getIntent();
    i = paramBundle.getStringExtra("url");
    if (TextUtils.isEmpty(i)) {
      finish();
    }
    e = paramBundle.getBooleanExtra("back_home", false);
    setContentView(2130903334);
    an.a(this);
    j = ((TextView)findViewById(2131625178));
    d = ((WebView)findViewById(2131623951));
    h = ((ProgressBar)findViewById(2131625210));
    findViewById(2131625176).setOnClickListener(new ap(this));
    findViewById(2131625177).setOnClickListener(new aq(this));
    d.addJavascriptInterface(new y(this), "messagebox");
    d.setVerticalScrollbarOverlay(true);
    d.setWebViewClient(new as(this, null));
    d.setWebChromeClient(new ar(this, null));
    paramBundle = d.getSettings();
    paramBundle.setJavaScriptEnabled(true);
    paramBundle.setSaveFormData(false);
    paramBundle.setSavePassword(false);
    paramBundle.setSupportZoom(false);
    paramBundle.setCacheMode(2);
    paramBundle.setUseWideViewPort(true);
    d.clearView();
    d.clearCache(true);
    if ((i.contains("wenjuan.baidu.com")) || (i.contains("dosurvey.baidu.com")))
    {
      paramBundle = new StringBuffer("http://www.baidu.com/jump.html");
      paramBundle.append("&_token=");
      paramBundle.append(TokenManager.getToken(this));
      paramBundle.append("&");
      paramBundle.append(a.a(this));
      HashMap localHashMap = new HashMap();
      localHashMap.put("Referer", paramBundle.toString());
      d.loadUrl(i, localHashMap);
      return;
    }
    d.loadUrl(i);
  }
  
  protected void onDestroy()
  {
    if (d != null)
    {
      ((ViewGroup)d.getParent()).removeView(d);
      d.removeAllViews();
      d.destroy();
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if ((d != null) && (d.canGoBack()))
      {
        d.goBack();
        return true;
      }
      if (e)
      {
        startActivity(new Intent(this, FileExplorerActivity.class));
        finish();
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    super.onPause();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.messagebox.WebActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */