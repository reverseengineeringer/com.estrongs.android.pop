package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.cv;
import java.util.List;

public class ThemeLayoutActivity
  extends HomeAsBackActivity
{
  private ImageView a;
  private ImageView b;
  private TextView c;
  private ImageView d;
  private ImageView e;
  private TextView f;
  private at g;
  private boolean h;
  private int i;
  private al j;
  private int k;
  
  private void a(View paramView)
  {
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
    localLayoutParams.addRule(9);
    paramView.setLayoutParams(localLayoutParams);
  }
  
  private void d()
  {
    Object localObject = findViewById(2131625576);
    View localView = findViewById(2131625581);
    if (!j.b())
    {
      ((View)localObject).setVisibility(8);
      a(localView);
    }
    if (!j.a())
    {
      localView.setVisibility(8);
      a((View)localObject);
    }
    localObject = new ao(this);
    b = ((ImageView)findViewById(2131625579));
    a = ((ImageView)findViewById(2131625578));
    a.setOnTouchListener((View.OnTouchListener)localObject);
    a.setOnClickListener(new ap(this));
    c = ((TextView)findViewById(2131625580));
    e = ((ImageView)findViewById(2131625583));
    d = ((ImageView)findViewById(2131625582));
    d.setOnTouchListener((View.OnTouchListener)localObject);
    d.setOnClickListener(new aq(this));
    f = ((TextView)findViewById(2131625584));
  }
  
  private void e()
  {
    if (k == 0)
    {
      e.setVisibility(8);
      b.setVisibility(0);
      f.setTextColor(getResources().getColorStateList(2131558711));
      c.setTextColor(getResources().getColorStateList(2131558712));
      return;
    }
    b.setVisibility(8);
    e.setVisibility(0);
    c.setTextColor(getResources().getColorStateList(2131558711));
    f.setTextColor(getResources().getColorStateList(2131558712));
  }
  
  private void f()
  {
    if (h)
    {
      new cv(this).a(2131232414).b(2131232411).b(2131231270, new as(this)).c(2131231265, new ar(this)).c();
      return;
    }
    finish();
  }
  
  private void h()
  {
    boolean bool;
    if (k == 0)
    {
      bool = j.a("new");
      if (bool) {
        break label41;
      }
      d(2131232430);
    }
    label41:
    while ((!h) || (i != g.e()))
    {
      return;
      bool = j.a("old");
      break;
    }
    setResult(-1);
  }
  
  protected boolean c()
  {
    return false;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131232419);
    setContentView(2130903441);
    int m = getIntent().getIntExtra("theme_data_index", -1);
    if (m == -1)
    {
      finish();
      return;
    }
    i = m;
    g = at.a(this);
    paramBundle = g.g();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    j = ((al)paramBundle.get(i));
    h = false;
    if ("new".equals(j.c(this))) {}
    for (m = 0;; m = 1)
    {
      k = m;
      d();
      e();
      return;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      f();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      f();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeLayoutActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */