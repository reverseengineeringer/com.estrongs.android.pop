package com.estrongs.android.ui.view;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import java.util.List;

class bd
  implements View.OnKeyListener
{
  bd(IndicatorView paramIndicatorView) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((a.isFocused()) && (paramKeyEvent.getAction() == 0))
    {
      if (paramInt == 21)
      {
        paramInt = IndicatorView.e(a) - 1;
        if ((paramInt >= 0) && (paramInt < IndicatorView.d(a).size()))
        {
          IndicatorView.c(a, paramInt);
          a.invalidate();
          return true;
        }
        return false;
      }
      if (paramInt == 22)
      {
        paramInt = IndicatorView.e(a) + 1;
        if ((paramInt >= 0) && (paramInt < IndicatorView.d(a).size()))
        {
          IndicatorView.c(a, paramInt);
          a.invalidate();
          return true;
        }
        return false;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */