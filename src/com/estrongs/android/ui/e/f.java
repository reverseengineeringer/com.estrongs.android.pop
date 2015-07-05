package com.estrongs.android.ui.e;

import android.view.View;
import android.view.View.OnClickListener;
import com.estrongs.android.view.a.a;

class f
  implements View.OnClickListener
{
  f(c paramc) {}
  
  public void onClick(View paramView)
  {
    try
    {
      int i = ((Integer)paramView.getTag()).intValue();
      a.a(i).f();
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.e.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */