package com.estrongs.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.TranslateAnimation;
import com.estrongs.android.ui.theme.al;

class an
  implements View.OnClickListener
{
  an(ai paramai) {}
  
  public void onClick(View paramView)
  {
    if (ai.e(a).h() == 0)
    {
      if (a.g == null)
      {
        a.g = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        a.g.setDuration(500L);
        a.h = new TranslateAnimation(1, 1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        a.h.setDuration(500L);
      }
      ai.e(a).setOutAnimation(a.g);
      ai.e(a).setInAnimation(a.h);
      a.c.setBackgroundDrawable(ai.h(a).a(2130837561));
      a.d.setBackgroundDrawable(ai.i(a).a(2130837514));
      ai.e(a).a(1);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */