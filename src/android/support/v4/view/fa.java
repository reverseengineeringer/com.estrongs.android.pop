package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

class fa
  implements Runnable
{
  WeakReference<View> a;
  ex b;
  
  private fa(ez paramez, ex paramex, View paramView)
  {
    a = new WeakReference(paramView);
    b = paramex;
  }
  
  public void run()
  {
    View localView = (View)a.get();
    if (localView != null) {
      ez.a(c, b, localView);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */