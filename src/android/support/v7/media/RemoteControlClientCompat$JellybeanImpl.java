package android.support.v7.media;

import android.content.Context;

class RemoteControlClientCompat$JellybeanImpl
  extends RemoteControlClientCompat
{
  private boolean mRegistered;
  private final Object mRouterObj;
  private final Object mUserRouteCategoryObj;
  private final Object mUserRouteObj;
  
  public RemoteControlClientCompat$JellybeanImpl(Context paramContext, Object paramObject)
  {
    super(paramContext, paramObject);
    mRouterObj = MediaRouterJellybean.getMediaRouter(paramContext);
    mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(mRouterObj, "", false);
    mUserRouteObj = MediaRouterJellybean.createUserRoute(mRouterObj, mUserRouteCategoryObj);
  }
  
  public void setPlaybackInfo(RemoteControlClientCompat.PlaybackInfo paramPlaybackInfo)
  {
    MediaRouterJellybean.UserRouteInfo.setVolume(mUserRouteObj, volume);
    MediaRouterJellybean.UserRouteInfo.setVolumeMax(mUserRouteObj, volumeMax);
    MediaRouterJellybean.UserRouteInfo.setVolumeHandling(mUserRouteObj, volumeHandling);
    MediaRouterJellybean.UserRouteInfo.setPlaybackStream(mUserRouteObj, playbackStream);
    MediaRouterJellybean.UserRouteInfo.setPlaybackType(mUserRouteObj, playbackType);
    if (!mRegistered)
    {
      mRegistered = true;
      MediaRouterJellybean.UserRouteInfo.setVolumeCallback(mUserRouteObj, MediaRouterJellybean.createVolumeCallback(new RemoteControlClientCompat.JellybeanImpl.VolumeCallbackWrapper(this)));
      MediaRouterJellybean.UserRouteInfo.setRemoteControlClient(mUserRouteObj, mRcc);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RemoteControlClientCompat.JellybeanImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */