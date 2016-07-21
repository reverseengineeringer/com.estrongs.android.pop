package com.estrongs.android.ui.d;

import android.app.Activity;
import android.content.res.Resources;
import android.support.design.widget.TabLayout;
import android.support.design.widget.cc;
import android.support.design.widget.ch;
import android.view.View;
import android.widget.ImageView;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.theme.at;

public abstract class a
  implements cc
{
  private TabLayout a;
  private int b = -1;
  private Activity c;
  private int d;
  private int e;
  private View f;
  private ImageView g;
  private ImageView h;
  private boolean i = false;
  private boolean j = false;
  
  public a(Activity paramActivity)
  {
    c = paramActivity;
    a = ((TabLayout)paramActivity.findViewById(2131625169));
    f = paramActivity.findViewById(2131625170);
    g = ((ImageView)paramActivity.findViewById(2131625171));
    g.setImageDrawable(at.a(paramActivity).b(2130838564, 2131558745));
    h = ((ImageView)paramActivity.findViewById(2131625172));
    f.setOnClickListener(new b(this, paramActivity));
    a.setOnTabSelectedListener(this);
    a();
  }
  
  private void d(ch paramch)
  {
    a.a(paramch.d(), 0.0F, false);
  }
  
  protected void a()
  {
    int m = 0;
    ImageView localImageView = h;
    if (i) {}
    int n;
    for (int k = 4;; k = 0)
    {
      localImageView.setVisibility(k);
      d = c.getResources().getDimensionPixelOffset(2131165257);
      e = c.getResources().getDimensionPixelOffset(2131165304);
      n = d().a();
      k = m;
      while (k < b())
      {
        a(d().c(k));
        k += 1;
      }
    }
    d(n);
  }
  
  public abstract void a(int paramInt);
  
  public void a(int paramInt, float paramFloat) {}
  
  public void a(ch paramch)
  {
    if (paramch.b() != null) {
      paramch.b().performClick();
    }
  }
  
  public void a(h paramh)
  {
    ch localch = a.a();
    localch.a(2130903321);
    new c(this, localch, paramh).a();
    a.a(localch, false);
  }
  
  public void a(h paramh, int paramInt)
  {
    ch localch = a.a();
    localch.a(2130903321);
    new c(this, localch, paramh).a();
    a.a(localch, paramInt, false);
  }
  
  public void a(boolean paramBoolean)
  {
    if (f != null)
    {
      if (!paramBoolean) {
        break label53;
      }
      j = true;
      g.setImageDrawable(at.a(c).b(2130838597, 2131558745));
      if (!i) {
        h.setVisibility(4);
      }
    }
    return;
    label53:
    f.setVisibility(4);
  }
  
  protected int b()
  {
    return d().c();
  }
  
  public abstract void b(int paramInt);
  
  public void b(ch paramch)
  {
    if (paramch.a() != null) {
      ((c)paramch.a()).c();
    }
  }
  
  public void c()
  {
    b = d().a();
    d(b);
  }
  
  public void c(int paramInt)
  {
    if (paramInt < a.getTabCount()) {
      a.b(paramInt);
    }
  }
  
  public void c(ch paramch)
  {
    if (paramch.b() != null) {
      paramch.b().performClick();
    }
  }
  
  public i d()
  {
    if ((c instanceof FileExplorerActivity)) {
      return ((FileExplorerActivity)c).au();
    }
    return new i();
  }
  
  public void d(int paramInt)
  {
    b = paramInt;
    if (!a.a(b).g()) {
      a.a(b).f();
    }
  }
  
  public void e()
  {
    if (f != null)
    {
      f.setVisibility(0);
      g.setImageDrawable(at.a(c).b(2130838564, 2131558745));
      j = false;
      if (!i) {
        h.setVisibility(0);
      }
    }
  }
  
  public void e(int paramInt)
  {
    if (paramInt < a.getTabCount())
    {
      h localh = d().c(paramInt);
      new c(this, a.a(paramInt), localh).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */