package android.support.v7.media;

import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

final class MediaRouter$GlobalMediaRouter
  implements RegisteredMediaRouteProviderWatcher.Callback, SystemMediaRouteProvider.SyncCallback
{
  private final Context mApplicationContext;
  private final MediaRouter.GlobalMediaRouter.CallbackHandler mCallbackHandler = new MediaRouter.GlobalMediaRouter.CallbackHandler(this, null);
  private MediaRouter.RouteInfo mDefaultRoute;
  private MediaRouteDiscoveryRequest mDiscoveryRequest;
  private final RemoteControlClientCompat.PlaybackInfo mPlaybackInfo = new RemoteControlClientCompat.PlaybackInfo();
  private final MediaRouter.GlobalMediaRouter.ProviderCallback mProviderCallback = new MediaRouter.GlobalMediaRouter.ProviderCallback(this, null);
  private final ArrayList<MediaRouter.ProviderInfo> mProviders = new ArrayList();
  private RegisteredMediaRouteProviderWatcher mRegisteredProviderWatcher;
  private final ArrayList<MediaRouter.GlobalMediaRouter.RemoteControlClientRecord> mRemoteControlClients = new ArrayList();
  private final ArrayList<WeakReference<MediaRouter>> mRouters = new ArrayList();
  private final ArrayList<MediaRouter.RouteInfo> mRoutes = new ArrayList();
  private MediaRouter.RouteInfo mSelectedRoute;
  private MediaRouteProvider.RouteController mSelectedRouteController;
  private final SystemMediaRouteProvider mSystemProvider;
  
  MediaRouter$GlobalMediaRouter(Context paramContext)
  {
    mApplicationContext = paramContext;
    mSystemProvider = SystemMediaRouteProvider.obtain(paramContext, this);
    addProvider(mSystemProvider);
  }
  
  private String assignRouteUniqueId(MediaRouter.ProviderInfo paramProviderInfo, String paramString)
  {
    paramProviderInfo = paramProviderInfo.getComponentName().flattenToShortString() + ":" + paramString;
    if (findRouteByUniqueId(paramProviderInfo) < 0) {
      return paramProviderInfo;
    }
    int i = 2;
    for (;;)
    {
      paramString = String.format(Locale.US, "%s_%d", new Object[] { paramProviderInfo, Integer.valueOf(i) });
      if (findRouteByUniqueId(paramString) < 0) {
        return paramString;
      }
      i += 1;
    }
  }
  
  private MediaRouter.RouteInfo chooseFallbackRoute()
  {
    Iterator localIterator = mRoutes.iterator();
    while (localIterator.hasNext())
    {
      MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)localIterator.next();
      if ((localRouteInfo != mDefaultRoute) && (isSystemLiveAudioOnlyRoute(localRouteInfo)) && (isRouteSelectable(localRouteInfo))) {
        return localRouteInfo;
      }
    }
    return mDefaultRoute;
  }
  
  private int findProviderInfo(MediaRouteProvider paramMediaRouteProvider)
  {
    int j = mProviders.size();
    int i = 0;
    while (i < j)
    {
      if (MediaRouter.ProviderInfo.access$500((MediaRouter.ProviderInfo)mProviders.get(i)) == paramMediaRouteProvider) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private int findRemoteControlClientRecord(Object paramObject)
  {
    int j = mRemoteControlClients.size();
    int i = 0;
    while (i < j)
    {
      if (((MediaRouter.GlobalMediaRouter.RemoteControlClientRecord)mRemoteControlClients.get(i)).getRemoteControlClient() == paramObject) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private int findRouteByUniqueId(String paramString)
  {
    int j = mRoutes.size();
    int i = 0;
    while (i < j)
    {
      if (MediaRouter.RouteInfo.access$700((MediaRouter.RouteInfo)mRoutes.get(i)).equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private boolean isRouteSelectable(MediaRouter.RouteInfo paramRouteInfo)
  {
    return (MediaRouter.RouteInfo.access$800(paramRouteInfo) != null) && (MediaRouter.RouteInfo.access$300(paramRouteInfo));
  }
  
  private boolean isSystemDefaultRoute(MediaRouter.RouteInfo paramRouteInfo)
  {
    return (paramRouteInfo.getProviderInstance() == mSystemProvider) && (MediaRouter.RouteInfo.access$000(paramRouteInfo).equals("DEFAULT_ROUTE"));
  }
  
  private boolean isSystemLiveAudioOnlyRoute(MediaRouter.RouteInfo paramRouteInfo)
  {
    return (paramRouteInfo.getProviderInstance() == mSystemProvider) && (paramRouteInfo.supportsControlCategory("android.media.intent.category.LIVE_AUDIO")) && (!paramRouteInfo.supportsControlCategory("android.media.intent.category.LIVE_VIDEO"));
  }
  
  private void setSelectedRouteInternal(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (mSelectedRoute != paramRouteInfo)
    {
      if (mSelectedRoute != null)
      {
        if (MediaRouter.access$400()) {
          Log.d("MediaRouter", "Route unselected: " + mSelectedRoute);
        }
        mCallbackHandler.post(263, mSelectedRoute);
        if (mSelectedRouteController != null)
        {
          mSelectedRouteController.onUnselect();
          mSelectedRouteController.onRelease();
          mSelectedRouteController = null;
        }
      }
      mSelectedRoute = paramRouteInfo;
      if (mSelectedRoute != null)
      {
        mSelectedRouteController = paramRouteInfo.getProviderInstance().onCreateRouteController(MediaRouter.RouteInfo.access$000(paramRouteInfo));
        if (mSelectedRouteController != null) {
          mSelectedRouteController.onSelect();
        }
        if (MediaRouter.access$400()) {
          Log.d("MediaRouter", "Route selected: " + mSelectedRoute);
        }
        mCallbackHandler.post(262, mSelectedRoute);
      }
      updatePlaybackInfoFromSelectedRoute();
    }
  }
  
  private void updatePlaybackInfoFromSelectedRoute()
  {
    if (mSelectedRoute != null)
    {
      mPlaybackInfo.volume = mSelectedRoute.getVolume();
      mPlaybackInfo.volumeMax = mSelectedRoute.getVolumeMax();
      mPlaybackInfo.volumeHandling = mSelectedRoute.getVolumeHandling();
      mPlaybackInfo.playbackStream = mSelectedRoute.getPlaybackStream();
      mPlaybackInfo.playbackType = mSelectedRoute.getPlaybackType();
      int j = mRemoteControlClients.size();
      int i = 0;
      while (i < j)
      {
        ((MediaRouter.GlobalMediaRouter.RemoteControlClientRecord)mRemoteControlClients.get(i)).updatePlaybackInfo();
        i += 1;
      }
    }
  }
  
  private void updateProviderContents(MediaRouter.ProviderInfo paramProviderInfo, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    int j;
    int i;
    int k;
    MediaRouteDescriptor localMediaRouteDescriptor;
    Object localObject;
    int n;
    ArrayList localArrayList;
    if (paramProviderInfo.updateDescriptor(paramMediaRouteProviderDescriptor)) {
      if (paramMediaRouteProviderDescriptor != null) {
        if (paramMediaRouteProviderDescriptor.isValid())
        {
          paramMediaRouteProviderDescriptor = paramMediaRouteProviderDescriptor.getRoutes();
          int m = paramMediaRouteProviderDescriptor.size();
          j = 0;
          i = 0;
          bool2 = bool1;
          k = i;
          if (j >= m) {
            break label484;
          }
          localMediaRouteDescriptor = (MediaRouteDescriptor)paramMediaRouteProviderDescriptor.get(j);
          localObject = localMediaRouteDescriptor.getId();
          n = paramProviderInfo.findRouteByDescriptorId((String)localObject);
          if (n < 0)
          {
            localObject = new MediaRouter.RouteInfo(paramProviderInfo, (String)localObject, assignRouteUniqueId(paramProviderInfo, (String)localObject));
            localArrayList = MediaRouter.ProviderInfo.access$600(paramProviderInfo);
            k = i + 1;
            localArrayList.add(i, localObject);
            mRoutes.add(localObject);
            ((MediaRouter.RouteInfo)localObject).updateDescriptor(localMediaRouteDescriptor);
            if (MediaRouter.access$400()) {
              Log.d("MediaRouter", "Route added: " + localObject);
            }
            mCallbackHandler.post(257, localObject);
            i = k;
          }
        }
      }
    }
    for (;;)
    {
      j += 1;
      break;
      if (n < i)
      {
        Log.w("MediaRouter", "Ignoring route descriptor with duplicate id: " + localMediaRouteDescriptor);
      }
      else
      {
        localObject = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$600(paramProviderInfo).get(n);
        localArrayList = MediaRouter.ProviderInfo.access$600(paramProviderInfo);
        k = i + 1;
        Collections.swap(localArrayList, n, i);
        i = ((MediaRouter.RouteInfo)localObject).updateDescriptor(localMediaRouteDescriptor);
        if (i != 0)
        {
          if ((i & 0x1) != 0)
          {
            if (MediaRouter.access$400()) {
              Log.d("MediaRouter", "Route changed: " + localObject);
            }
            mCallbackHandler.post(259, localObject);
          }
          if ((i & 0x2) != 0)
          {
            if (MediaRouter.access$400()) {
              Log.d("MediaRouter", "Route volume changed: " + localObject);
            }
            mCallbackHandler.post(260, localObject);
          }
          if ((i & 0x4) != 0)
          {
            if (MediaRouter.access$400()) {
              Log.d("MediaRouter", "Route presentation display changed: " + localObject);
            }
            mCallbackHandler.post(261, localObject);
          }
          if (localObject == mSelectedRoute)
          {
            bool1 = true;
            i = k;
            continue;
            Log.w("MediaRouter", "Ignoring invalid provider descriptor: " + paramMediaRouteProviderDescriptor);
            k = 0;
            label484:
            i = MediaRouter.ProviderInfo.access$600(paramProviderInfo).size() - 1;
            while (i >= k)
            {
              paramMediaRouteProviderDescriptor = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$600(paramProviderInfo).get(i);
              paramMediaRouteProviderDescriptor.updateDescriptor(null);
              mRoutes.remove(paramMediaRouteProviderDescriptor);
              i -= 1;
            }
            updateSelectedRouteIfNeeded(bool2);
            i = MediaRouter.ProviderInfo.access$600(paramProviderInfo).size() - 1;
            while (i >= k)
            {
              paramMediaRouteProviderDescriptor = (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$600(paramProviderInfo).remove(i);
              if (MediaRouter.access$400()) {
                Log.d("MediaRouter", "Route removed: " + paramMediaRouteProviderDescriptor);
              }
              mCallbackHandler.post(258, paramMediaRouteProviderDescriptor);
              i -= 1;
            }
            if (MediaRouter.access$400()) {
              Log.d("MediaRouter", "Provider changed: " + paramProviderInfo);
            }
            mCallbackHandler.post(515, paramProviderInfo);
            return;
          }
        }
        i = k;
      }
    }
  }
  
  private void updateProviderDescriptor(MediaRouteProvider paramMediaRouteProvider, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    int i = findProviderInfo(paramMediaRouteProvider);
    if (i >= 0) {
      updateProviderContents((MediaRouter.ProviderInfo)mProviders.get(i), paramMediaRouteProviderDescriptor);
    }
  }
  
  private void updateSelectedRouteIfNeeded(boolean paramBoolean)
  {
    if ((mDefaultRoute != null) && (!isRouteSelectable(mDefaultRoute)))
    {
      Log.i("MediaRouter", "Clearing the default route because it is no longer selectable: " + mDefaultRoute);
      mDefaultRoute = null;
    }
    if ((mDefaultRoute == null) && (!mRoutes.isEmpty()))
    {
      Iterator localIterator = mRoutes.iterator();
      while (localIterator.hasNext())
      {
        MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)localIterator.next();
        if ((isSystemDefaultRoute(localRouteInfo)) && (isRouteSelectable(localRouteInfo)))
        {
          mDefaultRoute = localRouteInfo;
          Log.i("MediaRouter", "Found default route: " + mDefaultRoute);
        }
      }
    }
    if ((mSelectedRoute != null) && (!isRouteSelectable(mSelectedRoute)))
    {
      Log.i("MediaRouter", "Unselecting the current route because it is no longer selectable: " + mSelectedRoute);
      setSelectedRouteInternal(null);
    }
    if (mSelectedRoute == null) {
      setSelectedRouteInternal(chooseFallbackRoute());
    }
    while (!paramBoolean) {
      return;
    }
    updatePlaybackInfoFromSelectedRoute();
  }
  
  public void addProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    if (findProviderInfo(paramMediaRouteProvider) < 0)
    {
      MediaRouter.ProviderInfo localProviderInfo = new MediaRouter.ProviderInfo(paramMediaRouteProvider);
      mProviders.add(localProviderInfo);
      if (MediaRouter.access$400()) {
        Log.d("MediaRouter", "Provider added: " + localProviderInfo);
      }
      mCallbackHandler.post(513, localProviderInfo);
      updateProviderContents(localProviderInfo, paramMediaRouteProvider.getDescriptor());
      paramMediaRouteProvider.setCallback(mProviderCallback);
      paramMediaRouteProvider.setDiscoveryRequest(mDiscoveryRequest);
    }
  }
  
  public void addRemoteControlClient(Object paramObject)
  {
    if (findRemoteControlClientRecord(paramObject) < 0)
    {
      paramObject = new MediaRouter.GlobalMediaRouter.RemoteControlClientRecord(this, paramObject);
      mRemoteControlClients.add(paramObject);
    }
  }
  
  public ContentResolver getContentResolver()
  {
    return mApplicationContext.getContentResolver();
  }
  
  public MediaRouter.RouteInfo getDefaultRoute()
  {
    if (mDefaultRoute == null) {
      throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
    }
    return mDefaultRoute;
  }
  
  public Context getProviderContext(String paramString)
  {
    if (paramString.equals("android")) {
      return mApplicationContext;
    }
    try
    {
      paramString = mApplicationContext.createPackageContext(paramString, 4);
      return paramString;
    }
    catch (PackageManager.NameNotFoundException paramString) {}
    return null;
  }
  
  public List<MediaRouter.ProviderInfo> getProviders()
  {
    return mProviders;
  }
  
  public MediaRouter getRouter(Context paramContext)
  {
    int i = mRouters.size();
    for (;;)
    {
      i -= 1;
      if (i >= 0)
      {
        MediaRouter localMediaRouter = (MediaRouter)((WeakReference)mRouters.get(i)).get();
        if (localMediaRouter == null) {
          mRouters.remove(i);
        } else if (mContext == paramContext) {
          return localMediaRouter;
        }
      }
      else
      {
        paramContext = new MediaRouter(paramContext);
        mRouters.add(new WeakReference(paramContext));
        return paramContext;
      }
    }
  }
  
  public List<MediaRouter.RouteInfo> getRoutes()
  {
    return mRoutes;
  }
  
  public MediaRouter.RouteInfo getSelectedRoute()
  {
    if (mSelectedRoute == null) {
      throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }
    return mSelectedRoute;
  }
  
  public MediaRouter.RouteInfo getSystemRouteByDescriptorId(String paramString)
  {
    int i = findProviderInfo(mSystemProvider);
    if (i >= 0)
    {
      MediaRouter.ProviderInfo localProviderInfo = (MediaRouter.ProviderInfo)mProviders.get(i);
      i = localProviderInfo.findRouteByDescriptorId(paramString);
      if (i >= 0) {
        return (MediaRouter.RouteInfo)MediaRouter.ProviderInfo.access$600(localProviderInfo).get(i);
      }
    }
    return null;
  }
  
  public boolean isRouteAvailable(MediaRouteSelector paramMediaRouteSelector, int paramInt)
  {
    int j = mRoutes.size();
    int i = 0;
    if (i < j)
    {
      MediaRouter.RouteInfo localRouteInfo = (MediaRouter.RouteInfo)mRoutes.get(i);
      if (((paramInt & 0x1) != 0) && (localRouteInfo.isDefault())) {}
      while (!localRouteInfo.matchesSelector(paramMediaRouteSelector))
      {
        i += 1;
        break;
      }
      return true;
    }
    return false;
  }
  
  public void removeProvider(MediaRouteProvider paramMediaRouteProvider)
  {
    int i = findProviderInfo(paramMediaRouteProvider);
    if (i >= 0)
    {
      paramMediaRouteProvider.setCallback(null);
      paramMediaRouteProvider.setDiscoveryRequest(null);
      paramMediaRouteProvider = (MediaRouter.ProviderInfo)mProviders.get(i);
      updateProviderContents(paramMediaRouteProvider, null);
      if (MediaRouter.access$400()) {
        Log.d("MediaRouter", "Provider removed: " + paramMediaRouteProvider);
      }
      mCallbackHandler.post(514, paramMediaRouteProvider);
      mProviders.remove(i);
    }
  }
  
  public void removeRemoteControlClient(Object paramObject)
  {
    int i = findRemoteControlClientRecord(paramObject);
    if (i >= 0) {
      ((MediaRouter.GlobalMediaRouter.RemoteControlClientRecord)mRemoteControlClients.remove(i)).disconnect();
    }
  }
  
  public void requestSetVolume(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
  {
    if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null)) {
      mSelectedRouteController.onSetVolume(paramInt);
    }
  }
  
  public void requestUpdateVolume(MediaRouter.RouteInfo paramRouteInfo, int paramInt)
  {
    if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null)) {
      mSelectedRouteController.onUpdateVolume(paramInt);
    }
  }
  
  public void selectRoute(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (!mRoutes.contains(paramRouteInfo))
    {
      Log.w("MediaRouter", "Ignoring attempt to select removed route: " + paramRouteInfo);
      return;
    }
    if (!MediaRouter.RouteInfo.access$300(paramRouteInfo))
    {
      Log.w("MediaRouter", "Ignoring attempt to select disabled route: " + paramRouteInfo);
      return;
    }
    setSelectedRouteInternal(paramRouteInfo);
  }
  
  public void sendControlRequest(MediaRouter.RouteInfo paramRouteInfo, Intent paramIntent, MediaRouter.ControlRequestCallback paramControlRequestCallback)
  {
    if ((paramRouteInfo == mSelectedRoute) && (mSelectedRouteController != null) && (mSelectedRouteController.onControlRequest(paramIntent, paramControlRequestCallback))) {}
    while (paramControlRequestCallback == null) {
      return;
    }
    paramControlRequestCallback.onError(null, null);
  }
  
  public void start()
  {
    mRegisteredProviderWatcher = new RegisteredMediaRouteProviderWatcher(mApplicationContext, this);
    mRegisteredProviderWatcher.start();
  }
  
  public void updateDiscoveryRequest()
  {
    Object localObject = new MediaRouteSelector.Builder();
    int j = mRouters.size();
    boolean bool1 = false;
    MediaRouter localMediaRouter;
    int k;
    boolean bool2;
    for (int i = 0;; i = k)
    {
      int m = j - 1;
      if (m < 0) {
        break label168;
      }
      localMediaRouter = (MediaRouter)((WeakReference)mRouters.get(m)).get();
      if (localMediaRouter != null) {
        break;
      }
      mRouters.remove(m);
      k = i;
      bool2 = bool1;
      j = m;
      bool1 = bool2;
    }
    int n = mCallbackRecords.size();
    j = 0;
    for (;;)
    {
      bool2 = bool1;
      k = i;
      if (j >= n) {
        break;
      }
      MediaRouter.CallbackRecord localCallbackRecord = (MediaRouter.CallbackRecord)mCallbackRecords.get(j);
      ((MediaRouteSelector.Builder)localObject).addSelector(mSelector);
      if ((mFlags & 0x1) != 0)
      {
        bool1 = true;
        i = 1;
      }
      if ((mFlags & 0x4) != 0) {
        i = 1;
      }
      j += 1;
    }
    label168:
    if (i != 0)
    {
      localObject = ((MediaRouteSelector.Builder)localObject).build();
      if ((mDiscoveryRequest == null) || (!mDiscoveryRequest.getSelector().equals(localObject)) || (mDiscoveryRequest.isActiveScan() != bool1)) {
        break label222;
      }
    }
    label222:
    do
    {
      return;
      localObject = MediaRouteSelector.EMPTY;
      break;
      if ((!((MediaRouteSelector)localObject).isEmpty()) || (bool1)) {
        break label325;
      }
    } while (mDiscoveryRequest == null);
    label325:
    for (mDiscoveryRequest = null;; mDiscoveryRequest = new MediaRouteDiscoveryRequest((MediaRouteSelector)localObject, bool1))
    {
      if (MediaRouter.access$400()) {
        Log.d("MediaRouter", "Updated discovery request: " + mDiscoveryRequest);
      }
      j = mProviders.size();
      i = 0;
      while (i < j)
      {
        MediaRouter.ProviderInfo.access$500((MediaRouter.ProviderInfo)mProviders.get(i)).setDiscoveryRequest(mDiscoveryRequest);
        i += 1;
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouter.GlobalMediaRouter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */