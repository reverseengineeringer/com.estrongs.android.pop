package com.estrongs.android.ui.view;

import android.app.Activity;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.ui.e.a;
import com.estrongs.android.ui.e.cq;
import com.estrongs.android.ui.e.jm;
import com.estrongs.android.util.l;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class ck
{
  private RelativeLayout a;
  private View b;
  private Map<String, a> c;
  private cn d;
  private int e;
  private String f;
  private boolean g;
  private boolean h;
  private boolean i;
  private Activity j;
  
  public ck(Activity paramActivity, RelativeLayout paramRelativeLayout, int paramInt)
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
    if (b == paramView) {
      return;
    }
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
    paramString = f();
    paramString.setAnimationListener(new cl(this, (String)localObject));
    b.clearAnimation();
    localObject = e();
    paramView.setVisibility(0);
    paramView.setAnimation(paramString);
    paramString.start();
    b.setVisibility(4);
    b.setAnimation((Animation)localObject);
    ((Animation)localObject).start();
    b = paramView;
  }
  
  private Animation e()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.1F);
    localAlphaAnimation.setDuration(200L);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    return localAlphaAnimation;
  }
  
  private Animation f()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.1F, 1.0F);
    localAlphaAnimation.setDuration(200L);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    return localAlphaAnimation;
  }
  
  public a a(String paramString)
  {
    paramString = (a)c.get(paramString);
    if ((paramString instanceof jm)) {
      ((jm)paramString).h();
    }
    return paramString;
  }
  
  public String a()
  {
    return f;
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
      l.a("ToolBarSwitcher", "Illegal command!");
      return;
    }
    f = paramString;
    a locala = a(paramString);
    if ((locala instanceof cq)) {
      ((cq)locala).l();
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
  
  public void b()
  {
    a locala = a(f);
    if (locala != null) {
      locala.g();
    }
    a.removeAllViews();
    c.clear();
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
  
  public boolean c()
  {
    boolean bool2 = false;
    boolean bool1;
    if (g) {
      bool1 = true;
    }
    a locala;
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (f == null);
        locala = a(f);
        bool1 = bool2;
      } while (locala == null);
      bool1 = bool2;
    } while ((locala instanceof jm));
    return locala.e();
  }
  
  public boolean d()
  {
    if (g) {
      return true;
    }
    if (f != null)
    {
      a locala = a(f);
      if (locala != null) {
        return locala.f();
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */