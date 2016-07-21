package android.support.v7.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class MediaRouteProviderDescriptor
{
  private static final String KEY_ROUTES = "routes";
  private final Bundle mBundle;
  private List<MediaRouteDescriptor> mRoutes;
  
  private MediaRouteProviderDescriptor(Bundle paramBundle, List<MediaRouteDescriptor> paramList)
  {
    mBundle = paramBundle;
    mRoutes = paramList;
  }
  
  private void ensureRoutes()
  {
    ArrayList localArrayList;
    if (mRoutes == null)
    {
      localArrayList = mBundle.getParcelableArrayList("routes");
      if ((localArrayList != null) && (!localArrayList.isEmpty())) {
        break label36;
      }
      mRoutes = Collections.emptyList();
    }
    for (;;)
    {
      return;
      label36:
      int j = localArrayList.size();
      mRoutes = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        mRoutes.add(MediaRouteDescriptor.fromBundle((Bundle)localArrayList.get(i)));
        i += 1;
      }
    }
  }
  
  public static MediaRouteProviderDescriptor fromBundle(Bundle paramBundle)
  {
    if (paramBundle != null) {
      return new MediaRouteProviderDescriptor(paramBundle, null);
    }
    return null;
  }
  
  public Bundle asBundle()
  {
    return mBundle;
  }
  
  public List<MediaRouteDescriptor> getRoutes()
  {
    ensureRoutes();
    return mRoutes;
  }
  
  public boolean isValid()
  {
    ensureRoutes();
    int j = mRoutes.size();
    int i = 0;
    while (i < j)
    {
      MediaRouteDescriptor localMediaRouteDescriptor = (MediaRouteDescriptor)mRoutes.get(i);
      if ((localMediaRouteDescriptor == null) || (!localMediaRouteDescriptor.isValid())) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MediaRouteProviderDescriptor{ ");
    localStringBuilder.append("routes=").append(Arrays.toString(getRoutes().toArray()));
    localStringBuilder.append(", isValid=").append(isValid());
    localStringBuilder.append(" }");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderDescriptor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */