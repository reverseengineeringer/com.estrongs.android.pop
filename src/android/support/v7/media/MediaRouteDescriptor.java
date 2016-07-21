package android.support.v7.media;

import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class MediaRouteDescriptor
{
  private static final String KEY_CONNECTING = "connecting";
  private static final String KEY_CONTROL_FILTERS = "controlFilters";
  private static final String KEY_DESCRIPTION = "status";
  private static final String KEY_ENABLED = "enabled";
  private static final String KEY_EXTRAS = "extras";
  private static final String KEY_ID = "id";
  private static final String KEY_NAME = "name";
  private static final String KEY_PLAYBACK_STREAM = "playbackStream";
  private static final String KEY_PLAYBACK_TYPE = "playbackType";
  private static final String KEY_PRESENTATION_DISPLAY_ID = "presentationDisplayId";
  private static final String KEY_VOLUME = "volume";
  private static final String KEY_VOLUME_HANDLING = "volumeHandling";
  private static final String KEY_VOLUME_MAX = "volumeMax";
  private final Bundle mBundle;
  private List<IntentFilter> mControlFilters;
  
  private MediaRouteDescriptor(Bundle paramBundle, List<IntentFilter> paramList)
  {
    mBundle = paramBundle;
    mControlFilters = paramList;
  }
  
  private void ensureControlFilters()
  {
    if (mControlFilters == null)
    {
      mControlFilters = mBundle.getParcelableArrayList("controlFilters");
      if (mControlFilters == null) {
        mControlFilters = Collections.emptyList();
      }
    }
  }
  
  public static MediaRouteDescriptor fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteDescriptor(paramBundle, null);
    }
    return null;
  }
  
  public Bundle asBundle()
  {
    return mBundle;
  }
  
  public List<IntentFilter> getControlFilters()
  {
    ensureControlFilters();
    return mControlFilters;
  }
  
  public String getDescription()
  {
    return mBundle.getString("status");
  }
  
  public Bundle getExtras()
  {
    return mBundle.getBundle("extras");
  }
  
  public String getId()
  {
    return mBundle.getString("id");
  }
  
  public String getName()
  {
    return mBundle.getString("name");
  }
  
  public int getPlaybackStream()
  {
    return mBundle.getInt("playbackStream", -1);
  }
  
  public int getPlaybackType()
  {
    return mBundle.getInt("playbackType", 1);
  }
  
  public int getPresentationDisplayId()
  {
    return mBundle.getInt("presentationDisplayId", -1);
  }
  
  public int getVolume()
  {
    return mBundle.getInt("volume");
  }
  
  public int getVolumeHandling()
  {
    return mBundle.getInt("volumeHandling", 0);
  }
  
  public int getVolumeMax()
  {
    return mBundle.getInt("volumeMax");
  }
  
  public boolean isConnecting()
  {
    return mBundle.getBoolean("connecting", false);
  }
  
  public boolean isEnabled()
  {
    return mBundle.getBoolean("enabled", true);
  }
  
  public boolean isValid()
  {
    ensureControlFilters();
    return (!TextUtils.isEmpty(getId())) && (!TextUtils.isEmpty(getName())) && (!mControlFilters.contains(null));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaRouteDescriptor{ ");
    localStringBuilder.append("id=").append(getId());
    localStringBuilder.append(", name=").append(getName());
    localStringBuilder.append(", description=").append(getDescription());
    localStringBuilder.append(", isEnabled=").append(isEnabled());
    localStringBuilder.append(", isConnecting=").append(isConnecting());
    localStringBuilder.append(", controlFilters=").append(Arrays.toString(getControlFilters().toArray()));
    localStringBuilder.append(", playbackType=").append(getPlaybackType());
    localStringBuilder.append(", playbackStream=").append(getPlaybackStream());
    localStringBuilder.append(", volume=").append(getVolume());
    localStringBuilder.append(", volumeMax=").append(getVolumeMax());
    localStringBuilder.append(", volumeHandling=").append(getVolumeHandling());
    localStringBuilder.append(", presentationDisplayId=").append(getPresentationDisplayId());
    localStringBuilder.append(", extras=").append(getExtras());
    localStringBuilder.append(", isValid=").append(isValid());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */