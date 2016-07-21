package com.estrongs.android.ui.view;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class ba
{
  private static final String a = ba.class.getSimpleName();
  private bc b = null;
  private LayoutInflater c = null;
  private ViewPager d = null;
  private TextView e = null;
  private LinearLayout f = null;
  private View g = null;
  private ay h = null;
  private Context i = null;
  private int j = 0;
  
  public ba(Context paramContext)
  {
    i = paramContext;
    c = LayoutInflater.from(paramContext);
    b = new bc(this, new WeakReference(paramContext));
    d();
    h = new ay();
    d.setAdapter(h);
  }
  
  private void a(View paramView, boolean paramBoolean)
  {
    if (paramView == null) {
      return;
    }
    if (paramBoolean)
    {
      paramView.setBackgroundDrawable(i.getResources().getDrawable(2130838254));
      return;
    }
    paramView.setBackgroundDrawable(i.getResources().getDrawable(2130838253));
  }
  
  private void d()
  {
    try
    {
      View localView = c.inflate(2130903456, null);
      if (localView != null)
      {
        d = ((ViewPager)localView.findViewById(2131625610));
        e = ((TextView)localView.findViewById(2131625612));
        f = ((LinearLayout)localView.findViewById(2131625611));
        d.setOnPageChangeListener(new bb(this));
      }
      g = localView;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public View a()
  {
    return g;
  }
  
  public void b()
  {
    b.removeMessages(1);
  }
  
  public void c()
  {
    h.a();
    d.setAdapter(h);
    d.setCurrentItem(1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */