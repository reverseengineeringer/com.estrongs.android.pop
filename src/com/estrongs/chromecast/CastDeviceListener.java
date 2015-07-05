package com.estrongs.chromecast;

public abstract interface CastDeviceListener
{
  public abstract void onDeviceAdded(CastDeviceInfo paramCastDeviceInfo);
  
  public abstract void onDeviceRemoved(CastDeviceInfo paramCastDeviceInfo);
  
  public abstract void onDeviceSelected(CastDeviceInfo paramCastDeviceInfo);
  
  public abstract void onDeviceUnSelected(CastDeviceInfo paramCastDeviceInfo);
  
  public abstract void onDeviceVolumeChanged(CastDeviceInfo paramCastDeviceInfo);
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.CastDeviceListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */