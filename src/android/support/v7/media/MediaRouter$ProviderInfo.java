package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public final class MediaRouter$ProviderInfo
{
  private MediaRouteProviderDescriptor mDescriptor;
  private final MediaRouteProvider.ProviderMetadata mMetadata;
  private final MediaRouteProvider mProviderInstance;
  private Resources mResources;
  private boolean mResourcesNotAvailable;
  private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList();
  
  MediaRouter$ProviderInfo(MediaRouteProvider paramMediaRouteProvider)
  {
    mProviderInstance = paramMediaRouteProvider;
    mMetadata = paramMediaRouteProvider.getMetadata();
  }
  
  int findRouteByDescriptorId(String paramString)
  {
    int j = mRoutes.size();
    int i = 0;
    while (i < j)
    {
      if (MediaRouter.RouteInfo.access$000((MediaRouter.RouteInfo)mRoutes.get(i)).equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public ComponentName getComponentName()
  {
    return mMetadata.getComponentName();
  }
  
  public String getPackageName()
  {
    return mMetadata.getPackageName();
  }
  
  public MediaRouteProvider getProviderInstance()
  {
    MediaRouter.checkCallingThread();
    return mProviderInstance;
  }
  
  Resources getResources()
  {
    String str;
    if ((mResources == null) && (!mResourcesNotAvailable))
    {
      str = getPackageName();
      Context localContext = MediaRouter.sGlobal.getProviderContext(str);
      if (localContext == null) {
        break label44;
      }
      mResources = localContext.getResources();
    }
    for (;;)
    {
      return mResources;
      label44:
      Log.w("MediaRouter", "Unable to obtain resources for route provider package: " + str);
      mResourcesNotAvailable = true;
    }
  }
  
  public List<MediaRouter.RouteInfo> getRoutes()
  {
    MediaRouter.checkCallingThread();
    return mRoutes;
  }
  
  public String toString()
  {
    return "MediaRouter.RouteProviderInfo{ packageName=" + getPackageName() + " }";
  }
  
  boolean updateDescriptor(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (mDescriptor != paramMediaRouteProviderDescriptor)
    {
      mDescriptor = paramMediaRouteProviderDescriptor;
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.ProviderInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */