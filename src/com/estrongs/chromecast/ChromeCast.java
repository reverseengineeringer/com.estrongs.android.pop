package com.estrongs.chromecast;

import java.util.List;

public abstract interface ChromeCast
{
  public static final int ERROR_ES_VERSION = -2;
  public static final int ERROR_GOOGLE_PLAY_SERVICE = -1;
  public static final int ERROR_NONE = 0;
  
  public abstract void addConnectionListener(ChromeCastConnectionListener paramChromeCastConnectionListener);
  
  public abstract void addDeviceListener(CastDeviceListener paramCastDeviceListener);
  
  public abstract void addMediaPlayerListener(RemoteMediaPlayerListener paramRemoteMediaPlayerListener);
  
  public abstract void destroy();
  
  public abstract void disconnect();
  
  public abstract CastDeviceInfo getConnectedDevice();
  
  public abstract List<CastDeviceInfo> getDevices();
  
  public abstract int getIdleReason();
  
  public abstract int getMediaPlayerState();
  
  public abstract long getMediaStreamDuration();
  
  public abstract long getMediaStreamPosition();
  
  public abstract int getVersion();
  
  public abstract double getVolume();
  
  public abstract int init();
  
  public abstract boolean isConnected();
  
  public abstract boolean isConnecting();
  
  public abstract void loadMedia(String paramString1, String paramString2, String paramString3, MediaMetaData paramMediaMetaData);
  
  public abstract void mediaPause();
  
  public abstract void mediaPlay();
  
  public abstract void mediaSeek(long paramLong);
  
  public abstract void mediaStop();
  
  public abstract void removeConnectionListener(ChromeCastConnectionListener paramChromeCastConnectionListener);
  
  public abstract void removeDeviceListener(CastDeviceListener paramCastDeviceListener);
  
  public abstract void removeMediaPlayerListener(RemoteMediaPlayerListener paramRemoteMediaPlayerListener);
  
  public abstract void selectDevice(CastDeviceInfo paramCastDeviceInfo);
  
  public abstract void setVolume(double paramDouble);
  
  public abstract void startScan();
  
  public abstract void stopScan();
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCast
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */