package android.support.v7.media;

public final class SystemMediaRouteProvider$JellybeanImpl$SystemRouteController
  extends MediaRouteProvider.RouteController
{
  private final Object mRouteObj;
  
  public SystemMediaRouteProvider$JellybeanImpl$SystemRouteController(SystemMediaRouteProvider.JellybeanImpl paramJellybeanImpl, Object paramObject)
  {
    mRouteObj = paramObject;
  }
  
  public void onSetVolume(int paramInt)
  {
    MediaRouterJellybean.RouteInfo.requestSetVolume(mRouteObj, paramInt);
  }
  
  public void onUpdateVolume(int paramInt)
  {
    MediaRouterJellybean.RouteInfo.requestUpdateVolume(mRouteObj, paramInt);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.JellybeanImpl.SystemRouteController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */