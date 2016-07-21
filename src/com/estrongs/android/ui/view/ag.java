package com.estrongs.android.ui.view;

import android.view.View;
import android.view.View.OnLongClickListener;

class ag
  implements View.OnLongClickListener
{
  ag(ac paramac) {}
  
  public boolean onLongClick(View paramView)
  {
    if (a.b())
    {
      paramView.performClick();
      return true;
    }
    a.a(true);
    paramView.performClick();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */