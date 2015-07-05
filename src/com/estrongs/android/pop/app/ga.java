package com.estrongs.android.pop.app;

import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;

class ga
{
  private TextView b;
  private TextView c;
  private SeekBar d;
  private long e = -1L;
  private boolean f = false;
  
  public ga(PopAudioPlayer paramPopAudioPlayer)
  {
    View localView = paramPopAudioPlayer.findViewById(2131361933);
    b = ((TextView)localView.findViewById(2131361934));
    c = ((TextView)localView.findViewById(2131361936));
    d = ((SeekBar)localView.findViewById(2131361935));
    paramPopAudioPlayer = new gb(this, paramPopAudioPlayer);
    d.setOnSeekBarChangeListener(paramPopAudioPlayer);
    a();
  }
  
  public void a()
  {
    b.setText("00:00");
    c.setText("00:00");
    d.setMax(1000);
    d.setProgress(0);
  }
  
  public void a(int paramInt)
  {
    c.setText(PopAudioPlayer.b(a, paramInt));
    d.setMax(paramInt);
  }
  
  public void b(int paramInt)
  {
    b.setText(PopAudioPlayer.b(a, paramInt));
    d.setProgress(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */