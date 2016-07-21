package com.estrongs.android.pop.app;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cl;

public class HelpActivity
  extends ESActivity
{
  private final String a = "text/html";
  private final String b = "utf-8";
  private WebView c;
  private final String[] d = { "index.html" };
  private final int[] e = new int[0];
  private int f = 0;
  
  private boolean a(String paramString)
  {
    c.clearHistory();
    c.clearCache(true);
    c.loadUrl(paramString);
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131231557);
    getWindow().setBackgroundDrawable(null);
    setContentView(2130903261);
    c = ((WebView)findViewById(2131624972));
    c.setFocusableInTouchMode(true);
    c.getSettings().setJavaScriptEnabled(true);
    c.setWebViewClient(new cv(this));
    paramBundle = "http://www.estrongs.com/eshelp/en/ES_File_Explorer_User_Manual3.0.htm";
    if (cl.b()) {
      paramBundle = "http://www.estrongs.com/eshelp/cn/ES_File_Explorer_User_Manual3.0.htm";
    }
    a(paramBundle);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      if (c.canGoBack())
      {
        c.stopLoading();
        c.goBack();
      }
      for (;;)
      {
        return true;
        finish();
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.HelpActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */