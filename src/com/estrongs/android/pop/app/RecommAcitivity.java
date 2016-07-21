package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.theme.at;
import com.estrongs.android.ui.view.RecommendListView;
import com.estrongs.android.ui.view.ba;

public class RecommAcitivity
  extends HomeAsBackActivity
{
  private ProgressBar a;
  private RecommendListView b;
  private at c;
  private boolean d = false;
  private WebView e;
  private View f;
  private ba g;
  private LinearLayout h;
  
  private boolean d()
  {
    if ((!n.b().h()) && (n.b().d() == null)) {}
    while (n.b().a(this) / 1000L > 60L) {
      return true;
    }
    return false;
  }
  
  private void e()
  {
    n.b().f();
    g.b();
  }
  
  public void a(Intent paramIntent)
  {
    super.startActivity(paramIntent);
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    try
    {
      if (g != null) {
        g.c();
      }
      return;
    }
    catch (Exception paramConfiguration)
    {
      paramConfiguration.printStackTrace();
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232249);
    setContentView(2130903398);
    c = at.a(this);
    a = ((ProgressBar)findViewById(2131625439));
    b = ((RecommendListView)findViewById(2131625438));
    try
    {
      paramBundle = k.a(this).inflate(2130903399, null);
      h = ((LinearLayout)paramBundle.findViewById(2131625442));
      g = new ba(this);
      h.addView(g.a(), new ViewGroup.LayoutParams(-1, -2));
      b.setListHeaderLayout(paramBundle);
      paramBundle = n.b().d();
      b.a(paramBundle);
      f = findViewById(2131625440);
      b.setListFooter(f);
      if (d())
      {
        b.setRefreshProgressBar(a);
        a.setVisibility(0);
        n.b().c();
        b.setOnItemClickListener(new kv(this));
        return;
      }
    }
    catch (Throwable paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
        continue;
        if (n.b().h())
        {
          b.setRefreshProgressBar(a);
          a.setVisibility(0);
        }
      }
    }
  }
  
  public void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((d) && (paramInt == 4) && (e.canGoBack()))
    {
      e.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPause()
  {
    if (isFinishing()) {
      e();
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    b.a();
  }
  
  public void startActivity(Intent paramIntent)
  {
    try
    {
      super.startActivity(paramIntent);
      return;
    }
    catch (ActivityNotFoundException paramIntent) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.RecommAcitivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */