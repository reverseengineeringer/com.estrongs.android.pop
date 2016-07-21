package com.estrongs.android.pop.app;

import android.content.Intent;
import android.view.View;
import android.widget.MediaController.MediaPlayerControl;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ak;
import com.estrongs.chromecast.CastDeviceInfo;
import com.estrongs.chromecast.CastDeviceListener;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

class kt
  implements MediaController.MediaPlayerControl, CastDeviceListener, ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  private boolean b = false;
  
  kt(PopVideoPlayer paramPopVideoPlayer) {}
  
  public boolean a()
  {
    return b;
  }
  
  public boolean canPause()
  {
    return true;
  }
  
  public boolean canSeekBackward()
  {
    return true;
  }
  
  public boolean canSeekForward()
  {
    return true;
  }
  
  public int getAudioSessionId()
  {
    return 0;
  }
  
  public int getBufferPercentage()
  {
    return 0;
  }
  
  public int getCurrentPosition()
  {
    b = true;
    return (int)PopVideoPlayer.r(a).t();
  }
  
  public int getDuration()
  {
    return (int)PopVideoPlayer.r(a).s();
  }
  
  public boolean isPlaying()
  {
    boolean bool = true;
    if ((PopVideoPlayer.r(a).r() > 0) && (PopVideoPlayer.r(a).r() != 1) && (PopVideoPlayer.r(a).r() != 0) && (PopVideoPlayer.r(a).r() != 3)) {}
    for (;;)
    {
      if (!bool) {
        b = false;
      }
      return bool;
      bool = false;
    }
  }
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  public void onDeviceAdded(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceRemoved(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceSelected(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceUnSelected(CastDeviceInfo paramCastDeviceInfo)
  {
    if (!a.isFinishing()) {
      PopVideoPlayer.z(a);
    }
  }
  
  public void onDeviceVolumeChanged(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDisconnected()
  {
    if (!a.isFinishing()) {
      PopVideoPlayer.z(a);
    }
    PopVideoPlayer.r(a).n();
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if (PopVideoPlayer.v(a) == 1) {
      switch (paramInt)
      {
      default: 
        a.b.setVisibility(8);
        PopVideoPlayer.e(a, true);
        PopVideoPlayer.j(a);
        if (paramInt == 64535) {
          ak.a(FexApplication.a(), 2131232383, 1);
        }
        break;
      }
    }
    for (;;)
    {
      if ((paramInt == 1) && (PopVideoPlayer.r(a).z() == 1))
      {
        if (a.getIntent().getBooleanExtra("Chromecast", false)) {
          a.finish();
        }
        a.b.setVisibility(8);
        PopVideoPlayer.e(a, false);
      }
      if (paramInt < 0) {
        PopVideoPlayer.e(a, false);
      }
      return;
      a.b.setVisibility(0);
      break;
      if (paramInt == 64536) {
        ak.a(FexApplication.a(), 2131231901, 1);
      }
    }
  }
  
  public void pause()
  {
    PopVideoPlayer.r(a).l();
  }
  
  public void seekTo(int paramInt)
  {
    PopVideoPlayer.r(a).a(paramInt);
  }
  
  public void start()
  {
    PopVideoPlayer.r(a).j();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */