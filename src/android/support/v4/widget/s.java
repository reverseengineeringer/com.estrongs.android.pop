package android.support.v4.widget;

import android.support.v4.view.at;
import android.view.View;
import java.util.ArrayList;

class s
  implements Runnable
{
  final View a;
  
  s(SlidingPaneLayout paramSlidingPaneLayout, View paramView)
  {
    a = paramView;
  }
  
  public void run()
  {
    if (a.getParent() == b)
    {
      at.a(a, 0, null);
      SlidingPaneLayout.a(b, a);
    }
    SlidingPaneLayout.f(b).remove(this);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */