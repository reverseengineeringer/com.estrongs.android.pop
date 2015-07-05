package com.estrongs.android.ui.view;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.ui.e.a;
import com.estrongs.android.ui.e.cp;
import com.estrongs.android.ui.e.is;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class by
{
  private RelativeLayout a;
  private View b;
  private Map<String, a> c;
  private ca d;
  private int e;
  private String f;
  private boolean g;
  private boolean h;
  private boolean i;
  private Activity j;
  
  public by(Activity paramActivity, RelativeLayout paramRelativeLayout, int paramInt)
  {
    j = paramActivity;
    a = paramRelativeLayout;
    e = paramInt;
    d = null;
    c = new HashMap();
    g = false;
    h = true;
    i = true;
  }
  
  private void a(View paramView)
  {
    if (b != null) {
      b.setVisibility(4);
    }
    b = paramView;
    paramView.setVisibility(0);
  }
  
  private void a(View paramView, String paramString)
  {
    if (b == paramView) {
      return;
    }
    if (b == null)
    {
      paramView.setVisibility(0);
      b = paramView;
      return;
    }
    Object localObject = new String(paramString);
    paramString = h();
    paramString.setAnimationListener(new bz(this, (String)localObject));
    b.clearAnimation();
    localObject = g();
    paramView.setVisibility(0);
    paramView.setAnimation(paramString);
    paramString.start();
    b.setVisibility(4);
    b.setAnimation((Animation)localObject);
    ((Animation)localObject).start();
    b = paramView;
  }
  
  private Animation g()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.1F);
    localAlphaAnimation.setDuration(200L);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    return localAlphaAnimation;
  }
  
  private Animation h()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
    localAlphaAnimation.setDuration(200L);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    return localAlphaAnimation;
  }
  
  public a a(String paramString)
  {
    paramString = (a)c.get(paramString);
    if ((paramString instanceof is)) {
      ((is)paramString).h();
    }
    return paramString;
  }
  
  public void a(String paramString, a parama)
  {
    parama.a().setVisibility(4);
    c.put(paramString, parama);
    paramString = new RelativeLayout.LayoutParams(-1, -1);
    if (parama.a().getParent() == null) {
      a.addView(parama.a(), paramString);
    }
  }
  
  public void a(String paramString, Boolean paramBoolean)
  {
    if ((!h) && (paramBoolean.booleanValue())) {
      return;
    }
    if ((paramString == null) || (!c.containsKey(paramString)))
    {
      Log.v("ToolBarSwitcher", "Illegal command!");
      return;
    }
    f = paramString;
    a locala = a(paramString);
    if ((locala instanceof cp)) {
      ((cp)locala).l();
    }
    Boolean localBoolean = paramBoolean;
    if (paramString == "normal_mode")
    {
      localBoolean = paramBoolean;
      if ((j instanceof ESAbsToolbarActivity))
      {
        localBoolean = paramBoolean;
        if (((ESAbsToolbarActivity)j).c())
        {
          ((ESAbsToolbarActivity)j).b(false);
          ((ESAbsToolbarActivity)j).a(false);
          localBoolean = Boolean.valueOf(false);
        }
      }
    }
    if (localBoolean.booleanValue())
    {
      a(locala.a(), paramString);
      return;
    }
    a(locala.a());
  }
  
  public void a(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public boolean a()
  {
    return g;
  }
  
  public String b()
  {
    return f;
  }
  
  public void b(boolean paramBoolean)
  {
    i = paramBoolean;
    if (!paramBoolean)
    {
      Iterator localIterator = c.values().iterator();
      while (localIterator.hasNext()) {
        ((a)localIterator.next()).a().setVisibility(4);
      }
    }
    if (paramBoolean) {
      b.setVisibility(0);
    }
  }
  
  public void c()
  {
    a locala = a(f);
    if (locala != null) {
      locala.g();
    }
    a.removeAllViews();
    c.clear();
  }
  
  public boolean d()
  {
    if (f != null)
    {
      a locala = a(f);
      if (locala != null) {
        return locala.e();
      }
    }
    return false;
  }
  
  public boolean e()
  {
    if (f != null)
    {
      a locala = a(f);
      if (locala != null) {
        return locala.f();
      }
    }
    return false;
  }
  
  public View f()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */