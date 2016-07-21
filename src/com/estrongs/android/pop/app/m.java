package com.estrongs.android.pop.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;

@SuppressLint({"NewApi"})
public class m
  implements AudioManager.OnAudioFocusChangeListener
{
  AudioManager a;
  AudioPlayerService b;
  boolean c = false;
  
  public m(Context paramContext, AudioPlayerService paramAudioPlayerService)
  {
    a = ((AudioManager)paramContext.getSystemService("audio"));
    b = paramAudioPlayerService;
  }
  
  public boolean a()
  {
    return 1 == a.requestAudioFocus(this, 3, 1);
  }
  
  public boolean b()
  {
    return 1 == a.abandonAudioFocus(this);
  }
  
  public void onAudioFocusChange(int paramInt)
  {
    if (b == null) {}
    do
    {
      do
      {
        return;
        switch (paramInt)
        {
        case 0: 
        default: 
          return;
        }
      } while ((!b.k()) || (b.m()));
      c = true;
      b.u();
      return;
    } while ((!b.k()) || (!b.m()) || (!c));
    c = false;
    b.F();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */