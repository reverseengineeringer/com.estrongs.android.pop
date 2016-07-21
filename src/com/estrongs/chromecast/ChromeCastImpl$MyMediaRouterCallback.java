package com.estrongs.chromecast;

import android.support.v7.media.MediaRouter;
import android.support.v7.media.MediaRouter.Callback;
import android.support.v7.media.MediaRouter.RouteInfo;
import com.google.android.gms.cast.CastDevice;
import java.util.ArrayList;
import java.util.Iterator;

final class ChromeCastImpl$MyMediaRouterCallback
  extends MediaRouter.Callback
{
  private ChromeCastImpl$MyMediaRouterCallback(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onRouteAdded(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    if (CastDevice.b(paramRouteInfo.getExtras()) != null)
    {
      CastDeviceInfoImpl localCastDeviceInfoImpl = new CastDeviceInfoImpl(paramRouteInfo);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$300(this$0).iterator();
        if (localIterator.hasNext()) {
          ((CastDeviceListener)localIterator.next()).onDeviceAdded(localCastDeviceInfoImpl);
        }
      }
    }
    super.onRouteAdded(paramMediaRouter, paramRouteInfo);
  }
  
  public void onRouteRemoved(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    if (CastDevice.b(paramRouteInfo.getExtras()) != null)
    {
      CastDeviceInfoImpl localCastDeviceInfoImpl = new CastDeviceInfoImpl(paramRouteInfo);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$300(this$0).iterator();
        if (localIterator.hasNext()) {
          ((CastDeviceListener)localIterator.next()).onDeviceRemoved(localCastDeviceInfoImpl);
        }
      }
    }
    super.onRouteRemoved(paramMediaRouter, paramRouteInfo);
  }
  
  public void onRouteSelected(MediaRouter arg1, MediaRouter.RouteInfo paramRouteInfo)
  {
    paramRouteInfo = new CastDeviceInfoImpl(paramRouteInfo);
    ChromeCastImpl.access$102(this$0, paramRouteInfo);
    synchronized (ChromeCastImpl.access$200())
    {
      Iterator localIterator = ChromeCastImpl.access$300(this$0).iterator();
      if (localIterator.hasNext()) {
        ((CastDeviceListener)localIterator.next()).onDeviceSelected(paramRouteInfo);
      }
    }
    ChromeCastImpl.access$400(this$0);
  }
  
  public void onRouteUnselected(MediaRouter arg1, MediaRouter.RouteInfo paramRouteInfo)
  {
    this$0.teardown();
    ChromeCastImpl.access$102(this$0, null);
    if (CastDevice.b(paramRouteInfo.getExtras()) != null)
    {
      paramRouteInfo = new CastDeviceInfoImpl(paramRouteInfo);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$300(this$0).iterator();
        if (localIterator.hasNext()) {
          ((CastDeviceListener)localIterator.next()).onDeviceUnSelected(paramRouteInfo);
        }
      }
    }
  }
  
  public void onRouteVolumeChanged(MediaRouter paramMediaRouter, MediaRouter.RouteInfo paramRouteInfo)
  {
    if (CastDevice.b(paramRouteInfo.getExtras()) != null)
    {
      CastDeviceInfoImpl localCastDeviceInfoImpl = new CastDeviceInfoImpl(paramRouteInfo);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$300(this$0).iterator();
        if (localIterator.hasNext()) {
          ((CastDeviceListener)localIterator.next()).onDeviceVolumeChanged(localCastDeviceInfoImpl);
        }
      }
    }
    super.onRouteVolumeChanged(paramMediaRouter, paramRouteInfo);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.MyMediaRouterCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */