package com.estrongs.chromecast;

import android.support.v7.media.MediaRouter.RouteInfo;
import com.google.android.gms.cast.CastDevice;
import java.net.InetAddress;
import java.net.URL;

public class CastDeviceInfoImpl
  extends CastDeviceInfo
{
  private CastDevice mDevice;
  private MediaRouter.RouteInfo mRouteInfo;
  
  public CastDeviceInfoImpl(MediaRouter.RouteInfo paramRouteInfo)
  {
    mRouteInfo = paramRouteInfo;
    mDevice = CastDevice.b(paramRouteInfo.getExtras());
  }
  
  public String getDeviceId()
  {
    return mDevice.b();
  }
  
  public String getFriendlyName()
  {
    return mDevice.d();
  }
  
  public URL getIconUrl(int paramInt1, int paramInt2)
  {
    return null;
  }
  
  public InetAddress getIpAddress()
  {
    return mDevice.c();
  }
  
  public Object getRouteInfo()
  {
    return mRouteInfo;
  }
  
  public int getServicePort()
  {
    return mDevice.g();
  }
  
  public int getVolume()
  {
    return mRouteInfo.getVolume();
  }
  
  public int getVolumeMax()
  {
    return mRouteInfo.getVolumeMax();
  }
  
  public boolean isSelected()
  {
    return mRouteInfo.isSelected();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.CastDeviceInfoImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */