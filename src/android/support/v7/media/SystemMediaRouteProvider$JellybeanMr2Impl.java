package android.support.v7.media;

import android.content.Context;

class SystemMediaRouteProvider$JellybeanMr2Impl
  extends SystemMediaRouteProvider.JellybeanMr1Impl
{
  public SystemMediaRouteProvider$JellybeanMr2Impl(Context paramContext, SystemMediaRouteProvider.SyncCallback paramSyncCallback)
  {
    super(paramContext, paramSyncCallback);
  }
  
  protected Object getDefaultRoute()
  {
    return MediaRouterJellybeanMr2.getDefaultRoute(mRouterObj);
  }
  
  protected boolean isConnecting(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord)
  {
    return MediaRouterJellybeanMr2.RouteInfo.isConnecting(mRouteObj);
  }
  
  protected void onBuildSystemRouteDescriptor(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord, MediaRouteDescriptor.Builder paramBuilder)
  {
    super.onBuildSystemRouteDescriptor(paramSystemRouteRecord, paramBuilder);
    paramSystemRouteRecord = MediaRouterJellybeanMr2.RouteInfo.getDescription(mRouteObj);
    if (paramSystemRouteRecord != null) {
      paramBuilder.setDescription(paramSystemRouteRecord.toString());
    }
  }
  
  protected void selectRoute(Object paramObject)
  {
    MediaRouterJellybean.selectRoute(mRouterObj, 8388611, paramObject);
  }
  
  protected void updateCallback()
  {
    int i = 1;
    if (mCallbackRegistered) {
      MediaRouterJellybean.removeCallback(mRouterObj, mCallbackObj);
    }
    mCallbackRegistered = true;
    Object localObject1 = mRouterObj;
    int j = mRouteTypes;
    Object localObject2 = mCallbackObj;
    if (mActiveScan) {}
    for (;;)
    {
      MediaRouterJellybeanMr2.addCallback(localObject1, j, localObject2, i | 0x2);
      return;
      i = 0;
    }
  }
  
  protected void updateUserRouteProperties(SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord paramUserRouteRecord)
  {
    super.updateUserRouteProperties(paramUserRouteRecord);
    MediaRouterJellybeanMr2.UserRouteInfo.setDescription(mRouteObj, mRoute.getDescription());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.JellybeanMr2Impl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */