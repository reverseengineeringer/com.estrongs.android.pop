package android.support.v7.media;

import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.SparseArray;

final class MediaRouteProviderService$ClientRecord
  implements IBinder.DeathRecipient
{
  private final SparseArray<MediaRouteProvider.RouteController> mControllers = new SparseArray();
  public MediaRouteDiscoveryRequest mDiscoveryRequest;
  public final Messenger mMessenger;
  public final int mVersion;
  
  public MediaRouteProviderService$ClientRecord(MediaRouteProviderService paramMediaRouteProviderService, Messenger paramMessenger, int paramInt)
  {
    mMessenger = paramMessenger;
    mVersion = paramInt;
  }
  
  public void binderDied()
  {
    MediaRouteProviderService.access$900(this$0).obtainMessage(1, mMessenger).sendToTarget();
  }
  
  public boolean createRouteController(String paramString, int paramInt)
  {
    if (mControllers.indexOfKey(paramInt) < 0)
    {
      paramString = MediaRouteProviderService.access$700(this$0).onCreateRouteController(paramString);
      if (paramString != null)
      {
        mControllers.put(paramInt, paramString);
        return true;
      }
    }
    return false;
  }
  
  public void dispose()
  {
    int j = mControllers.size();
    int i = 0;
    while (i < j)
    {
      ((MediaRouteProvider.RouteController)mControllers.valueAt(i)).onRelease();
      i += 1;
    }
    mControllers.clear();
    mMessenger.getBinder().unlinkToDeath(this, 0);
    setDiscoveryRequest(null);
  }
  
  public MediaRouteProvider.RouteController getRouteController(int paramInt)
  {
    return (MediaRouteProvider.RouteController)mControllers.get(paramInt);
  }
  
  public boolean hasMessenger(Messenger paramMessenger)
  {
    return mMessenger.getBinder() == paramMessenger.getBinder();
  }
  
  public boolean register()
  {
    try
    {
      mMessenger.getBinder().linkToDeath(this, 0);
      return true;
    }
    catch (RemoteException localRemoteException)
    {
      binderDied();
    }
    return false;
  }
  
  public boolean releaseRouteController(int paramInt)
  {
    MediaRouteProvider.RouteController localRouteController = (MediaRouteProvider.RouteController)mControllers.get(paramInt);
    if (localRouteController != null)
    {
      mControllers.remove(paramInt);
      localRouteController.onRelease();
      return true;
    }
    return false;
  }
  
  public boolean setDiscoveryRequest(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    if ((mDiscoveryRequest != paramMediaRouteDiscoveryRequest) && ((mDiscoveryRequest == null) || (!mDiscoveryRequest.equals(paramMediaRouteDiscoveryRequest))))
    {
      mDiscoveryRequest = paramMediaRouteDiscoveryRequest;
      return MediaRouteProviderService.access$800(this$0);
    }
    return false;
  }
  
  public String toString()
  {
    return MediaRouteProviderService.access$1000(mMessenger);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderService.ClientRecord
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */