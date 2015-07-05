package com.estrongs.android.ui.theme;

import android.content.Context;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class ah
  implements View.OnTouchListener
{
  ah(af paramaf, int paramInt) {}
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0) {
      paramView.setBackgroundColor(af.a(b).getResources().getColor(2131230720));
    }
    for (;;)
    {
      return false;
      if ((paramMotionEvent.getAction() == 3) || (paramMotionEvent.getAction() == 1)) {
        paramView.setBackgroundDrawable(b.b(a));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.theme.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */