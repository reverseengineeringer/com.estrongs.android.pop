package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;

class iu
  implements View.OnClickListener
{
  iu(PopVideoPlayer paramPopVideoPlayer) {}
  
  public void onClick(View paramView)
  {
    if (PopVideoPlayer.r(a).p())
    {
      if (PopVideoPlayer.v(a) == 1)
      {
        a.b();
        return;
      }
      PopVideoPlayer.w(a);
      return;
    }
    if (PopVideoPlayer.t(a) == null) {
      PopVideoPlayer.u(a);
    }
    PopVideoPlayer.t(a).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.iu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */