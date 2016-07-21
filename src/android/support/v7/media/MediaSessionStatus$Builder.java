package android.support.v7.media;

import android.os.Bundle;
import android.os.SystemClock;

public final class MediaSessionStatus$Builder
{
  private final Bundle mBundle;
  
  public MediaSessionStatus$Builder(int paramInt)
  {
    mBundle = new Bundle();
    setTimestamp(SystemClock.elapsedRealtime());
    setSessionState(paramInt);
  }
  
  public MediaSessionStatus$Builder(MediaSessionStatus paramMediaSessionStatus)
  {
    if (paramMediaSessionStatus == null) {
      throw new IllegalArgumentException("status must not be null");
    }
    mBundle = new Bundle(MediaSessionStatus.access$000(paramMediaSessionStatus));
  }
  
  public MediaSessionStatus build()
  {
    return new MediaSessionStatus(mBundle, null);
  }
  
  public Builder setExtras(Bundle paramBundle)
  {
    mBundle.putBundle("extras", paramBundle);
    return this;
  }
  
  public Builder setQueuePaused(boolean paramBoolean)
  {
    mBundle.putBoolean("queuePaused", paramBoolean);
    return this;
  }
  
  public Builder setSessionState(int paramInt)
  {
    mBundle.putInt("sessionState", paramInt);
    return this;
  }
  
  public Builder setTimestamp(long paramLong)
  {
    mBundle.putLong("timestamp", paramLong);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaSessionStatus.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */