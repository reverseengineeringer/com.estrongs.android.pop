package android.support.v7.media;

import android.content.Context;
import android.media.MediaRouter;
import android.media.MediaRouter.Callback;
import android.media.MediaRouter.RouteCategory;
import android.media.MediaRouter.RouteInfo;
import android.media.MediaRouter.UserRouteInfo;
import java.util.ArrayList;
import java.util.List;

final class MediaRouterJellybean
{
  public static final int ALL_ROUTE_TYPES = 8388611;
  public static final int ROUTE_TYPE_LIVE_AUDIO = 1;
  public static final int ROUTE_TYPE_LIVE_VIDEO = 2;
  public static final int ROUTE_TYPE_USER = 8388608;
  private static final String TAG = "MediaRouterJellybean";
  
  public static void addCallback(Object paramObject1, int paramInt, Object paramObject2)
  {
    ((MediaRouter)paramObject1).addCallback(paramInt, (MediaRouter.Callback)paramObject2);
  }
  
  public static void addUserRoute(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).addUserRoute((MediaRouter.UserRouteInfo)paramObject2);
  }
  
  public static Object createCallback(MediaRouterJellybean.Callback paramCallback)
  {
    return new MediaRouterJellybean.CallbackProxy(paramCallback);
  }
  
  public static Object createRouteCategory(Object paramObject, String paramString, boolean paramBoolean)
  {
    return ((MediaRouter)paramObject).createRouteCategory(paramString, paramBoolean);
  }
  
  public static Object createUserRoute(Object paramObject1, Object paramObject2)
  {
    return ((MediaRouter)paramObject1).createUserRoute((MediaRouter.RouteCategory)paramObject2);
  }
  
  public static Object createVolumeCallback(MediaRouterJellybean.VolumeCallback paramVolumeCallback)
  {
    return new MediaRouterJellybean.VolumeCallbackProxy(paramVolumeCallback);
  }
  
  public static List getCategories(Object paramObject)
  {
    paramObject = (MediaRouter)paramObject;
    int j = ((MediaRouter)paramObject).getCategoryCount();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((MediaRouter)paramObject).getCategoryAt(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static Object getMediaRouter(Context paramContext)
  {
    return paramContext.getSystemService("media_router");
  }
  
  public static List getRoutes(Object paramObject)
  {
    paramObject = (MediaRouter)paramObject;
    int j = ((MediaRouter)paramObject).getRouteCount();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      localArrayList.add(((MediaRouter)paramObject).getRouteAt(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public static Object getSelectedRoute(Object paramObject, int paramInt)
  {
    return ((MediaRouter)paramObject).getSelectedRoute(paramInt);
  }
  
  public static void removeCallback(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).removeCallback((MediaRouter.Callback)paramObject2);
  }
  
  public static void removeUserRoute(Object paramObject1, Object paramObject2)
  {
    ((MediaRouter)paramObject1).removeUserRoute((MediaRouter.UserRouteInfo)paramObject2);
  }
  
  public static void selectRoute(Object paramObject1, int paramInt, Object paramObject2)
  {
    ((MediaRouter)paramObject1).selectRoute(paramInt, (MediaRouter.RouteInfo)paramObject2);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouterJellybean
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */