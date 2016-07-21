package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cl;

public class PrivacyActivity
  extends ESActivity
{
  private WebView a;
  
  private boolean a(String paramString)
  {
    a.clearHistory();
    a.clearCache(true);
    a.loadUrl(paramString);
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232159);
    getWindow().setBackgroundDrawable(null);
    setContentView(2130903392);
    a = ((WebView)findViewById(2131625423));
    a.setFocusableInTouchMode(true);
    a.getSettings().setJavaScriptEnabled(true);
    a.setWebViewClient(new ku(this));
    paramBundle = "http://www.estrongs.com/privacyStatement/en/index.htm";
    if (cl.b()) {
      paramBundle = "http://www.estrongs.com/privacyStatement/cn/index.htm";
    }
    for (;;)
    {
      a(paramBundle);
      return;
      if (cl.d()) {
        paramBundle = "http://www.estrongs.com/privacyStatement/ru/index.htm";
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      finish();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.PrivacyActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */