package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.e.jk;
import com.estrongs.android.ui.view.ColorPickerView;
import java.util.List;

public class ThemeColorActivity
  extends ESActivity
{
  private al a;
  private int b;
  private int c;
  private ai d;
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
      return a.d(paramInt);
    }
    return a.d(paramInt);
  }
  
  private void a()
  {
    ((LinearLayout)findViewById(2131362758)).setOnClickListener(new t(this));
    Object localObject = (Button)findViewById(2131362781);
    ((Button)localObject).setText(2131427440);
    ((Button)localObject).setOnClickListener(new u(this));
    localObject = (Button)findViewById(2131362782);
    ((Button)localObject).setText(2131427441);
    ((Button)localObject).setOnClickListener(new v(this));
    localObject = (Button)findViewById(2131362780);
    ((Button)localObject).setText(2131427365);
    ((Button)localObject).setOnClickListener(new w(this));
    localObject = (TextView)findViewById(2131362760);
    if (b == 1)
    {
      ((TextView)localObject).setText(2131428150);
      if (getResourcesgetConfigurationorientation != 1) {
        break label214;
      }
    }
    label214:
    for (boolean bool = true;; bool = false)
    {
      localObject = new jk(this, bool);
      ((jk)localObject).a(2131427345, 2130838226, new x(this));
      ((LinearLayout)findViewById(2131362761)).addView(((jk)localObject).a(), new LinearLayout.LayoutParams(-1, -1));
      return;
      if (b != 2) {
        break;
      }
      ((TextView)localObject).setText(2131428151);
      break;
    }
  }
  
  private void b()
  {
    g = ((ColorPickerView)findViewById(2131362783));
    int i;
    if (b == 1)
    {
      i = d.j();
      if (i != Integer.MIN_VALUE) {
        g.a(i);
      }
    }
    for (;;)
    {
      g.a(new y(this));
      return;
      g.a(a(2131230763));
      continue;
      if (b == 2)
      {
        i = d.i();
        if (i != Integer.MIN_VALUE) {
          g.a(i);
        } else {
          g.a(a(2131230724));
        }
      }
    }
  }
  
  private void c()
  {
    int i = g.a();
    if (b == 1) {
      d.a(i);
    }
    for (;;)
    {
      if ((f) && (c == a.e())) {
        setResult(-1);
      }
      return;
      if (b == 2) {
        d.b(i);
      }
    }
  }
  
  private void d()
  {
    if (f)
    {
      new ct(this).a(2131428100).b(2131428082).b(2131427339, new aa(this)).c(2131427340, new z(this)).c();
      return;
    }
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    setContentView(2130903263);
    a();
    b();
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
    a = al.a(this);
    paramBundle = a.g();
    if (paramBundle == null)
    {
      finish();
      return;
    }
    d = ((ai)paramBundle.get(c));
    f = false;
    setContentView(2130903263);
    a();
    b();
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
      d();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ThemeColorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */