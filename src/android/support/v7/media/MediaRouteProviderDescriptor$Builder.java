package android.support.v7.media;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class MediaRouteProviderDescriptor$Builder
{
  private final Bundle mBundle;
  private ArrayList<MediaRouteDescriptor> mRoutes;
  
  public MediaRouteProviderDescriptor$Builder()
  {
    mBundle = new Bundle();
  }
  
  public MediaRouteProviderDescriptor$Builder(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (paramMediaRouteProviderDescriptor == null) {
      throw new IllegalArgumentException("descriptor must not be null");
    }
    mBundle = new Bundle(MediaRouteProviderDescriptor.access$000(paramMediaRouteProviderDescriptor));
    MediaRouteProviderDescriptor.access$100(paramMediaRouteProviderDescriptor);
    if (!MediaRouteProviderDescriptor.access$200(paramMediaRouteProviderDescriptor).isEmpty()) {
      mRoutes = new ArrayList(MediaRouteProviderDescriptor.access$200(paramMediaRouteProviderDescriptor));
    }
  }
  
  public Builder addRoute(MediaRouteDescriptor paramMediaRouteDescriptor)
  {
    if (paramMediaRouteDescriptor == null) {
      throw new IllegalArgumentException("route must not be null");
    }
    if (mRoutes == null) {
      mRoutes = new ArrayList();
    }
    while (!mRoutes.contains(paramMediaRouteDescriptor))
    {
      mRoutes.add(paramMediaRouteDescriptor);
      return this;
    }
    throw new IllegalArgumentException("route descriptor already added");
  }
  
  public Builder addRoutes(Collection<MediaRouteDescriptor> paramCollection)
  {
    if (paramCollection == null) {
      throw new IllegalArgumentException("routes must not be null");
    }
    if (!paramCollection.isEmpty())
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext()) {
        addRoute((MediaRouteDescriptor)paramCollection.next());
      }
    }
    return this;
  }
  
  public MediaRouteProviderDescriptor build()
  {
    if (mRoutes != null)
    {
      int j = mRoutes.size();
      ArrayList localArrayList = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        localArrayList.add(((MediaRouteDescriptor)mRoutes.get(i)).asBundle());
        i += 1;
      }
      mBundle.putParcelableArrayList("routes", localArrayList);
    }
    return new MediaRouteProviderDescriptor(mBundle, mRoutes, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderDescriptor.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */