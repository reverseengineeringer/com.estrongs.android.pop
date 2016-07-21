package android.support.v7.media;

import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.Display;
import java.util.ArrayList;
import java.util.List;

public final class MediaRouter$RouteInfo
{
  static final int CHANGE_GENERAL = 1;
  static final int CHANGE_PRESENTATION_DISPLAY = 4;
  static final int CHANGE_VOLUME = 2;
  public static final int PLAYBACK_TYPE_LOCAL = 0;
  public static final int PLAYBACK_TYPE_REMOTE = 1;
  public static final int PLAYBACK_VOLUME_FIXED = 0;
  public static final int PLAYBACK_VOLUME_VARIABLE = 1;
  private boolean mConnecting;
  private final ArrayList<IntentFilter> mControlFilters = new ArrayList();
  private String mDescription;
  private MediaRouteDescriptor mDescriptor;
  private final String mDescriptorId;
  private boolean mEnabled;
  private Bundle mExtras;
  private String mName;
  private int mPlaybackStream;
  private int mPlaybackType;
  private Display mPresentationDisplay;
  private int mPresentationDisplayId = -1;
  private final MediaRouter.ProviderInfo mProvider;
  private final String mUniqueId;
  private int mVolume;
  private int mVolumeHandling;
  private int mVolumeMax;
  
  MediaRouter$RouteInfo(MediaRouter.ProviderInfo paramProviderInfo, String paramString1, String paramString2)
  {
    mProvider = paramProviderInfo;
    mDescriptorId = paramString1;
    mUniqueId = paramString2;
  }
  
  public List<IntentFilter> getControlFilters()
  {
    return mControlFilters;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  String getDescriptorId()
  {
    return mDescriptorId;
  }
  
  public Bundle getExtras()
  {
    return mExtras;
  }
  
  public String getId()
  {
    return mUniqueId;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public int getPlaybackStream()
  {
    return mPlaybackStream;
  }
  
  public int getPlaybackType()
  {
    return mPlaybackType;
  }
  
  public MediaRouter.ProviderInfo getProvider()
  {
    return mProvider;
  }
  
  MediaRouteProvider getProviderInstance()
  {
    return mProvider.getProviderInstance();
  }
  
  public int getVolume()
  {
    return mVolume;
  }
  
  public int getVolumeHandling()
  {
    return mVolumeHandling;
  }
  
  public int getVolumeMax()
  {
    return mVolumeMax;
  }
  
  public boolean isConnecting()
  {
    return mConnecting;
  }
  
  public boolean isDefault()
  {
    MediaRouter.checkCallingThread();
    return MediaRouter.sGlobal.getDefaultRoute() == this;
  }
  
  public boolean isEnabled()
  {
    return mEnabled;
  }
  
  public boolean isSelected()
  {
    MediaRouter.checkCallingThread();
    return MediaRouter.sGlobal.getSelectedRoute() == this;
  }
  
  public boolean matchesSelector(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    MediaRouter.checkCallingThread();
    return paramMediaRouteSelector.matchesControlFilters(mControlFilters);
  }
  
  public void requestSetVolume(int paramInt)
  {
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.requestSetVolume(this, Math.min(mVolumeMax, Math.max(0, paramInt)));
  }
  
  public void requestUpdateVolume(int paramInt)
  {
    
    if (paramInt != 0) {
      MediaRouter.sGlobal.requestUpdateVolume(this, paramInt);
    }
  }
  
  public void select()
  {
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.selectRoute(this);
  }
  
  public void sendControlRequest(Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("intent must not be null");
    }
    MediaRouter.checkCallingThread();
    MediaRouter.sGlobal.sendControlRequest(this, paramIntent, paramControlRequestCallback);
  }
  
  public boolean supportsControlAction(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("category must not be null");
    }
    if (paramString2 == null) {
      throw new IllegalArgumentException("action must not be null");
    }
    MediaRouter.checkCallingThread();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      IntentFilter localIntentFilter = (IntentFilter)mControlFilters.get(i);
      if ((localIntentFilter.hasCategory(paramString1)) && (localIntentFilter.hasAction(paramString2))) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean supportsControlCategory(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("category must not be null");
    }
    MediaRouter.checkCallingThread();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      if (((IntentFilter)mControlFilters.get(i)).hasCategory(paramString)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean supportsControlRequest(Intent paramIntent)
  {
    if (paramIntent == null) {
      throw new IllegalArgumentException("intent must not be null");
    }
    MediaRouter.checkCallingThread();
    ContentResolver localContentResolver = MediaRouter.sGlobal.getContentResolver();
    int j = mControlFilters.size();
    int i = 0;
    while (i < j)
    {
      if (((IntentFilter)mControlFilters.get(i)).match(localContentResolver, paramIntent, true, "MediaRouter") >= 0) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public String toString()
  {
    return "MediaRouter.RouteInfo{ uniqueId=" + mUniqueId + ", name=" + mName + ", description=" + mDescription + ", enabled=" + mEnabled + ", connecting=" + mConnecting + ", playbackType=" + mPlaybackType + ", playbackStream=" + mPlaybackStream + ", volumeHandling=" + mVolumeHandling + ", volume=" + mVolume + ", volumeMax=" + mVolumeMax + ", presentationDisplayId=" + mPresentationDisplayId + ", extras=" + mExtras + ", providerPackageName=" + mProvider.getPackageName() + " }";
  }
  
  int updateDescriptor(MediaRouteDescriptor paramMediaRouteDescriptor)
  {
    int k = 0;
    int j = 0;
    int i = k;
    if (mDescriptor != paramMediaRouteDescriptor)
    {
      mDescriptor = paramMediaRouteDescriptor;
      i = k;
      if (paramMediaRouteDescriptor != null)
      {
        if (!MediaRouter.equal(mName, paramMediaRouteDescriptor.getName()))
        {
          mName = paramMediaRouteDescriptor.getName();
          j = 1;
        }
        i = j;
        if (!MediaRouter.equal(mDescription, paramMediaRouteDescriptor.getDescription()))
        {
          mDescription = paramMediaRouteDescriptor.getDescription();
          i = j | 0x1;
        }
        j = i;
        if (mEnabled != paramMediaRouteDescriptor.isEnabled())
        {
          mEnabled = paramMediaRouteDescriptor.isEnabled();
          j = i | 0x1;
        }
        i = j;
        if (mConnecting != paramMediaRouteDescriptor.isConnecting())
        {
          mConnecting = paramMediaRouteDescriptor.isConnecting();
          i = j | 0x1;
        }
        j = i;
        if (!mControlFilters.equals(paramMediaRouteDescriptor.getControlFilters()))
        {
          mControlFilters.clear();
          mControlFilters.addAll(paramMediaRouteDescriptor.getControlFilters());
          j = i | 0x1;
        }
        i = j;
        if (mPlaybackType != paramMediaRouteDescriptor.getPlaybackType())
        {
          mPlaybackType = paramMediaRouteDescriptor.getPlaybackType();
          i = j | 0x1;
        }
        j = i;
        if (mPlaybackStream != paramMediaRouteDescriptor.getPlaybackStream())
        {
          mPlaybackStream = paramMediaRouteDescriptor.getPlaybackStream();
          j = i | 0x1;
        }
        i = j;
        if (mVolumeHandling != paramMediaRouteDescriptor.getVolumeHandling())
        {
          mVolumeHandling = paramMediaRouteDescriptor.getVolumeHandling();
          i = j | 0x3;
        }
        j = i;
        if (mVolume != paramMediaRouteDescriptor.getVolume())
        {
          mVolume = paramMediaRouteDescriptor.getVolume();
          j = i | 0x3;
        }
        i = j;
        if (mVolumeMax != paramMediaRouteDescriptor.getVolumeMax())
        {
          mVolumeMax = paramMediaRouteDescriptor.getVolumeMax();
          i = j | 0x3;
        }
        j = i;
        if (mPresentationDisplayId != paramMediaRouteDescriptor.getPresentationDisplayId())
        {
          mPresentationDisplayId = paramMediaRouteDescriptor.getPresentationDisplayId();
          mPresentationDisplay = null;
          j = i | 0x5;
        }
        i = j;
        if (!MediaRouter.equal(mExtras, paramMediaRouteDescriptor.getExtras()))
        {
          mExtras = paramMediaRouteDescriptor.getExtras();
          i = j | 0x1;
        }
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.RouteInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */