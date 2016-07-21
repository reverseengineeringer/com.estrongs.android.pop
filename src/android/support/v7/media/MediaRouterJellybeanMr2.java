package android.support.v7.media;

import android.media.MediaRouter;
import android.media.MediaRouter.Callback;

final class MediaRouterJellybeanMr2
{
  public static void addCallback(Object paramObject1, int paramInt1, Object paramObject2, int paramInt2)
  {
    ((MediaRouter)paramObject1).addCallback(paramInt1, (MediaRouter.Callback)paramObject2, paramInt2);
  }
  
  public static Object getDefaultRoute(Object paramObject)
  {
    return ((MediaRouter)paramObject).getDefaultRoute();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouterJellybeanMr2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */