package android.support.v4.view;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

class bw
  extends a
{
  bw(ViewPager paramViewPager) {}
  
  public void a(View paramView, android.support.v4.view.a.a parama)
  {
    boolean bool = true;
    super.a(paramView, parama);
    parama.b(ViewPager.class.getName());
    if ((ViewPager.a(b) != null) && (ViewPager.a(b).a() > 1)) {}
    for (;;)
    {
      parama.i(bool);
      if ((ViewPager.a(b) != null) && (ViewPager.b(b) >= 0) && (ViewPager.b(b) < ViewPager.a(b).a() - 1)) {
        parama.a(4096);
      }
      if ((ViewPager.a(b) != null) && (ViewPager.b(b) > 0) && (ViewPager.b(b) < ViewPager.a(b).a())) {
        parama.a(8192);
      }
      return;
      bool = false;
    }
  }
  
  public boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if ((ViewPager.a(b) != null) && (ViewPager.b(b) >= 0) && (ViewPager.b(b) < ViewPager.a(b).a() - 1))
      {
        b.a(ViewPager.b(b) + 1);
        return true;
      }
      return false;
    }
    if ((ViewPager.a(b) != null) && (ViewPager.b(b) > 0) && (ViewPager.b(b) < ViewPager.a(b).a()))
    {
      b.a(ViewPager.b(b) - 1);
      return true;
    }
    return false;
  }
  
  public void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */