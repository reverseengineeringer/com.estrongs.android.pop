package com.estrongs.android.pop.app;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.utils.cc;
import com.estrongs.android.pop.view.utils.n;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.RecommendListView;

public class RecommAcitivity
  extends ESActivity
{
  private ProgressBar a;
  private RecommendListView b;
  private al c;
  private View d;
  private boolean e = false;
  private WebView f;
  
  private boolean a()
  {
    if ((!n.b().h()) && (n.b().d() == null)) {}
    while (n.b().a(this) / 1000L > 60L) {
      return true;
    }
    return false;
  }
  
  public void a(Intent paramIntent)
  {
    super.startActivity(paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903233);
    c = al.a(this);
    int i = getIntent().getIntExtra("com.estrongs.intent.extra.TITLE", -1);
    if (i != -1) {
      ((TextView)findViewById(2131361825)).setText(i);
    }
    d = findViewById(2131362670);
    findViewById(2131362671).setOnClickListener(new kg(this));
    a = ((ProgressBar)findViewById(2131362673));
    findViewById(2131362674).setBackgroundDrawable(c.h());
    b = ((RecommendListView)findViewById(2131362675));
    paramBundle = n.b().d();
    b.a(paramBundle);
    if (a())
    {
      b.a(a);
      a.setVisibility(0);
      n.b().c();
    }
    for (;;)
    {
      b.setOnItemClickListener(new kh(this, i));
      return;
      if (n.b().h())
      {
        b.a(a);
        a.setVisibility(0);
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if (cc.a()) {
      paramMenu.add(0, 2, 0, 2131428621);
    }
    return true;
  }
  
  public void onDestroy()
  {
    n.b().f();
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((e) && (paramInt == 4) && (f.canGoBack()))
    {
      f.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
    }
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