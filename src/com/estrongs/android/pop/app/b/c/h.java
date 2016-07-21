package com.estrongs.android.pop.app.b.c;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.cn;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.estrongs.android.pop.app.b.b;
import com.estrongs.android.ui.d.g;
import com.estrongs.android.util.bk;

public abstract class h
  extends l
{
  protected LinearLayout a;
  protected TextView b;
  protected ImageView c;
  protected TextView d;
  protected ImageView e;
  protected FrameLayout f;
  protected RelativeLayout g;
  protected LinearLayout h;
  protected View i;
  protected View j;
  protected View k;
  protected View l;
  protected View m;
  
  public h(Context paramContext)
  {
    super(paramContext, 2130903316);
  }
  
  private void c()
  {
    if (itemView.findViewById(16908308) == null)
    {
      TextView localTextView = new TextView(n);
      localTextView.setTextColor(n.getResources().getColorStateList(2131558494));
      localTextView.setText(n.getResources().getString(2131231674));
      localTextView.setTextSize(0, n.getResources().getDimensionPixelSize(2131165262));
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      topMargin = n.getResources().getDimensionPixelSize(2131165262);
      localLayoutParams.addRule(10);
      localTextView.setId(16908308);
      ((RelativeLayout)itemView).addView(localTextView, localLayoutParams);
      a.getLayoutParams()).topMargin = n.getResources().getDimensionPixelSize(2131165313);
    }
  }
  
  private void d()
  {
    View localView = itemView.findViewById(16908308);
    if (localView != null)
    {
      ((ViewGroup)itemView).removeView(localView);
      a.getLayoutParams()).topMargin = 0;
    }
  }
  
  protected abstract View a();
  
  protected void a(View paramView)
  {
    a = ((LinearLayout)paramView.findViewById(2131625153));
    b = ((TextView)paramView.findViewById(2131625155));
    c = ((ImageView)paramView.findViewById(2131625154));
    d = ((TextView)paramView.findViewById(2131625158));
    e = ((ImageView)paramView.findViewById(2131625159));
    cn.e(e, -90.0F);
    f = ((FrameLayout)paramView.findViewById(2131625156));
    g = ((RelativeLayout)paramView.findViewById(2131625157));
    h = ((LinearLayout)paramView.findViewById(2131625160));
    i = paramView.findViewById(2131624939);
    b();
    j = a();
    k = a();
    l = a();
    m = a();
  }
  
  public void a(Object paramObject)
  {
    paramObject = (b)paramObject;
    if (f)
    {
      a.setVisibility(0);
      b.setText(a);
      if (!g) {
        break label287;
      }
      f.setPadding(0, 0, 0, n.getResources().getDimensionPixelSize(2131165273));
      label60:
      i.setPadding(0, -n.getResources().getDimensionPixelSize(2131165255), 0, -n.getResources().getDimensionPixelSize(2131165255));
      if (!h) {
        break label301;
      }
      if (k) {
        c();
      }
      c.setImageResource(2130838112);
      b.setTextColor(n.getResources().getColorStateList(2131558484));
    }
    for (;;)
    {
      d.setText(((b)paramObject).a(n));
      e.setVisibility(0);
      if (bk.p())
      {
        g.setFocusable(true);
        g.setBackgroundResource(2130838111);
        g.setPadding(g.a(n, 15.0F), g.a(n, 15.0F), g.a(n, 15.0F), 0);
      }
      g.setOnClickListener(new i(this, (b)paramObject));
      j.setVisibility(8);
      k.setVisibility(8);
      l.setVisibility(8);
      m.setVisibility(8);
      return;
      a.setVisibility(8);
      break;
      label287:
      f.setPadding(0, 0, 0, 0);
      break label60;
      label301:
      d();
      c.setImageResource(2130838113);
      b.setTextColor(n.getResources().getColorStateList(2131558494));
    }
  }
  
  protected abstract void b();
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.b.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */