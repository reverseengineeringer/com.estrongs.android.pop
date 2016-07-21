package com.estrongs.android.pop.app;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;

class go
  implements SeekBar.OnSeekBarChangeListener
{
  go(gn paramgn, PopAudioPlayer paramPopAudioPlayer) {}
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if ((PopAudioPlayer.a(b.a) != null) && (PopAudioPlayer.a(b.a).e()) && (paramBoolean) && (PopAudioPlayer.a(b.a).m() > 0L))
    {
      gn.a(b, paramInt);
      gn.a(b).setText(PopAudioPlayer.b(b.a, paramInt));
      PopAudioPlayer.c(b.a, 1000);
      if (!gn.b(b)) {
        PopAudioPlayer.a(b.a).a((int)gn.c(b));
      }
    }
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar)
  {
    gn.a(b, true);
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    gn.a(b, false);
    if (gn.c(b) != -1L) {
      PopAudioPlayer.a(b.a).a((int)gn.c(b));
    }
    gn.a(b, -1L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.go
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */