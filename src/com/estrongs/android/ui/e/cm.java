package com.estrongs.android.ui.e;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.view.a.a;

class cm
  implements View.OnClickListener
{
  cm(cl paramcl) {}
  
  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    paramView = a.b(i);
    if (paramView != null)
    {
      paramView.f();
      a.a(i + cl.a(a), paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */