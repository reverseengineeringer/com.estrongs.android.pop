package com.estrongs.android.pop.app;

import android.content.Context;
import com.estrongs.android.ui.view.IndicatorView;
import com.estrongs.android.ui.view.by;

class er
  extends IndicatorView
{
  er(eq parameq, Context paramContext)
  {
    super(paramContext);
  }
  
  public void a(int paramInt)
  {
    int i = 0;
    if ("playlist".equals(PopAudioPlayer.h(a.b).b())) {
      i = 1;
    }
    if (i != paramInt)
    {
      a(i, paramInt);
      a.a(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */