package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESScrollView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.theme.at;

public class hz
{
  boolean a = false;
  private Context b;
  private boolean c;
  private km d;
  private LinearLayout e;
  private Drawable f;
  private at g;
  private ESScrollView h;
  private LinearLayout i;
  private View j;
  private View k;
  
  public hz(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    e = ((LinearLayout)k.a(b).inflate(2130903218, null));
    d();
  }
  
  private void d()
  {
    g = at.a(b);
    f = g.a(2130838545);
    d = new im(b, c);
    h = ((ESScrollView)e.findViewById(2131624808));
    j = e.findViewById(2131624807);
    k = e.findViewById(2131624810);
    h.getView();
    h.setOnScrollListener(new ia(this));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    i = ((LinearLayout)e.findViewById(2131624809));
    if (i != null)
    {
      i.addView(d.a(), localLayoutParams);
      return;
    }
    e.addView(d.a(), localLayoutParams);
  }
  
  public void a()
  {
    e.setVisibility(0);
    ESScrollView.a(h, i);
    j.setVisibility(4);
    k.setVisibility(4);
    a = false;
  }
  
  public void a(Animation paramAnimation)
  {
    if (i.getMeasuredHeight() - h.getHeight() > 0) {}
    for (a = true;; a = false)
    {
      if (a) {
        j.setVisibility(0);
      }
      return;
    }
  }
  
  public km b()
  {
    return d;
  }
  
  public View c()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.hz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */