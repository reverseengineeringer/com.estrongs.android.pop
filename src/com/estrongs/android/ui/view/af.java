package com.estrongs.android.ui.view;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.List;

class af
  implements View.OnClickListener
{
  af(ac paramac, int paramInt) {}
  
  public void onClick(View paramView)
  {
    if (ac.b(b))
    {
      if (ac.c(b).contains(Integer.valueOf(a))) {
        ac.c(b).remove(Integer.valueOf(a));
      }
      for (;;)
      {
        ac.a(b).sendEmptyMessage(1200002);
        b.notifyDataSetChanged();
        return;
        ac.c(b).add(Integer.valueOf(a));
      }
    }
    paramView = ac.a(b).obtainMessage(1200003);
    arg1 = a;
    if (ac.d(b) == a) {}
    for (int i = 1;; i = 0)
    {
      arg2 = i;
      ac.a(b).sendMessage(paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */