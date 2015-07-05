package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ag;
import com.estrongs.chromecast.CastDeviceInfo;
import com.estrongs.chromecast.CastDeviceListener;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

class cg
  implements CastDeviceListener, ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  cg(ViewImage21 paramViewImage21) {}
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  public void onDeviceAdded(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceRemoved(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceSelected(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceUnSelected(CastDeviceInfo paramCastDeviceInfo)
  {
    if (!a.isFinishing()) {
      ViewImage21.r(a);
    }
  }
  
  public void onDeviceVolumeChanged(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDisconnected()
  {
    if (!a.isFinishing()) {
      ViewImage21.r(a);
    }
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if (paramInt == 64535) {
      ag.a(FexApplication.a(), 2131427798, 1);
    }
    while (paramInt != 64536) {
      return;
    }
    ag.a(FexApplication.a(), 2131427766, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */