package android.support.v7.media;

final class MediaRouter$CallbackRecord
{
  public final MediaRouter.Callback mCallback;
  public int mFlags;
  public final MediaRouter mRouter;
  public MediaRouteSelector mSelector;
  
  public MediaRouter$CallbackRecord(MediaRouter paramMediaRouter, MediaRouter.Callback paramCallback)
  {
    mRouter = paramMediaRouter;
    mCallback = paramCallback;
    mSelector = MediaRouteSelector.EMPTY;
  }
  
  public boolean filterRouteEvent(MediaRouter.RouteInfo paramRouteInfo)
  {
    return ((mFlags & 0x2) != 0) || (paramRouteInfo.matchesSelector(mSelector));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.CallbackRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */