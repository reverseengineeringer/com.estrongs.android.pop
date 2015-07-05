package com.estrongs.android.pop.app;

import android.view.View;
import android.view.View.OnClickListener;

class ez
  implements View.OnClickListener
{
  ez(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onClick(View paramView)
  {
    if (PopAudioPlayer.l(a).p())
    {
      if (PopAudioPlayer.m(a) == 1)
      {
        a.f();
        return;
      }
      PopAudioPlayer.n(a);
      PopAudioPlayer.a(a).a();
      return;
    }
    if (PopAudioPlayer.o(a) == null) {
      PopAudioPlayer.p(a);
    }
    PopAudioPlayer.o(a).show();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */