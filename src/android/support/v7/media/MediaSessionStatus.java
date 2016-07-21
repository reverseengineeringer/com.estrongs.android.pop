package android.support.v7.media;

import android.os.Bundle;

public final class MediaSessionStatus
{
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_QUEUE_PAUSED = "queuePaused";
  private static final String KEY_SESSION_STATE = "sessionState";
  private static final String KEY_TIMESTAMP = "timestamp";
  public static final int SESSION_STATE_ACTIVE = 0;
  public static final int SESSION_STATE_ENDED = 1;
  public static final int SESSION_STATE_INVALIDATED = 2;
  private final Bundle mBundle;
  
  private MediaSessionStatus(Bundle paramBundle)
  {
    mBundle = paramBundle;
  }
  
  public static MediaSessionStatus fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaSessionStatus(paramBundle);
    }
    return null;
  }
  
  private static String sessionStateToString(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return Integer.toString(paramInt);
    case 0: 
      return "active";
    case 1: 
      return "ended";
    }
    return "invalidated";
  }
  
  public Bundle asBundle()
  {
    return mBundle;
  }
  
  public Bundle getExtras()
  {
    return mBundle.getBundle("extras");
  }
  
  public int getSessionState()
  {
    return mBundle.getInt("sessionState", 2);
  }
  
  public long getTimestamp()
  {
    return mBundle.getLong("timestamp");
  }
  
  public boolean isQueuePaused()
  {
    return mBundle.getBoolean("queuePaused");
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaSessionStatus{ ");
    localStringBuilder.append("timestamp=");
    localStringBuilder.append(" ms ago");
    localStringBuilder.append(", sessionState=").append(sessionStateToString(getSessionState()));
    localStringBuilder.append(", queuePaused=").append(isQueuePaused());
    localStringBuilder.append(", extras=").append(getExtras());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaSessionStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */