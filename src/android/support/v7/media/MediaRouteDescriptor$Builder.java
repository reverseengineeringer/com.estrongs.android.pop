package android.support.v7.media;

import android.content.IntentFilter;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteDescriptor$Builder
{
  private final Bundle mBundle;
  private ArrayList<IntentFilter> mControlFilters;
  
  public MediaRouteDescriptor$Builder(MediaRouteDescriptor paramMediaRouteDescriptor)
  {
    if (paramMediaRouteDescriptor == null) {
      throw new IllegalArgumentException("descriptor must not be null");
    }
    mBundle = new Bundle(MediaRouteDescriptor.access$000(paramMediaRouteDescriptor));
    MediaRouteDescriptor.access$100(paramMediaRouteDescriptor);
    if (!MediaRouteDescriptor.access$200(paramMediaRouteDescriptor).isEmpty()) {
      mControlFilters = new ArrayList(MediaRouteDescriptor.access$200(paramMediaRouteDescriptor));
    }
  }
  
  public MediaRouteDescriptor$Builder(String paramString1, String paramString2)
  {
    mBundle = new Bundle();
    setId(paramString1);
    setName(paramString2);
  }
  
  public Builder addControlFilter(IntentFilter paramIntentFilter)
  {
    if (paramIntentFilter == null) {
      throw new IllegalArgumentException("filter must not be null");
    }
    if (mControlFilters == null) {
      mControlFilters = new ArrayList();
    }
    if (!mControlFilters.contains(paramIntentFilter)) {
      mControlFilters.add(paramIntentFilter);
    }
    return this;
  }
  
  public Builder addControlFilters(Collection<IntentFilter> paramCollection)
  {
    if (paramCollection == null) {
      throw new IllegalArgumentException("filters must not be null");
    }
    if (!paramCollection.isEmpty())
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        addControlFilter((IntentFilter)paramCollection.next());
      }
    }
    return this;
  }
  
  public MediaRouteDescriptor build()
  {
    if (mControlFilters != null) {
      mBundle.putParcelableArrayList("controlFilters", mControlFilters);
    }
    return new MediaRouteDescriptor(mBundle, mControlFilters, null);
  }
  
  public Builder setConnecting(boolean paramBoolean)
  {
    mBundle.putBoolean("connecting", paramBoolean);
    return this;
  }
  
  public Builder setDescription(String paramString)
  {
    mBundle.putString("status", paramString);
    return this;
  }
  
  public Builder setEnabled(boolean paramBoolean)
  {
    mBundle.putBoolean("enabled", paramBoolean);
    return this;
  }
  
  public Builder setExtras(Bundle paramBundle)
  {
    mBundle.putBundle("extras", paramBundle);
    return this;
  }
  
  public Builder setId(String paramString)
  {
    mBundle.putString("id", paramString);
    return this;
  }
  
  public Builder setName(String paramString)
  {
    mBundle.putString("name", paramString);
    return this;
  }
  
  public Builder setPlaybackStream(int paramInt)
  {
    mBundle.putInt("playbackStream", paramInt);
    return this;
  }
  
  public Builder setPlaybackType(int paramInt)
  {
    mBundle.putInt("playbackType", paramInt);
    return this;
  }
  
  public Builder setPresentationDisplayId(int paramInt)
  {
    mBundle.putInt("presentationDisplayId", paramInt);
    return this;
  }
  
  public Builder setVolume(int paramInt)
  {
    mBundle.putInt("volume", paramInt);
    return this;
  }
  
  public Builder setVolumeHandling(int paramInt)
  {
    mBundle.putInt("volumeHandling", paramInt);
    return this;
  }
  
  public Builder setVolumeMax(int paramInt)
  {
    mBundle.putInt("volumeMax", paramInt);
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteDescriptor.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */