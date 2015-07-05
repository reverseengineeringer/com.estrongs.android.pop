package com.estrongs.android.pop.app;

import android.view.View;
import com.estrongs.android.ui.d.b;
import com.estrongs.android.ui.view.ac;
import com.estrongs.android.ui.view.by;
import com.estrongs.android.widget.bc;

class fg
  implements bc
{
  fg(PopAudioPlayer paramPopAudioPlayer) {}
  
  public void a(int paramInt) {}
  
  public void a(int paramInt, float paramFloat)
  {
    if (paramFloat != 0.0D)
    {
      paramFloat = Math.abs(paramFloat);
      PopAudioPlayer.r(a).a(paramInt, 1.0F - paramFloat);
      PopAudioPlayer.r(a).a((paramInt + 1) % 2, paramFloat);
    }
  }
  
  public void b(int paramInt) {}
  
  public void c(int paramInt)
  {
    if (PopAudioPlayer.r(a) != null) {
      PopAudioPlayer.r(a).d(paramInt);
    }
    if (paramInt == 0)
    {
      PopAudioPlayer.s(a).setVisibility(0);
      PopAudioPlayer.t(a).setVisibility(8);
      PopAudioPlayer.h(a).a("playing", Boolean.valueOf(false));
      if (PopAudioPlayer.i(a).b()) {
        a.u();
      }
      return;
    }
    PopAudioPlayer.s(a).setVisibility(8);
    PopAudioPlayer.t(a).setVisibility(0);
    PopAudioPlayer.h(a).a("playlist", Boolean.valueOf(false));
  }
  
  public void d(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */