package com.estrongs.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.TranslateAnimation;
import com.estrongs.android.ui.theme.al;

class am
  implements View.OnClickListener
{
  am(ai paramai) {}
  
  public void onClick(View paramView)
  {
    if (ai.e(a).h() == 1)
    {
      if (a.e == null)
      {
        a.e = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        a.e.setDuration(500L);
        a.f = new TranslateAnimation(1, -1.0F, 1, 0.0F, 1, 0.0F, 1, 0.0F);
        a.f.setDuration(500L);
      }
      ai.e(a).setOutAnimation(a.e);
      ai.e(a).setInAnimation(a.f);
      a.d.setBackgroundDrawable(ai.f(a).a(2130837561));
      a.c.setBackgroundDrawable(ai.g(a).a(2130837514));
      ai.e(a).a(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.widget.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */