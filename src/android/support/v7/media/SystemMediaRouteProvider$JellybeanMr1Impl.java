package android.support.v7.media;

import android.content.Context;
import android.view.Display;
import java.util.ArrayList;

class SystemMediaRouteProvider$JellybeanMr1Impl
  extends SystemMediaRouteProvider.JellybeanImpl
  implements MediaRouterJellybeanMr1.Callback
{
  private MediaRouterJellybeanMr1.ActiveScanWorkaround mActiveScanWorkaround;
  private MediaRouterJellybeanMr1.IsConnectingWorkaround mIsConnectingWorkaround;
  
  public SystemMediaRouteProvider$JellybeanMr1Impl(Context paramContext, SystemMediaRouteProvider.SyncCallback paramSyncCallback)
  {
    super(paramContext, paramSyncCallback);
  }
  
  protected Object createCallbackObj()
  {
    return MediaRouterJellybeanMr1.createCallback(this);
  }
  
  protected boolean isConnecting(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord)
  {
    if (mIsConnectingWorkaround == null) {
      mIsConnectingWorkaround = new MediaRouterJellybeanMr1.IsConnectingWorkaround();
    }
    return mIsConnectingWorkaround.isConnecting(mRouteObj);
  }
  
  protected void onBuildSystemRouteDescriptor(SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord paramSystemRouteRecord, MediaRouteDescriptor.Builder paramBuilder)
  {
    super.onBuildSystemRouteDescriptor(paramSystemRouteRecord, paramBuilder);
    if (!MediaRouterJellybeanMr1.RouteInfo.isEnabled(mRouteObj)) {
      paramBuilder.setEnabled(false);
    }
    if (isConnecting(paramSystemRouteRecord)) {
      paramBuilder.setConnecting(true);
    }
    paramSystemRouteRecord = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(mRouteObj);
    if (paramSystemRouteRecord != null) {
      paramBuilder.setPresentationDisplayId(paramSystemRouteRecord.getDisplayId());
    }
  }
  
  public void onRoutePresentationDisplayChanged(Object paramObject)
  {
    int i = findSystemRouteRecord(paramObject);
    SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord localSystemRouteRecord;
    if (i >= 0)
    {
      localSystemRouteRecord = (SystemMediaRouteProvider.JellybeanImpl.SystemRouteRecord)mSystemRouteRecords.get(i);
      paramObject = MediaRouterJellybeanMr1.RouteInfo.getPresentationDisplay(paramObject);
      if (paramObject == null) {
        break label74;
      }
    }
    label74:
    for (i = ((Display)paramObject).getDisplayId();; i = -1)
    {
      if (i != mRouteDescriptor.getPresentationDisplayId())
      {
        mRouteDescriptor = new MediaRouteDescriptor.Builder(mRouteDescriptor).setPresentationDisplayId(i).build();
        publishRoutes();
      }
      return;
    }
  }
  
  protected void updateCallback()
  {
    super.updateCallback();
    if (mActiveScanWorkaround == null) {
      mActiveScanWorkaround = new MediaRouterJellybeanMr1.ActiveScanWorkaround(getContext(), getHandler());
    }
    MediaRouterJellybeanMr1.ActiveScanWorkaround localActiveScanWorkaround = mActiveScanWorkaround;
    if (mActiveScan) {}
    for (int i = mRouteTypes;; i = 0)
    {
      localActiveScanWorkaround.setActiveScanRouteTypes(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.SystemMediaRouteProvider.JellybeanMr1Impl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */