package android.support.v7.media;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public final class MediaRouter
{
  public static final int AVAILABILITY_FLAG_IGNORE_DEFAULT_ROUTE = 1;
  public static final int CALLBACK_FLAG_PERFORM_ACTIVE_SCAN = 1;
  public static final int CALLBACK_FLAG_REQUEST_DISCOVERY = 4;
  public static final int CALLBACK_FLAG_UNFILTERED_EVENTS = 2;
  private static final boolean DEBUG = Log.isLoggable("MediaRouter", 3);
  private static final String TAG = "MediaRouter";
  static MediaRouter.GlobalMediaRouter sGlobal;
  final ArrayList<MediaRouter.CallbackRecord> mCallbackRecords = new ArrayList();
  final Context mContext;
  
  MediaRouter(Context paramContext)
  {
    mContext = paramContext;
  }
  
  static void checkCallingThread()
  {
    if (Looper.myLooper() != Looper.getMainLooper()) {
      throw new IllegalStateException("The media router service must only be accessed on the application's main thread.");
    }
  }
  
  static <T> boolean equal(T paramT1, T paramT2)
  {
    return (paramT1 == paramT2) || ((paramT1 != null) && (paramT2 != null) && (paramT1.equals(paramT2)));
  }
  
  private int findCallbackRecord(MediaRouter.Callback paramCallback)
  {
    int j = mCallbackRecords.size();
    int i = 0;
    while (i < j)
    {
      if (mCallbackRecords.get(i)).mCallback == paramCallback) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static MediaRouter getInstance(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context must not be null");
    }
    checkCallingThread();
    if (sGlobal == null)
    {
      sGlobal = new MediaRouter.GlobalMediaRouter(paramContext.getApplicationContext());
      sGlobal.start();
    }
    return sGlobal.getRouter(paramContext);
  }
  
  public void addCallback(MediaRouteSelector paramMediaRouteSelector, MediaRouter.Callback paramCallback)
  {
    addCallback(paramMediaRouteSelector, paramCallback, 0);
  }
  
  public void addCallback(MediaRouteSelector paramMediaRouteSelector, MediaRouter.Callback paramCallback, int paramInt)
  {
    int j = 1;
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "addCallback: selector=" + paramMediaRouteSelector + ", callback=" + paramCallback + ", flags=" + Integer.toHexString(paramInt));
    }
    int i = findCallbackRecord(paramCallback);
    if (i < 0)
    {
      paramCallback = new MediaRouter.CallbackRecord(this, paramCallback);
      mCallbackRecords.add(paramCallback);
      i = 0;
      if (((mFlags ^ 0xFFFFFFFF) & paramInt) != 0)
      {
        mFlags |= paramInt;
        i = 1;
      }
      if (mSelector.contains(paramMediaRouteSelector)) {
        break label207;
      }
      mSelector = new MediaRouteSelector.Builder(mSelector).addSelector(paramMediaRouteSelector).build();
    }
    label207:
    for (paramInt = j;; paramInt = i)
    {
      if (paramInt != 0) {
        sGlobal.updateDiscoveryRequest();
      }
      return;
      paramCallback = (MediaRouter.CallbackRecord)mCallbackRecords.get(i);
      break;
    }
  }
  
  public void addProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    if (paramMediaRouteProvider == null) {
      throw new IllegalArgumentException("providerInstance must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "addProvider: " + paramMediaRouteProvider);
    }
    sGlobal.addProvider(paramMediaRouteProvider);
  }
  
  public void addRemoteControlClient(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("remoteControlClient must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "addRemoteControlClient: " + paramObject);
    }
    sGlobal.addRemoteControlClient(paramObject);
  }
  
  public MediaRouter.RouteInfo getDefaultRoute()
  {
    checkCallingThread();
    return sGlobal.getDefaultRoute();
  }
  
  public List<MediaRouter.ProviderInfo> getProviders()
  {
    checkCallingThread();
    return sGlobal.getProviders();
  }
  
  public List<MediaRouter.RouteInfo> getRoutes()
  {
    checkCallingThread();
    return sGlobal.getRoutes();
  }
  
  public MediaRouter.RouteInfo getSelectedRoute()
  {
    checkCallingThread();
    return sGlobal.getSelectedRoute();
  }
  
  public boolean isRouteAvailable(MediaRouteSelector paramMediaRouteSelector, int paramInt)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    checkCallingThread();
    return sGlobal.isRouteAvailable(paramMediaRouteSelector, paramInt);
  }
  
  public void removeCallback(MediaRouter.Callback paramCallback)
  {
    if (paramCallback == null) {
      throw new IllegalArgumentException("callback must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "removeCallback: callback=" + paramCallback);
    }
    int i = findCallbackRecord(paramCallback);
    if (i >= 0)
    {
      mCallbackRecords.remove(i);
      sGlobal.updateDiscoveryRequest();
    }
  }
  
  public void removeProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    if (paramMediaRouteProvider == null) {
      throw new IllegalArgumentException("providerInstance must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "removeProvider: " + paramMediaRouteProvider);
    }
    sGlobal.removeProvider(paramMediaRouteProvider);
  }
  
  public void removeRemoteControlClient(Object paramObject)
  {
    if (paramObject == null) {
      throw new IllegalArgumentException("remoteControlClient must not be null");
    }
    if (DEBUG) {
      Log.d("MediaRouter", "removeRemoteControlClient: " + paramObject);
    }
    sGlobal.removeRemoteControlClient(paramObject);
  }
  
  public void selectRoute(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo == null) {
      throw new IllegalArgumentException("route must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "selectRoute: " + paramRouteInfo);
    }
    sGlobal.selectRoute(paramRouteInfo);
  }
  
  public MediaRouter.RouteInfo updateSelectedRoute(MediaRouteSelector paramMediaRouteSelector)
  {
    if (paramMediaRouteSelector == null) {
      throw new IllegalArgumentException("selector must not be null");
    }
    checkCallingThread();
    if (DEBUG) {
      Log.d("MediaRouter", "updateSelectedRoute: " + paramMediaRouteSelector);
    }
    MediaRouter.RouteInfo localRouteInfo2 = sGlobal.getSelectedRoute();
    MediaRouter.RouteInfo localRouteInfo1 = localRouteInfo2;
    if (!localRouteInfo2.isDefault())
    {
      localRouteInfo1 = localRouteInfo2;
      if (!localRouteInfo2.matchesSelector(paramMediaRouteSelector))
      {
        localRouteInfo1 = sGlobal.getDefaultRoute();
        sGlobal.selectRoute(localRouteInfo1);
      }
    }
    return localRouteInfo1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */