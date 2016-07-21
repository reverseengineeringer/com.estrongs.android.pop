package com.estrongs.android.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.ui.theme.at;

public abstract class bc
  extends ax
{
  protected Context e;
  protected at f;
  private View g;
  private String h;
  private View i;
  private int j;
  private int k;
  private ImageView l;
  private ImageView m;
  private ImageView n;
  private ImageView o;
  private int p;
  private int q;
  private boolean r = true;
  
  public bc(Context paramContext, View paramView, String paramString, int paramInt, Rect paramRect, boolean paramBoolean)
  {
    super(paramView, paramRect);
    e = paramContext;
    g = paramView;
    h = paramString;
    r = paramBoolean;
    c(paramInt);
    a();
  }
  
  private void a()
  {
    f = at.a(e);
    i = k.a(e).inflate(2130903381, null);
    Object localObject = f.a(2130838262);
    a(i);
    a(e.getResources().getDrawable(2130837692));
    int i1 = ((Drawable)localObject).getIntrinsicWidth() / 2;
    q = i1;
    p = i1;
    a(h);
    localObject = (WindowManager)e.getSystemService("window");
    j = ((WindowManager)localObject).getDefaultDisplay().getWidth();
    k = ((WindowManager)localObject).getDefaultDisplay().getHeight();
    ((WindowManager)localObject).getDefaultDisplay().getHeight();
    a(-1, -1);
    b(j);
    a(k);
    l = ((ImageView)i.findViewById(2131625383));
    l.setVisibility(8);
    m = ((ImageView)i.findViewById(2131625390));
    m.setVisibility(8);
    n = ((ImageView)i.findViewById(2131625386));
    n.setVisibility(8);
    o = ((ImageView)i.findViewById(2131625388));
    o.setVisibility(8);
    a(true);
    b(true);
    c(false);
    b(g);
    m();
    b();
  }
  
  private void d()
  {
    TextView localTextView = (TextView)i.findViewById(2131625385);
    if ((h != null) && (!h.equals(""))) {
      localTextView.setText(h);
    }
  }
  
  private void d(int paramInt)
  {
    if (j() == null) {
      return;
    }
    super.a(g, 0, 0, 0);
  }
  
  private void m()
  {
    if (!r) {}
    int i1;
    do
    {
      return;
      if (k() == 0)
      {
        l.setVisibility(0);
        i2 = l.getDrawable().getIntrinsicWidth();
        i1 = j().centerX() - i2 / 2;
        if (i1 < p) {
          i1 = p;
        }
        for (;;)
        {
          i.findViewById(2131625382)).getLayoutParams().width = i1;
          return;
          if (i1 > j - q - i2) {
            i1 = j - q - i2;
          }
        }
      }
      if (k() == 1)
      {
        m.setVisibility(0);
        i2 = m.getDrawable().getIntrinsicWidth();
        i1 = j().centerX() - i2 / 2;
        if (i1 < p) {
          i1 = p;
        }
        for (;;)
        {
          i.findViewById(2131625389)).getLayoutParams().width = i1;
          return;
          if (i1 > j - q - i2) {
            i1 = j - q - i2;
          }
        }
      }
      if (k() == 2)
      {
        n.setVisibility(0);
        i3 = n.getDrawable().getIntrinsicHeight();
        i2 = j().centerY() - i3 / 2 - d.top - g.a(e, 54.0F);
        if (i2 < 0) {
          i1 = 0;
        }
        for (;;)
        {
          n.getLayoutParams()).topMargin = i1;
          return;
          i1 = i2;
          if (i2 > d.height() - q - i3) {
            i1 = d.height() - q - i3;
          }
        }
      }
    } while (k() != 3);
    o.setVisibility(0);
    int i3 = o.getDrawable().getIntrinsicHeight();
    int i2 = j().centerY() - i3 / 2 - d.top - g.a(e, 54.0F);
    if (i2 < 0) {
      i1 = 0;
    }
    for (;;)
    {
      o.getLayoutParams()).topMargin = i1;
      return;
      i1 = i2;
      if (i2 > d.height() - q - i3) {
        i1 = d.height() - q - i3;
      }
    }
  }
  
  protected void a(View paramView, FrameLayout.LayoutParams paramLayoutParams)
  {
    FrameLayout localFrameLayout = (FrameLayout)i.findViewById(2131625387);
    localFrameLayout.removeAllViews();
    localFrameLayout.addView(paramView, paramLayoutParams);
  }
  
  protected void a(String paramString)
  {
    h = paramString;
    d();
  }
  
  protected abstract void b();
  
  public void c()
  {
    if (!e()) {
      d(j().centerY());
    }
    while (i.getVisibility() != 8) {
      return;
    }
    i.setVisibility(0);
    h();
  }
  
  protected RelativeLayout l()
  {
    return (RelativeLayout)i.findViewById(2131625384);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */