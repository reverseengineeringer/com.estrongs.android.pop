package com.estrongs.android.pop.app.imageviewer;

import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.ui.view.ak;
import com.estrongs.chromecast.CastDeviceInfo;
import com.estrongs.chromecast.CastDeviceListener;
import com.estrongs.chromecast.ChromeCastConnectionListener;
import com.estrongs.chromecast.RemoteMediaPlayerListener;

class cf
  implements CastDeviceListener, ChromeCastConnectionListener, RemoteMediaPlayerListener
{
  cf(ViewImage21 paramViewImage21) {}
  
  public void onConnected() {}
  
  public void onConnectionFailed() {}
  
  public void onConnectionSuspended() {}
  
  public void onDeviceAdded(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceRemoved(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceSelected(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDeviceUnSelected(CastDeviceInfo paramCastDeviceInfo)
  {
    if (!a.isFinishing()) {
      ViewImage21.s(a);
    }
  }
  
  public void onDeviceVolumeChanged(CastDeviceInfo paramCastDeviceInfo) {}
  
  public void onDisconnected()
  {
    if (!a.isFinishing()) {
      ViewImage21.s(a);
    }
  }
  
  public void onStatusUpdated(int paramInt)
  {
    if (paramInt == 64535) {
      ak.a(FexApplication.a(), 2131232383, 1);
    }
    while (paramInt != 64536) {
      return;
    }
    ak.a(FexApplication.a(), 2131231901, 1);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */