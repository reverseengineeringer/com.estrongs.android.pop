package com.estrongs.android.b.a.b.a;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import com.estrongs.android.pop.ai;
import com.estrongs.android.pop.app.cleaner.i;

class d
  implements View.OnClickListener
{
  d(c paramc, PopupWindow paramPopupWindow) {}
  
  public void onClick(View paramView)
  {
    ai.b(b.a).d(System.currentTimeMillis());
    b.b.a(b.c);
    a.dismiss();
    try
    {
      paramView = com.estrongs.android.j.c.a(b.a);
      if (paramView != null) {
        paramView.a("Card_Ignore");
      }
      return;
    }
    catch (Exception paramView)
    {
      paramView.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.b.a.b.a.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */