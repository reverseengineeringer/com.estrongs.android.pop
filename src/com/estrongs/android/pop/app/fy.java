package com.estrongs.android.pop.app;

import android.widget.ProgressBar;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ag;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

class fy
  extends gf
  implements ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  public fy(PopAudioPlayer paramPopAudioPlayer) {}
  
  public boolean a()
  {
    PopAudioPlayer.a(a, 3, l());
    return super.a();
  }
  
  public boolean a(int paramInt)
  {
    PopAudioPlayer.a(a, 3, paramInt);
    return super.a(paramInt);
  }
  
  public void b()
  {
    onStatusUpdated(c.r());
  }
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  public void onDisconnected()
  {
    if ((!a.isFinishing()) && (!a.a())) {
      PopAudioPlayer.a(a, false);
    }
    c.n();
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if (PopAudioPlayer.m(a) == 1) {}
    switch (paramInt)
    {
    default: 
    case 2: 
    case 3: 
    case 4: 
    case 1: 
      do
      {
        do
        {
          return;
          PopAudioPlayer.C(a).setVisibility(8);
          PopAudioPlayer.c(a, 1, l());
          return;
          PopAudioPlayer.C(a).setVisibility(8);
          PopAudioPlayer.c(a, 2, l());
          return;
          PopAudioPlayer.C(a).setVisibility(0);
          PopAudioPlayer.c(a, 2, l());
          return;
          PopAudioPlayer.C(a).setVisibility(8);
        } while ((paramInt != 1) || (c.z() != 1));
        PopAudioPlayer.c(a, 0, l());
        paramInt = PopAudioPlayer.a(a).i();
      } while (paramInt < 0);
      PopAudioPlayer.a(a, paramInt, true);
      return;
    }
    ag.a(FexApplication.a(), 2131427798, 1);
    PopAudioPlayer.c(a, 0, l());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */