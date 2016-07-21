package android.support.v7.media;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

final class MediaRouter$GlobalMediaRouter$CallbackHandler
  extends Handler
{
  public static final int MSG_PROVIDER_ADDED = 513;
  public static final int MSG_PROVIDER_CHANGED = 515;
  public static final int MSG_PROVIDER_REMOVED = 514;
  public static final int MSG_ROUTE_ADDED = 257;
  public static final int MSG_ROUTE_CHANGED = 259;
  public static final int MSG_ROUTE_PRESENTATION_DISPLAY_CHANGED = 261;
  public static final int MSG_ROUTE_REMOVED = 258;
  public static final int MSG_ROUTE_SELECTED = 262;
  public static final int MSG_ROUTE_UNSELECTED = 263;
  public static final int MSG_ROUTE_VOLUME_CHANGED = 260;
  private static final int MSG_TYPE_MASK = 65280;
  private static final int MSG_TYPE_PROVIDER = 512;
  private static final int MSG_TYPE_ROUTE = 256;
  private final ArrayList<MediaRouter.CallbackRecord> mTempCallbackRecords = new ArrayList();
  
  private MediaRouter$GlobalMediaRouter$CallbackHandler(MediaRouter.GlobalMediaRouter paramGlobalMediaRouter) {}
  
  private void invokeCallback(MediaRouter.CallbackRecord paramCallbackRecord, int paramInt, Object paramObject)
  {
    MediaRouter localMediaRouter = mRouter;
    MediaRouter.Callback localCallback = mCallback;
    switch (0xFF00 & paramInt)
    {
    default: 
    case 256: 
      do
      {
        return;
        paramObject = (MediaRouter.RouteInfo)paramObject;
      } while (!paramCallbackRecord.filterRouteEvent((MediaRouter.RouteInfo)paramObject));
      switch (paramInt)
      {
      default: 
        return;
      case 257: 
        localCallback.onRouteAdded(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      case 258: 
        localCallback.onRouteRemoved(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      case 259: 
        localCallback.onRouteChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      case 260: 
        localCallback.onRouteVolumeChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      case 261: 
        localCallback.onRoutePresentationDisplayChanged(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      case 262: 
        localCallback.onRouteSelected(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
        return;
      }
      localCallback.onRouteUnselected(localMediaRouter, (MediaRouter.RouteInfo)paramObject);
      return;
    }
    paramCallbackRecord = (MediaRouter.ProviderInfo)paramObject;
    switch (paramInt)
    {
    default: 
      return;
    case 513: 
      localCallback.onProviderAdded(localMediaRouter, paramCallbackRecord);
      return;
    case 514: 
      localCallback.onProviderRemoved(localMediaRouter, paramCallbackRecord);
      return;
    }
    localCallback.onProviderChanged(localMediaRouter, paramCallbackRecord);
  }
  
  private void syncWithSystemProvider(int paramInt, Object paramObject)
  {
    switch (paramInt)
    {
    case 260: 
    case 261: 
    default: 
      return;
    case 257: 
      MediaRouter.GlobalMediaRouter.access$1400(this$0).onSyncRouteAdded((MediaRouter.RouteInfo)paramObject);
      return;
    case 258: 
      MediaRouter.GlobalMediaRouter.access$1400(this$0).onSyncRouteRemoved((MediaRouter.RouteInfo)paramObject);
      return;
    case 259: 
      MediaRouter.GlobalMediaRouter.access$1400(this$0).onSyncRouteChanged((MediaRouter.RouteInfo)paramObject);
      return;
    }
    MediaRouter.GlobalMediaRouter.access$1400(this$0).onSyncRouteSelected((MediaRouter.RouteInfo)paramObject);
  }
  
  public void handleMessage(Message paramMessage)
  {
    int j = what;
    paramMessage = obj;
    syncWithSystemProvider(j, paramMessage);
    for (;;)
    {
      try
      {
        i = MediaRouter.GlobalMediaRouter.access$1300(this$0).size();
        i -= 1;
        if (i >= 0)
        {
          MediaRouter localMediaRouter = (MediaRouter)((WeakReference)MediaRouter.GlobalMediaRouter.access$1300(this$0).get(i)).get();
          if (localMediaRouter == null) {
            MediaRouter.GlobalMediaRouter.access$1300(this$0).remove(i);
          } else {
            mTempCallbackRecords.addAll(mCallbackRecords);
          }
        }
      }
      finally
      {
        mTempCallbackRecords.clear();
      }
      int k = mTempCallbackRecords.size();
      int i = 0;
      while (i < k)
      {
        invokeCallback((MediaRouter.CallbackRecord)mTempCallbackRecords.get(i), j, paramMessage);
        i += 1;
      }
      mTempCallbackRecords.clear();
      return;
    }
  }
  
  public void post(int paramInt, Object paramObject)
  {
    obtainMessage(paramInt, paramObject).sendToTarget();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter.CallbackHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */