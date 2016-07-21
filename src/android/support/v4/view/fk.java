package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class fk
{
  public static void a(View paramView, fo paramfo)
  {
    if (paramfo != null)
    {
      paramView.animate().setListener(new fl(paramfo, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */