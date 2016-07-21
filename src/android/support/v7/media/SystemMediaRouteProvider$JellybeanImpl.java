package android.support.v7.media;

import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

class SystemMediaRouteProvider$JellybeanImpl
  extends SystemMediaRouteProvider
  implements MediaRouterJellybean.Callback, MediaRouterJellybean.VolumeCallback
{
  private static final ArrayList<IntentFilter> LIVE_AUDIO_CONTROL_FILTERS;
  private static final ArrayList<IntentFilter> LIVE_VIDEO_CONTROL_FILTERS;
  protected boolean mActiveScan;
  protected final Object mCallbackObj;
  protected boolean mCallbackRegistered;
  private MediaRouterJellybean.GetDefaultRouteWorkaround mGetDefaultRouteWorkaround;
  protected int mRouteTypes;
  protected final Object mRouterObj;
  private MediaRouterJellybean.SelectRouteWorkaround mSelectRouteWorkaround;
  private final SystemMediaRouteProvider.SyncCallback mSyncCallback;
  protected final ArrayList<SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord> mSystemRouteRecords = new ArrayList();
  protected final Object mUserRouteCategoryObj;
  protected final ArrayList<SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord> mUserRouteRecords = new ArrayList();
  protected final Object mVolumeCallbackObj;
  
  static
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
    LIVE_AUDIO_CONTROL_FILTERS = new ArrayList();
    LIVE_AUDIO_CONTROL_FILTERS.add(localIntentFilter);
    localIntentFilter = new IntentFilter();
    localIntentFilter.addCategory("android.media.intent.category.LIVE_VIDEO");
    LIVE_VIDEO_CONTROL_FILTERS = new ArrayList();
    LIVE_VIDEO_CONTROL_FILTERS.add(localIntentFilter);
  }
  
  public SystemMediaRouteProvider$JellybeanImpl(Context paramContext, SystemMediaRouteProvider.SyncCallback paramSyncCallback)
  {
    super(paramContext);
    mSyncCallback = paramSyncCallback;
    mRouterObj = MediaRouterJellybean.getMediaRouter(paramContext);
    mCallbackObj = createCallbackObj();
    mVolumeCallbackObj = createVolumeCallbackObj();
    mUserRouteCategoryObj = MediaRouterJellybean.createRouteCategory(mRouterObj, "Devices", false);
    updateSystemRoutes();
  }
  
  private boolean addSystemRouteNoPublish(Object paramObject)
  {
    if ((getUserRouteRecord(paramObject) == null) && (findSystemRouteRecord(paramObject) < 0))
    {
      paramObject = new SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord(paramObject, assignRouteId(paramObject));
      updateSystemRouteDescriptor((SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord)paramObject);
      mSystemRouteRecords.add(paramObject);
      return true;
    }
    return false;
  }
  
  private String assignRouteId(Object paramObject)
  {
    if (getDefaultRoute() == paramObject)
    {
      i = 1;
      if (i == 0) {
        break label32;
      }
    }
    label32:
    for (paramObject = "DEFAULT_ROUTE";; paramObject = String.format(Locale.US, "ROUTE_%08x", new Object[] { Integer.valueOf(getRouteName(paramObject).hashCode()) }))
    {
      if (findSystemRouteRecordByDescriptorId((String)paramObject) >= 0) {
        break label62;
      }
      return (String)paramObject;
      i = 0;
      break;
    }
    label62:
    int i = 2;
    for (;;)
    {
      String str = String.format(Locale.US, "%s_%d", new Object[] { paramObject, Integer.valueOf(i) });
      if (findSystemRouteRecordByDescriptorId(str) < 0) {
        return str;
      }
      i += 1;
    }
  }
  
  private void updateSystemRoutes()
  {
    boolean bool = false;
    Iterator localIterator = MediaRouterJellybean.getRoutes(mRouterObj).iterator();
    while (localIterator.hasNext()) {
      bool |= addSystemRouteNoPublish(localIterator.next());
    }
    if (bool) {
      publishRoutes();
    }
  }
  
  protected Object createCallbackObj()
  {
    return MediaRouterJellybean.createCallback(this);
  }
  
  protected Object createVolumeCallbackObj()
  {
    return MediaRouterJellybean.createVolumeCallback(this);
  }
  
  protected int findSystemRouteRecord(Object paramObject)
  {
    int j = mSystemRouteRecords.size();
    int i = 0;
    while (i < j)
    {
      if (mSystemRouteRecords.get(i)).mRouteObj == paramObject) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  protected int findSystemRouteRecordByDescriptorId(String paramString)
  {
    int j = mSystemRouteRecords.size();
    int i = 0;
    while (i < j)
    {
      if (mSystemRouteRecords.get(i)).mRouteDescriptorId.equals(paramString)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  protected int findUserRouteRecord(MediaRouter.RouteInfo paramRouteInfo)
  {
    int j = mUserRouteRecords.size();
    int i = 0;
    while (i < j)
    {
      if (mUserRouteRecords.get(i)).mRoute == paramRouteInfo) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  protected Object getDefaultRoute()
  {
    if (mGetDefaultRouteWorkaround == null) {
      mGetDefaultRouteWorkaround = new MediaRouterJellybean.GetDefaultRouteWorkaround();
    }
    return mGetDefaultRouteWorkaround.getDefaultRoute(mRouterObj);
  }
  
  protected String getRouteName(Object paramObject)
  {
    paramObject = MediaRouterJellybean.RouteInfo.getName(paramObject, getContext());
    if (paramObject != null) {
      return ((CharSequence)paramObject).toString();
    }
    return "";
  }
  
  protected SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord getUserRouteRecord(Object paramObject)
  {
    paramObject = MediaRouterJellybean.RouteInfo.getTag(paramObject);
    if ((paramObject instanceof SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord)) {
      return (SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord)paramObject;
    }
    return null;
  }
  
  protected void onBuildSystemRouteDescriptor(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord, MediaRouteDescriptor.Builder paramBuilder)
  {
    int i = MediaRouterJellybean.RouteInfo.getSupportedTypes(mRouteObj);
    if ((i & 0x1) != 0) {
      paramBuilder.addControlFilters(LIVE_AUDIO_CONTROL_FILTERS);
    }
    if ((i & 0x2) != 0) {
      paramBuilder.addControlFilters(LIVE_VIDEO_CONTROL_FILTERS);
    }
    paramBuilder.setPlaybackType(MediaRouterJellybean.RouteInfo.getPlaybackType(mRouteObj));
    paramBuilder.setPlaybackStream(MediaRouterJellybean.RouteInfo.getPlaybackStream(mRouteObj));
    paramBuilder.setVolume(MediaRouterJellybean.RouteInfo.getVolume(mRouteObj));
    paramBuilder.setVolumeMax(MediaRouterJellybean.RouteInfo.getVolumeMax(mRouteObj));
    paramBuilder.setVolumeHandling(MediaRouterJellybean.RouteInfo.getVolumeHandling(mRouteObj));
  }
  
  public MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    int i = findSystemRouteRecordByDescriptorId(paramString);
    if (i >= 0) {
      return new SystemMediaRouteProvider.JellybeanImpl.SystemRouteController(this, mSystemRouteRecords.get(i)).mRouteObj);
    }
    return null;
  }
  
  public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    boolean bool = false;
    int i;
    if (paramMediaRouteDiscoveryRequest != null)
    {
      List localList = paramMediaRouteDiscoveryRequest.getSelector().getControlCategories();
      int k = localList.size();
      int j = 0;
      i = 0;
      if (j < k)
      {
        String str = (String)localList.get(j);
        if (str.equals("android.media.intent.category.LIVE_AUDIO")) {
          i |= 0x1;
        }
        for (;;)
        {
          j += 1;
          break;
          if (str.equals("android.media.intent.category.LIVE_VIDEO")) {
            i |= 0x2;
          } else {
            i = 0x800000 | i;
          }
        }
      }
      bool = paramMediaRouteDiscoveryRequest.isActiveScan();
    }
    for (;;)
    {
      if ((mRouteTypes != i) || (mActiveScan != bool))
      {
        mRouteTypes = i;
        mActiveScan = bool;
        updateCallback();
        updateSystemRoutes();
      }
      return;
      i = 0;
    }
  }
  
  public void onRouteAdded(Object paramObject)
  {
    if (addSystemRouteNoPublish(paramObject)) {
      publishRoutes();
    }
  }
  
  public void onRouteChanged(Object paramObject)
  {
    if (getUserRouteRecord(paramObject) == null)
    {
      int i = findSystemRouteRecord(paramObject);
      if (i >= 0)
      {
        updateSystemRouteDescriptor((SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord)mSystemRouteRecords.get(i));
        publishRoutes();
      }
    }
  }
  
  public void onRouteGrouped(Object paramObject1, Object paramObject2, int paramInt) {}
  
  public void onRouteRemoved(Object paramObject)
  {
    if (getUserRouteRecord(paramObject) == null)
    {
      int i = findSystemRouteRecord(paramObject);
      if (i >= 0)
      {
        mSystemRouteRecords.remove(i);
        publishRoutes();
      }
    }
  }
  
  public void onRouteSelected(int paramInt, Object paramObject)
  {
    if (paramObject != MediaRouterJellybean.getSelectedRoute(mRouterObj, 8388611)) {}
    do
    {
      do
      {
        return;
        SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord localUserRouteRecord = getUserRouteRecord(paramObject);
        if (localUserRouteRecord != null)
        {
          mRoute.select();
          return;
        }
        paramInt = findSystemRouteRecord(paramObject);
      } while (paramInt < 0);
      paramObject = (SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord)mSystemRouteRecords.get(paramInt);
      paramObject = mSyncCallback.getSystemRouteByDescriptorId(mRouteDescriptorId);
    } while (paramObject == null);
    ((MediaRouter.RouteInfo)paramObject).select();
  }
  
  public void onRouteUngrouped(Object paramObject1, Object paramObject2) {}
  
  public void onRouteUnselected(int paramInt, Object paramObject) {}
  
  public void onRouteVolumeChanged(Object paramObject)
  {
    if (getUserRouteRecord(paramObject) == null)
    {
      int i = findSystemRouteRecord(paramObject);
      if (i >= 0)
      {
        SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord localSystemRouteRecord = (SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord)mSystemRouteRecords.get(i);
        i = MediaRouterJellybean.RouteInfo.getVolume(paramObject);
        if (i != mRouteDescriptor.getVolume())
        {
          mRouteDescriptor = new MediaRouteDescriptor.Builder(mRouteDescriptor).setVolume(i).build();
          publishRoutes();
        }
      }
    }
  }
  
  public void onSyncRouteAdded(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo.getProviderInstance() != this)
    {
      Object localObject = MediaRouterJellybean.createUserRoute(mRouterObj, mUserRouteCategoryObj);
      paramRouteInfo = new SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord(paramRouteInfo, localObject);
      MediaRouterJellybean.RouteInfo.setTag(localObject, paramRouteInfo);
      MediaRouterJellybean.UserRouteInfo.setVolumeCallback(localObject, mVolumeCallbackObj);
      updateUserRouteProperties(paramRouteInfo);
      mUserRouteRecords.add(paramRouteInfo);
      MediaRouterJellybean.addUserRoute(mRouterObj, localObject);
    }
    int i;
    do
    {
      return;
      i = findSystemRouteRecord(MediaRouterJellybean.getSelectedRoute(mRouterObj, 8388611));
    } while ((i < 0) || (!mSystemRouteRecords.get(i)).mRouteDescriptorId.equals(paramRouteInfo.getDescriptorId())));
    paramRouteInfo.select();
  }
  
  public void onSyncRouteChanged(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo.getProviderInstance() != this)
    {
      int i = findUserRouteRecord(paramRouteInfo);
      if (i >= 0) {
        updateUserRouteProperties((SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord)mUserRouteRecords.get(i));
      }
    }
  }
  
  public void onSyncRouteRemoved(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (paramRouteInfo.getProviderInstance() != this)
    {
      int i = findUserRouteRecord(paramRouteInfo);
      if (i >= 0)
      {
        paramRouteInfo = (SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord)mUserRouteRecords.remove(i);
        MediaRouterJellybean.RouteInfo.setTag(mRouteObj, null);
        MediaRouterJellybean.UserRouteInfo.setVolumeCallback(mRouteObj, null);
        MediaRouterJellybean.removeUserRoute(mRouterObj, mRouteObj);
      }
    }
  }
  
  public void onSyncRouteSelected(MediaRouter.RouteInfo paramRouteInfo)
  {
    if (!paramRouteInfo.isSelected()) {}
    int i;
    do
    {
      do
      {
        return;
        if (paramRouteInfo.getProviderInstance() == this) {
          break;
        }
        i = findUserRouteRecord(paramRouteInfo);
      } while (i < 0);
      selectRoute(mUserRouteRecords.get(i)).mRouteObj);
      return;
      i = findSystemRouteRecordByDescriptorId(paramRouteInfo.getDescriptorId());
    } while (i < 0);
    selectRoute(mSystemRouteRecords.get(i)).mRouteObj);
  }
  
  public void onVolumeSetRequest(Object paramObject, int paramInt)
  {
    paramObject = getUserRouteRecord(paramObject);
    if (paramObject != null) {
      mRoute.requestSetVolume(paramInt);
    }
  }
  
  public void onVolumeUpdateRequest(Object paramObject, int paramInt)
  {
    paramObject = getUserRouteRecord(paramObject);
    if (paramObject != null) {
      mRoute.requestUpdateVolume(paramInt);
    }
  }
  
  protected void publishRoutes()
  {
    MediaRouteProviderDescriptor.Builder localBuilder = new MediaRouteProviderDescriptor.Builder();
    int j = mSystemRouteRecords.size();
    int i = 0;
    while (i < j)
    {
      localBuilder.addRoute(mSystemRouteRecords.get(i)).mRouteDescriptor);
      i += 1;
    }
    setDescriptor(localBuilder.build());
  }
  
  protected void selectRoute(Object paramObject)
  {
    if (mSelectRouteWorkaround == null) {
      mSelectRouteWorkaround = new MediaRouterJellybean.SelectRouteWorkaround();
    }
    mSelectRouteWorkaround.selectRoute(mRouterObj, 8388611, paramObject);
  }
  
  protected void updateCallback()
  {
    if (mCallbackRegistered)
    {
      mCallbackRegistered = false;
      MediaRouterJellybean.removeCallback(mRouterObj, mCallbackObj);
    }
    if (mRouteTypes != 0)
    {
      mCallbackRegistered = true;
      MediaRouterJellybean.addCallback(mRouterObj, mRouteTypes, mCallbackObj);
    }
  }
  
  protected void updateSystemRouteDescriptor(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord)
  {
    MediaRouteDescriptor.Builder localBuilder = new MediaRouteDescriptor.Builder(mRouteDescriptorId, getRouteName(mRouteObj));
    onBuildSystemRouteDescriptor(paramSystemRouteRecord, localBuilder);
    mRouteDescriptor = localBuilder.build();
  }
  
  protected void updateUserRouteProperties(SystemMediaRouteProvider.JellybeanImpl.UserRouteRecord paramUserRouteRecord)
  {
    MediaRouterJellybean.UserRouteInfo.setName(mRouteObj, mRoute.getName());
    MediaRouterJellybean.UserRouteInfo.setPlaybackType(mRouteObj, mRoute.getPlaybackType());
    MediaRouterJellybean.UserRouteInfo.setPlaybackStream(mRouteObj, mRoute.getPlaybackStream());
    MediaRouterJellybean.UserRouteInfo.setVolume(mRouteObj, mRoute.getVolume());
    MediaRouterJellybean.UserRouteInfo.setVolumeMax(mRouteObj, mRoute.getVolumeMax());
    MediaRouterJellybean.UserRouteInfo.setVolumeHandling(mRouteObj, mRoute.getVolumeHandling());
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.JellybeanImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */