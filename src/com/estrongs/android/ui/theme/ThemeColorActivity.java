package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.widget.Button;
import com.estrongs.android.ui.base.HomeAsBackActivity;
import com.estrongs.android.ui.dialog.cv;
import com.estrongs.android.ui.view.ColorPickerView;
import com.estrongs.android.view.a.a;
import java.util.List;

public class ThemeColorActivity
  extends HomeAsBackActivity
{
  private at a;
  private int b;
  private int c;
  private al d;
  private Context e;
  private boolean f;
  private ColorPickerView g;
  
  private int a(int paramInt)
  {
    if (e == null) {
      e = d.a(this);
    }
    try
    {
      if (e != null)
      {
        int i = e.getResources().getColor(paramInt);
        return i;
      }
    }
    catch (Exception localException)
    {
      return a.c(paramInt);
    }
    return a.c(paramInt);
  }
  
  private void d()
  {
    Button localButton = (Button)findViewById(2131625572);
    localButton.setText(2131231223);
    localButton.setOnClickListener(new y(this));
    localButton = (Button)findViewById(2131625573);
    localButton.setText(2131231224);
    localButton.setOnClickListener(new z(this));
    localButton = (Button)findViewById(2131625571);
    localButton.setText(2131230844);
    localButton.setOnClickListener(new aa(this));
  }
  
  private void e()
  {
    g = ((ColorPickerView)findViewById(2131625574));
    int i;
    if (b == 1)
    {
      i = d.j();
      if (i != Integer.MIN_VALUE) {
        g.setColor(i);
      }
    }
    for (;;)
    {
      g.setOnColorChangeListener(new ac(this));
      return;
      g.setColor(a(2131558462));
      continue;
      if (b == 2)
      {
        i = d.i();
        if (i != Integer.MIN_VALUE) {
          g.setColor(i);
        } else {
          g.setColor(a(2131558623));
        }
      }
      else if (b == 3)
      {
        i = d.k();
        if (i != Integer.MIN_VALUE) {
          g.setColor(i);
        } else {
          g.setColor(a(2131558409));
        }
      }
      else if (b == 4)
      {
        i = d.l();
        if (i != Integer.MIN_VALUE) {
          g.setColor(i);
        } else {
          g.setColor(a(2131558407));
        }
      }
      else if (b == 5)
      {
        i = d.m();
        if (i != Integer.MIN_VALUE) {
          g.setColor(i);
        } else {
          g.setColor(a(2131558411));
        }
      }
    }
  }
  
  private void f()
  {
    boolean bool = false;
    int i = g.getCurrentColor();
    if (b == 1)
    {
      bool = d.a(i);
      if (bool) {
        break label118;
      }
      d(2131232430);
    }
    label118:
    while ((!f) || (c != a.e()))
    {
      return;
      if (b == 2)
      {
        bool = d.b(i);
        break;
      }
      if (b == 3)
      {
        bool = d.c(i);
        break;
      }
      if (b == 4)
      {
        bool = d.d(i);
        break;
      }
      if (b != 5) {
        break;
      }
      bool = d.e(i);
      break;
    }
    setResult(-1);
  }
  
  private void h()
  {
    if (f)
    {
      new cv(this).a(2131232414).b(2131232411).b(2131231270, new ae(this)).c(2131231265, new ad(this)).c();
      return;
    }
    finish();
  }
  
  protected void a(List<a> paramList)
  {
    paramList.add(new a(2130838595, 2131230883).a(new ab(this)));
  }
  
  protected boolean c()
  {
    return false;
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    setContentView(2130903444);
    d();
    e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = getIntent().getIntExtra("set_what_color", -1);
    if (b == -1) {
      finish();
    }
    int i = getIntent().getIntExtra("theme_data_index", -1);
    if (i == -1)
    {
      finish();
      return;
    }
    c = i;
    a = at.a(this);
    paramBundle = a.g();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    d = ((al)paramBundle.get(c));
    f = false;
    setContentView(2130903444);
    if (b == 1) {
      setTitle(2131232412);
    }
    for (;;)
    {
      d();
      e();
      return;
      if (b == 2) {
        setTitle(2131232431);
      } else if (b == 3) {
        setTitle(2131232424);
      } else if (b == 4) {
        setTitle(2131232423);
      } else if (b == 5) {
        setTitle(2131232425);
      }
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    e = null;
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      h();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      h();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeColorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */