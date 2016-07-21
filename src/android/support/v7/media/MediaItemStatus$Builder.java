package android.support.v7.media;

import android.os.Bundle;
import android.os.SystemClock;

public final class MediaItemStatus$Builder
{
  private final Bundle mBundle;
  
  public MediaItemStatus$Builder(int paramInt)
  {
    mBundle = new Bundle();
    setTimestamp(SystemClock.elapsedRealtime());
    setPlaybackState(paramInt);
  }
  
  public MediaItemStatus$Builder(MediaItemStatus paramMediaItemStatus)
  {
    if (paramMediaItemStatus == null) {
      throw new IllegalArgumentException("status must not be null");
    }
    mBundle = new Bundle(MediaItemStatus.access$000(paramMediaItemStatus));
  }
  
  public MediaItemStatus build()
  {
    return new MediaItemStatus(mBundle, null);
  }
  
  public Builder setContentDuration(long paramLong)
  {
    mBundle.putLong("contentDuration", paramLong);
    return this;
  }
  
  public Builder setContentPosition(long paramLong)
  {
    mBundle.putLong("contentPosition", paramLong);
    return this;
  }
  
  public Builder setExtras(Bundle paramBundle)
  {
    mBundle.putBundle("extras", paramBundle);
    return this;
  }
  
  public Builder setPlaybackState(int paramInt)
  {
    mBundle.putInt("playbackState", paramInt);
    return this;
  }
  
  public Builder setTimestamp(long paramLong)
  {
    mBundle.putLong("timestamp", paramLong);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaItemStatus.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */