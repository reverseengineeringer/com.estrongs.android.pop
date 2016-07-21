package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;

abstract class SystemMediaRouteProvider
  extends MediaRouteProvider
{
  public static final String DEFAULT_ROUTE_ID = "DEFAULT_ROUTE";
  public static final String PACKAGE_NAME = "android";
  private static final String TAG = "SystemMediaRouteProvider";
  
  protected SystemMediaRouteProvider(Context paramContext)
  {
    super(paramContext, new MediaRouteProvider.ProviderMetadata(new ComponentName("android", SystemMediaRouteProvider.class.getName())));
  }
  
  public static SystemMediaRouteProvider obtain(Context paramContext, SystemMediaRouteProvider.SyncCallback paramSyncCallback)
  {
    if (Build.VERSION.SDK_INT >= 18) {
      return new SystemMediaRouteProvider.JellybeanMr2Impl(paramContext, paramSyncCallback);
    }
    if (Build.VERSION.SDK_INT >= 17) {
      return new SystemMediaRouteProvider.JellybeanMr1Impl(paramContext, paramSyncCallback);
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return new SystemMediaRouteProvider.JellybeanImpl(paramContext, paramSyncCallback);
    }
    return new SystemMediaRouteProvider.LegacyImpl(paramContext);
  }
  
  public void onSyncRouteAdded(MediaRouter.RouteInfo paramRouteInfo) {}
  
  public void onSyncRouteChanged(MediaRouter.RouteInfo paramRouteInfo) {}
  
  public void onSyncRouteRemoved(MediaRouter.RouteInfo paramRouteInfo) {}
  
  public void onSyncRouteSelected(MediaRouter.RouteInfo paramRouteInfo) {}
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */