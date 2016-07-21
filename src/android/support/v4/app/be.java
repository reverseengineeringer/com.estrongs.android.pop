package android.support.v4.app;

import android.transition.Transition;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class be
  implements ViewTreeObserver.OnPreDrawListener
{
  be(View paramView1, Transition paramTransition1, ArrayList paramArrayList1, Transition paramTransition2, ArrayList paramArrayList2, Transition paramTransition3, ArrayList paramArrayList3, Map paramMap, ArrayList paramArrayList4, Transition paramTransition4, View paramView2) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    if (b != null) {
      ba.a(b, c);
    }
    if (d != null) {
      ba.a(d, e);
    }
    if (f != null) {
      ba.a(f, g);
    }
    Iterator localIterator = h.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      ((View)localEntry.getValue()).setTransitionName((String)localEntry.getKey());
    }
    int n = i.size();
    int m = 0;
    while (m < n)
    {
      j.excludeTarget((View)i.get(m), false);
      m += 1;
    }
    j.excludeTarget(k, false);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */