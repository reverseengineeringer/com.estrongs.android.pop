package com.estrongs.chromecast;

import java.net.InetAddress;
import java.net.URL;

public abstract class CastDeviceInfo
{
  public abstract String getDeviceId();
  
  public abstract String getFriendlyName();
  
  public abstract URL getIconUrl(int paramInt1, int paramInt2);
  
  public abstract InetAddress getIpAddress();
  
  public abstract Object getRouteInfo();
  
  public abstract int getServicePort();
  
  public abstract int getVolume();
  
  public abstract int getVolumeMax();
  
  public abstract boolean isSelected();
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.CastDeviceInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */