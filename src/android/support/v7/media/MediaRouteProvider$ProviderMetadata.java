package android.support.v7.media;

import android.content.ComponentName;

public final class MediaRouteProvider$ProviderMetadata
{
  private final ComponentName mComponentName;
  
  MediaRouteProvider$ProviderMetadata(ComponentName paramComponentName)
  {
    if (paramComponentName == null) {
      throw new IllegalArgumentException("componentName must not be null");
    }
    mComponentName = paramComponentName;
  }
  
  public ComponentName getComponentName()
  {
    return mComponentName;
  }
  
  public String getPackageName()
  {
    return mComponentName.getPackageName();
  }
  
  public String toString()
  {
    return "ProviderMetadata{ componentName=" + mComponentName.flattenToShortString() + " }";
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProvider.ProviderMetadata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */