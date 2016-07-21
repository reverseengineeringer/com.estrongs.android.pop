package com.estrongs.android.pop.app;

import android.widget.ProgressBar;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ak;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

class gl
  extends gs
  implements ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  public gl(PopAudioPlayer paramPopAudioPlayer) {}
  
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
    if ((!a.isFinishing()) && (!a.d())) {
      PopAudioPlayer.b(a, false);
    }
    c.n();
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if (PopAudioPlayer.C(a) == 1) {}
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
          PopAudioPlayer.D(a).setVisibility(8);
          PopAudioPlayer.c(a, 1, l());
          return;
          PopAudioPlayer.D(a).setVisibility(8);
          PopAudioPlayer.c(a, 2, l());
          return;
          PopAudioPlayer.D(a).setVisibility(0);
          PopAudioPlayer.c(a, 2, l());
          return;
          PopAudioPlayer.D(a).setVisibility(8);
        } while ((paramInt != 1) || (c.z() != 1));
        PopAudioPlayer.c(a, 0, l());
        paramInt = PopAudioPlayer.a(a).i();
      } while (paramInt < 0);
      PopAudioPlayer.a(a, paramInt, true);
      return;
    }
    ak.a(FexApplication.a(), 2131232383, 1);
    PopAudioPlayer.c(a, 0, l());
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */