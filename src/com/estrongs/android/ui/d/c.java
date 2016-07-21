package com.estrongs.android.ui.d;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.design.widget.ch;
import android.support.v4.view.cn;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.util.bl;

class c
{
  public View a;
  public ImageView b;
  public TextView c;
  public ImageView d;
  private h f;
  
  public c(a parama, ch paramch, h paramh)
  {
    f = paramh;
    paramh = paramch.b();
    a = bl.a(paramh, 2131625165);
    b = ((ImageView)bl.a(paramh, 2131625166));
    c = ((TextView)bl.a(paramh, 2131625167));
    d = ((ImageView)bl.a(paramh, 2131625168));
    d.setOnClickListener(new d(this, parama));
    paramh.setOnClickListener(new e(this, parama, paramh, paramch));
    paramch.a(this);
  }
  
  public void a()
  {
    Drawable localDrawable = f.c(a.c(e));
    String str = f.d(a.c(e));
    b.setImageDrawable(localDrawable);
    cn.c(b, 0.3F);
    b.setSelected(false);
    c.setText(str);
    if (f.a().equals("#home_page#"))
    {
      d.setClickable(false);
      d.setVisibility(8);
    }
    localDrawable = a.c(e).getResources().getDrawable(2130838006);
    d.setImageDrawable(bl.a(a.c(e), localDrawable, 2131558491));
  }
  
  public void b()
  {
    if (f.a().equals("#home_page#"))
    {
      d.setVisibility(8);
      d.setClickable(false);
    }
    for (;;)
    {
      c.setVisibility(0);
      a.setBackgroundResource(2130837688);
      a.setPadding(a.e(e), 0, 0, 0);
      ViewGroup.LayoutParams localLayoutParams = b.getLayoutParams();
      int i = a.c(e).getResources().getDimensionPixelOffset(2131165262);
      height = i;
      width = i;
      b.setLayoutParams(localLayoutParams);
      b.setSelected(true);
      return;
      d.setVisibility(0);
      d.setClickable(true);
    }
  }
  
  public void c()
  {
    c.setVisibility(8);
    d.setVisibility(8);
    d.setClickable(false);
    a.setBackgroundResource(17170445);
    a.setPadding(a.f(e), 0, a.f(e), 0);
    ViewGroup.LayoutParams localLayoutParams = b.getLayoutParams();
    int i = a.c(e).getResources().getDimensionPixelOffset(2131165257);
    height = i;
    width = i;
    b.setLayoutParams(localLayoutParams);
    b.setSelected(false);
    cn.c(b, 0.3F);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */