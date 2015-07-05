package com.estrongs.chromecast;

public abstract interface RemoteMediaPlayerListener
{
  public static final int IDLE_REASON_CANCELED = 2;
  public static final int IDLE_REASON_ERROR = 4;
  public static final int IDLE_REASON_FINISHED = 1;
  public static final int IDLE_REASON_INTERRUPTED = 3;
  public static final int IDLE_REASON_NONE = 0;
  public static final int PLAYER_STATE_BUFFERING = 4;
  public static final int PLAYER_STATE_IDLE = 1;
  public static final int PLAYER_STATE_LOAD_ERROR = -1001;
  public static final int PLAYER_STATE_LOAD_SUCCEED = 1000;
  public static final int PLAYER_STATE_PAUSED = 3;
  public static final int PLAYER_STATE_PLAYING = 2;
  public static final int PLAYER_STATE_UNKNOWN = 0;
  public static final int PLAYER_STATE_UNKNOWN_ERROR = -1000;
  
  public abstract void onStatusUpdated(int paramInt);
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.RemoteMediaPlayerListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */