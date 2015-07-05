package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.e.jk;
import java.util.List;

public class ThemeFolderActivity
  extends ESActivity
{
  private al a;
  private af b;
  private boolean c;
  private final int d = 6;
  private int e;
  private Context f;
  private ai g;
  
  private void a()
  {
    ((LinearLayout)findViewById(2131362758)).setOnClickListener(new ab(this));
    ((TextView)findViewById(2131362760)).setText(2131428153);
    if (getResourcesgetConfigurationorientation == 1) {}
    for (boolean bool = true;; bool = false)
    {
      jk localjk = new jk(this, bool);
      localjk.a(2131427345, 2130838226, new ac(this));
      ((LinearLayout)findViewById(2131362761)).addView(localjk.a(), new LinearLayout.LayoutParams(-1, -1));
      return;
    }
  }
  
  private void b()
  {
    ListView localListView = (ListView)findViewById(2131362767);
    b = new af(this, this);
    localListView.setAdapter(b);
  }
  
  private void c()
  {
    int i = b.a();
    if (e == a.e())
    {
      a.f(i);
      if (c) {
        setResult(-1);
      }
      return;
    }
    String str = a.e(i);
    g.a(this, str, false);
  }
  
  private void d()
  {
    if (c)
    {
      new ct(this).a(2131428100).b(2131428082).b(2131427339, new ae(this)).c(2131427340, new ad(this)).c();
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903260);
    int i = getIntent().getIntExtra("theme_data_index", -1);
    if (i == -1)
    {
      finish();
      return;
    }
    e = i;
    a = al.a(this);
    paramBundle = a.g();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    g = ((ai)paramBundle.get(e));
    f = g.a(this);
    c = false;
    a();
    b();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      d();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeFolderActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */