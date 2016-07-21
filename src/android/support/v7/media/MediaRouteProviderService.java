package android.support.v7.media;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;

public abstract class MediaRouteProviderService
  extends Service
{
  private static final boolean DEBUG = Log.isLoggable("MediaRouteProviderSrv", 3);
  private static final int PRIVATE_MSG_CLIENT_DIED = 1;
  public static final String SERVICE_INTERFACE = "android.media.MediaRouteProviderService";
  private static final String TAG = "MediaRouteProviderSrv";
  private final ArrayList<MediaRouteProviderService.ClientRecord> mClients = new ArrayList();
  private MediaRouteDiscoveryRequest mCompositeDiscoveryRequest;
  private final MediaRouteProviderService.PrivateHandler mPrivateHandler = new MediaRouteProviderService.PrivateHandler(this, null);
  private MediaRouteProvider mProvider;
  private final MediaRouteProviderService.ProviderCallback mProviderCallback = new MediaRouteProviderService.ProviderCallback(this, null);
  private final MediaRouteProviderService.ReceiveHandler mReceiveHandler = new MediaRouteProviderService.ReceiveHandler(this);
  private final Messenger mReceiveMessenger = new Messenger(mReceiveHandler);
  
  private int findClient(Messenger paramMessenger)
  {
    int j = mClients.size();
    int i = 0;
    while (i < j)
    {
      if (((MediaRouteProviderService.ClientRecord)mClients.get(i)).hasMessenger(paramMessenger)) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  private MediaRouteProviderService.ClientRecord getClient(Messenger paramMessenger)
  {
    int i = findClient(paramMessenger);
    if (i >= 0) {
      return (MediaRouteProviderService.ClientRecord)mClients.get(i);
    }
    return null;
  }
  
  private static String getClientId(Messenger paramMessenger)
  {
    return "Client connection " + paramMessenger.getBinder().toString();
  }
  
  private void onBinderDied(Messenger paramMessenger)
  {
    int i = findClient(paramMessenger);
    if (i >= 0)
    {
      paramMessenger = (MediaRouteProviderService.ClientRecord)mClients.remove(i);
      if (DEBUG) {
        Log.d("MediaRouteProviderSrv", paramMessenger + ": Binder died");
      }
      paramMessenger.dispose();
    }
  }
  
  private boolean onCreateRouteController(Messenger paramMessenger, int paramInt1, int paramInt2, String paramString)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if ((localClientRecord != null) && (localClientRecord.createRouteController(paramString, paramInt2)))
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderSrv", localClientRecord + ": Route controller created" + ", controllerId=" + paramInt2 + ", routeId=" + paramString);
      }
      sendGenericSuccess(paramMessenger, paramInt1);
      return true;
    }
    return false;
  }
  
  private boolean onRegisterClient(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    if ((paramInt2 >= 1) && (findClient(paramMessenger) < 0))
    {
      Object localObject = new MediaRouteProviderService.ClientRecord(this, paramMessenger, paramInt2);
      if (((MediaRouteProviderService.ClientRecord)localObject).register())
      {
        mClients.add(localObject);
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localObject + ": Registered, version=" + paramInt2);
        }
        if (paramInt1 != 0)
        {
          localObject = mProvider.getDescriptor();
          if (localObject == null) {
            break label116;
          }
        }
        label116:
        for (localObject = ((MediaRouteProviderDescriptor)localObject).asBundle();; localObject = null)
        {
          sendReply(paramMessenger, 2, paramInt1, 1, localObject, null);
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean onReleaseRouteController(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if ((localClientRecord != null) && (localClientRecord.releaseRouteController(paramInt2)))
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderSrv", localClientRecord + ": Route controller released" + ", controllerId=" + paramInt2);
      }
      sendGenericSuccess(paramMessenger, paramInt1);
      return true;
    }
    return false;
  }
  
  private boolean onRouteControlRequest(Messenger paramMessenger, int paramInt1, int paramInt2, Intent paramIntent)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        MediaRouteProviderService.1 local1 = null;
        if (paramInt1 != 0) {
          local1 = new MediaRouteProviderService.1(this, localClientRecord, paramInt2, paramIntent, paramMessenger, paramInt1);
        }
        if (localRouteController.onControlRequest(paramIntent, local1))
        {
          if (DEBUG) {
            Log.d("MediaRouteProviderSrv", localClientRecord + ": Route control request delivered" + ", controllerId=" + paramInt2 + ", intent=" + paramIntent);
          }
          return true;
        }
      }
    }
    return false;
  }
  
  private boolean onSelectRoute(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onSelect();
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localClientRecord + ": Route selected" + ", controllerId=" + paramInt2);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onSetDiscoveryRequest(Messenger paramMessenger, int paramInt, MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      boolean bool = localClientRecord.setDiscoveryRequest(paramMediaRouteDiscoveryRequest);
      if (DEBUG) {
        Log.d("MediaRouteProviderSrv", localClientRecord + ": Set discovery request, request=" + paramMediaRouteDiscoveryRequest + ", actuallyChanged=" + bool + ", compositeDiscoveryRequest=" + mCompositeDiscoveryRequest);
      }
      sendGenericSuccess(paramMessenger, paramInt);
      return true;
    }
    return false;
  }
  
  private boolean onSetRouteVolume(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onSetVolume(paramInt3);
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localClientRecord + ": Route volume changed" + ", controllerId=" + paramInt2 + ", volume=" + paramInt3);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onUnregisterClient(Messenger paramMessenger, int paramInt)
  {
    int i = findClient(paramMessenger);
    if (i >= 0)
    {
      MediaRouteProviderService.ClientRecord localClientRecord = (MediaRouteProviderService.ClientRecord)mClients.remove(i);
      if (DEBUG) {
        Log.d("MediaRouteProviderSrv", localClientRecord + ": Unregistered");
      }
      localClientRecord.dispose();
      sendGenericSuccess(paramMessenger, paramInt);
      return true;
    }
    return false;
  }
  
  private boolean onUnselectRoute(Messenger paramMessenger, int paramInt1, int paramInt2)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onUnselect();
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localClientRecord + ": Route unselected" + ", controllerId=" + paramInt2);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private boolean onUpdateRouteVolume(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3)
  {
    MediaRouteProviderService.ClientRecord localClientRecord = getClient(paramMessenger);
    if (localClientRecord != null)
    {
      MediaRouteProvider.RouteController localRouteController = localClientRecord.getRouteController(paramInt2);
      if (localRouteController != null)
      {
        localRouteController.onUpdateVolume(paramInt3);
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localClientRecord + ": Route volume updated" + ", controllerId=" + paramInt2 + ", delta=" + paramInt3);
        }
        sendGenericSuccess(paramMessenger, paramInt1);
        return true;
      }
    }
    return false;
  }
  
  private void sendDescriptorChanged(MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (paramMediaRouteProviderDescriptor != null) {}
    for (Bundle localBundle = paramMediaRouteProviderDescriptor.asBundle();; localBundle = null)
    {
      int j = mClients.size();
      int i = 0;
      while (i < j)
      {
        MediaRouteProviderService.ClientRecord localClientRecord = (MediaRouteProviderService.ClientRecord)mClients.get(i);
        sendReply(mMessenger, 5, 0, 0, localBundle, null);
        if (DEBUG) {
          Log.d("MediaRouteProviderSrv", localClientRecord + ": Sent descriptor change event, descriptor=" + paramMediaRouteProviderDescriptor);
        }
        i += 1;
      }
    }
  }
  
  private static void sendGenericFailure(Messenger paramMessenger, int paramInt)
  {
    if (paramInt != 0) {
      sendReply(paramMessenger, 0, paramInt, 0, null, null);
    }
  }
  
  private static void sendGenericSuccess(Messenger paramMessenger, int paramInt)
  {
    if (paramInt != 0) {
      sendReply(paramMessenger, 1, paramInt, 0, null, null);
    }
  }
  
  private static void sendReply(Messenger paramMessenger, int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
  {
    Message localMessage = Message.obtain();
    what = paramInt1;
    arg1 = paramInt2;
    arg2 = paramInt3;
    obj = paramObject;
    localMessage.setData(paramBundle);
    try
    {
      paramMessenger.send(localMessage);
      return;
    }
    catch (RemoteException paramObject)
    {
      Log.e("MediaRouteProviderSrv", "Could not send message to " + getClientId(paramMessenger), (Throwable)paramObject);
      return;
    }
    catch (DeadObjectException paramMessenger) {}
  }
  
  private boolean updateCompositeDiscoveryRequest()
  {
    Object localObject2 = null;
    int j = mClients.size();
    int i = 0;
    boolean bool = false;
    Object localObject1 = null;
    Object localObject3;
    if (i < j)
    {
      localObject3 = mClients.get(i)).mDiscoveryRequest;
      if ((localObject3 == null) || ((((MediaRouteDiscoveryRequest)localObject3).getSelector().isEmpty()) && (!((MediaRouteDiscoveryRequest)localObject3).isActiveScan()))) {
        break label218;
      }
      bool = ((MediaRouteDiscoveryRequest)localObject3).isActiveScan() | bool;
      if (localObject1 == null)
      {
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    for (;;)
    {
      i += 1;
      localObject3 = localObject2;
      localObject2 = localObject1;
      localObject1 = localObject3;
      break;
      if (localObject2 == null) {
        localObject2 = new MediaRouteSelector.Builder(((MediaRouteDiscoveryRequest)localObject1).getSelector());
      }
      for (;;)
      {
        ((MediaRouteSelector.Builder)localObject2).addSelector(((MediaRouteDiscoveryRequest)localObject3).getSelector());
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        break;
        if (localObject2 != null) {
          localObject1 = new MediaRouteDiscoveryRequest(((MediaRouteSelector.Builder)localObject2).build(), bool);
        }
        if ((mCompositeDiscoveryRequest != localObject1) && ((mCompositeDiscoveryRequest == null) || (!mCompositeDiscoveryRequest.equals(localObject1))))
        {
          mCompositeDiscoveryRequest = ((MediaRouteDiscoveryRequest)localObject1);
          mProvider.setDiscoveryRequest((MediaRouteDiscoveryRequest)localObject1);
          return true;
        }
        return false;
      }
      label218:
      localObject3 = localObject1;
      localObject1 = localObject2;
      localObject2 = localObject3;
    }
  }
  
  public MediaRouteProvider getMediaRouteProvider()
  {
    return mProvider;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.media.MediaRouteProviderService"))
    {
      if (mProvider == null)
      {
        paramIntent = onCreateMediaRouteProvider();
        if (paramIntent != null)
        {
          String str = paramIntent.getMetadata().getPackageName();
          if (!str.equals(getPackageName())) {
            throw new IllegalStateException("onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: " + str + ".  Service package name: " + getPackageName() + ".");
          }
          mProvider = paramIntent;
          mProvider.setCallback(mProviderCallback);
        }
      }
      if (mProvider != null) {
        return mReceiveMessenger.getBinder();
      }
    }
    return null;
  }
  
  public abstract MediaRouteProvider onCreateMediaRouteProvider();
}

/* Location:
 * Qualified Name:     android.support.v7.media.MediaRouteProviderService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */