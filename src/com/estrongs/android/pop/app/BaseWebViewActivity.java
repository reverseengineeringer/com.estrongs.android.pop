package com.estrongs.android.pop.app;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.Toolbar;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.view.a.a;
import java.util.List;

public class BaseWebViewActivity
  extends HomeAsBackActivity
{
  public static String a = "url";
  private WebView b;
  private View c;
  private TextView d;
  private ProgressBar e;
  private String f;
  
  private boolean a(String paramString)
  {
    f();
    b.clearHistory();
    b.clearCache(true);
    b.loadUrl(paramString);
    return true;
  }
  
  private void d()
  {
    b = ((WebView)findViewById(2131624103));
    b.setFocusableInTouchMode(true);
    b.getSettings().setJavaScriptEnabled(true);
    b.setWebViewClient(new v(this));
    c = findViewById(2131624104);
    e = ((ProgressBar)findViewById(2131624105));
    d = ((TextView)findViewById(2131624106));
  }
  
  private void e()
  {
    f = getIntent().getStringExtra(a);
    a(f);
  }
  
  private void f()
  {
    c.setVisibility(0);
    e.setVisibility(0);
    d.setVisibility(8);
  }
  
  private void h()
  {
    c.setVisibility(0);
    e.setVisibility(8);
    d.setVisibility(0);
    d.setText(2131232522);
    b.setVisibility(8);
  }
  
  private void i()
  {
    b.setVisibility(0);
    c.setVisibility(8);
  }
  
  protected ActionBar a()
  {
    Toolbar localToolbar = (Toolbar)findViewById(2131624102);
    setSupportActionBar(localToolbar);
    localToolbar.setTitleTextColor(J().c(2131558625));
    return getSupportActionBar();
  }
  
  protected void a(List<a> paramList)
  {
    paramList.add(new a(2130838588, 2131230880).a(new w(this)).c(true));
  }
  
  protected boolean b()
  {
    return true;
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    d();
    e();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      if (b.canGoBack()) {
        b.goBack();
      }
      for (;;)
      {
        return true;
        finish();
      }
    }
    return false;
  }
  
  protected void onStart()
  {
    super.onStart();
    getSupportActionBar().setElevation(0.0F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.BaseWebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */