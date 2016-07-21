package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class fm
{
  public static void a(View paramView, fq paramfq)
  {
    fn localfn = null;
    if (paramfq != null) {
      localfn = new fn(paramfq, paramView);
    }
    paramView.animate().setUpdateListener(localfn);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */