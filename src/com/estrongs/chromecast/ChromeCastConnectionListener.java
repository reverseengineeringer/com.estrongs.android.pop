package com.estrongs.chromecast;

public abstract interface ChromeCastConnectionListener
{
  public abstract void onConnected();
  
  public abstract void onConnectionFailed();
  
  public abstract void onConnectionSuspended();
  
  public abstract void onDisconnected();
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastConnectionListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */