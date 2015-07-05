package com.estrongs.android.pop.app;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

class gb
  implements SeekBar.OnSeekBarChangeListener
{
  gb(ga paramga, PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if ((PopAudioPlayer.a(b.a) != null) && (PopAudioPlayer.a(b.a).e()) && (paramBoolean) && (PopAudioPlayer.a(b.a).m() > 0L))
    {
      ga.a(b, paramInt);
      ga.a(b).setText(PopAudioPlayer.b(b.a, paramInt));
      PopAudioPlayer.c(b.a, 1000);
      if (!ga.b(b)) {
        PopAudioPlayer.a(b.a).a((int)ga.c(b));
      }
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    ga.a(b, true);
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    ga.a(b, false);
    if (ga.c(b) != -1L) {
      PopAudioPlayer.a(b.a).a((int)ga.c(b));
    }
    ga.a(b, -1L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */