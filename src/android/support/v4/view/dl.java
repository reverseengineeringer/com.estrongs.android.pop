package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

final class dl
  implements View.OnApplyWindowInsetsListener
{
  dl(bv parambv) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new fs(paramWindowInsets);
    return ((fs)a.onApplyWindowInsets(paramView, paramWindowInsets)).g();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */