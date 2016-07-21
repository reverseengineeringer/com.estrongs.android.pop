package android.support.design.widget;

import android.support.v4.view.cn;
import android.support.v4.widget.cz;
import android.view.View;

class k
  implements Runnable
{
  private final View b;
  private final int c;
  
  k(BottomSheetBehavior paramBottomSheetBehavior, View paramView, int paramInt)
  {
    b = paramView;
    c = paramInt;
  }
  
  public void run()
  {
    if ((BottomSheetBehavior.j(a) != null) && (BottomSheetBehavior.j(a).a(true)))
    {
      cn.a(b, this);
      return;
    }
    BottomSheetBehavior.b(a, c);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */