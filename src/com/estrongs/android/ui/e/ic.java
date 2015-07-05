package com.estrongs.android.ui.e;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESScrollView;
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.ui.theme.al;

public class ic
{
  boolean a = false;
  private Context b;
  private boolean c;
  private jk d;
  private LinearLayout e;
  private Drawable f;
  private al g;
  private ESScrollView h;
  private LinearLayout i;
  private View j;
  private View k;
  
  public ic(Context paramContext, boolean paramBoolean)
  {
    b = paramContext;
    c = paramBoolean;
    e = ((LinearLayout)g.a(b).inflate(2130903121, null));
    d();
  }
  
  private void d()
  {
    g = al.a(b);
    f = g.a(2130838177);
    d = new io(b, c);
    h = ((ESScrollView)e.findViewById(2131362218));
    j = e.findViewById(2131362217);
    k = e.findViewById(2131362220);
    h.b();
    h.a(new id(this));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    i = ((LinearLayout)e.findViewById(2131362219));
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
  
  public jk b()
  {
    return d;
  }
  
  public View c()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */