package android.support.v7.media;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Messenger;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

final class RegisteredMediaRouteProvider
  extends MediaRouteProvider
  implements ServiceConnection
{
  private static final boolean DEBUG = Log.isLoggable("MediaRouteProviderProxy", 3);
  private static final String TAG = "MediaRouteProviderProxy";
  private RegisteredMediaRouteProvider.Connection mActiveConnection;
  private boolean mBound;
  private final ComponentName mComponentName;
  private boolean mConnectionReady;
  private final ArrayList<RegisteredMediaRouteProvider.Controller> mControllers = new ArrayList();
  private final RegisteredMediaRouteProvider.PrivateHandler mPrivateHandler;
  private boolean mStarted;
  
  public RegisteredMediaRouteProvider(Context paramContext, ComponentName paramComponentName)
  {
    super(paramContext, new MediaRouteProvider.ProviderMetadata(paramComponentName));
    mComponentName = paramComponentName;
    mPrivateHandler = new RegisteredMediaRouteProvider.PrivateHandler(this, null);
  }
  
  private void attachControllersToConnection()
  {
    int j = mControllers.size();
    int i = 0;
    while (i < j)
    {
      ((RegisteredMediaRouteProvider.Controller)mControllers.get(i)).attachConnection(mActiveConnection);
      i += 1;
    }
  }
  
  private void bind()
  {
    Intent localIntent;
    if (!mBound)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Binding");
      }
      localIntent = new Intent("android.media.MediaRouteProviderService");
      localIntent.setComponent(mComponentName);
    }
    try
    {
      mBound = getContext().bindService(localIntent, this, 1);
      if ((!mBound) && (DEBUG)) {
        Log.d("MediaRouteProviderProxy", this + ": Bind failed");
      }
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (!DEBUG) {}
      Log.d("MediaRouteProviderProxy", this + ": Bind failed", localSecurityException);
    }
  }
  
  private void detachControllersFromConnection()
  {
    int j = mControllers.size();
    int i = 0;
    while (i < j)
    {
      ((RegisteredMediaRouteProvider.Controller)mControllers.get(i)).detachConnection();
      i += 1;
    }
  }
  
  private void disconnect()
  {
    if (mActiveConnection != null)
    {
      setDescriptor(null);
      mConnectionReady = false;
      detachControllersFromConnection();
      mActiveConnection.dispose();
      mActiveConnection = null;
    }
  }
  
  private void onConnectionDescriptorChanged(RegisteredMediaRouteProvider.Connection paramConnection, MediaRouteProviderDescriptor paramMediaRouteProviderDescriptor)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Descriptor changed, descriptor=" + paramMediaRouteProviderDescriptor);
      }
      setDescriptor(paramMediaRouteProviderDescriptor);
    }
  }
  
  private void onConnectionDied(RegisteredMediaRouteProvider.Connection paramConnection)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Service connection died");
      }
      disconnect();
    }
  }
  
  private void onConnectionError(RegisteredMediaRouteProvider.Connection paramConnection, String paramString)
  {
    if (mActiveConnection == paramConnection)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Service connection error - " + paramString);
      }
      unbind();
    }
  }
  
  private void onConnectionReady(RegisteredMediaRouteProvider.Connection paramConnection)
  {
    if (mActiveConnection == paramConnection)
    {
      mConnectionReady = true;
      attachControllersToConnection();
      paramConnection = getDiscoveryRequest();
      if (paramConnection != null) {
        mActiveConnection.setDiscoveryRequest(paramConnection);
      }
    }
  }
  
  private void onControllerReleased(RegisteredMediaRouteProvider.Controller paramController)
  {
    mControllers.remove(paramController);
    paramController.detachConnection();
    updateBinding();
  }
  
  private boolean shouldBind()
  {
    if (mStarted)
    {
      if (getDiscoveryRequest() != null) {}
      while (!mControllers.isEmpty()) {
        return true;
      }
    }
    return false;
  }
  
  private void unbind()
  {
    if (mBound)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Unbinding");
      }
      mBound = false;
      disconnect();
      getContext().unbindService(this);
    }
  }
  
  private void updateBinding()
  {
    if (shouldBind())
    {
      bind();
      return;
    }
    unbind();
  }
  
  public boolean hasComponentName(String paramString1, String paramString2)
  {
    return (mComponentName.getPackageName().equals(paramString1)) && (mComponentName.getClassName().equals(paramString2));
  }
  
  public MediaRouteProvider.RouteController onCreateRouteController(String paramString)
  {
    Object localObject = getDescriptor();
    if (localObject != null)
    {
      localObject = ((MediaRouteProviderDescriptor)localObject).getRoutes();
      int j = ((List)localObject).size();
      int i = 0;
      while (i < j)
      {
        if (((MediaRouteDescriptor)((List)localObject).get(i)).getId().equals(paramString))
        {
          paramString = new RegisteredMediaRouteProvider.Controller(this, paramString);
          mControllers.add(paramString);
          if (mConnectionReady) {
            paramString.attachConnection(mActiveConnection);
          }
          updateBinding();
          return paramString;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public void onDiscoveryRequestChanged(MediaRouteDiscoveryRequest paramMediaRouteDiscoveryRequest)
  {
    if (mConnectionReady) {
      mActiveConnection.setDiscoveryRequest(paramMediaRouteDiscoveryRequest);
    }
    updateBinding();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (DEBUG) {
      Log.d("MediaRouteProviderProxy", this + ": Connected");
    }
    if (mBound)
    {
      disconnect();
      if (paramIBinder == null) {
        break label86;
      }
      paramComponentName = new Messenger(paramIBinder);
      if (!MediaRouteProviderProtocol.isValidRemoteMessenger(paramComponentName)) {
        break label124;
      }
      paramComponentName = new RegisteredMediaRouteProvider.Connection(this, paramComponentName);
      if (!paramComponentName.register()) {
        break label91;
      }
      mActiveConnection = paramComponentName;
    }
    label86:
    label91:
    while (!DEBUG)
    {
      return;
      paramComponentName = null;
      break;
    }
    Log.d("MediaRouteProviderProxy", this + ": Registration failed");
    return;
    label124:
    Log.e("MediaRouteProviderProxy", this + ": Service returned invalid messenger binder");
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (DEBUG) {
      Log.d("MediaRouteProviderProxy", this + ": Service disconnected");
    }
    disconnect();
  }
  
  public void rebindIfDisconnected()
  {
    if ((mActiveConnection == null) && (shouldBind()))
    {
      unbind();
      bind();
    }
  }
  
  public void start()
  {
    if (!mStarted)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Starting");
      }
      mStarted = true;
      updateBinding();
    }
  }
  
  public void stop()
  {
    if (mStarted)
    {
      if (DEBUG) {
        Log.d("MediaRouteProviderProxy", this + ": Stopping");
      }
      mStarted = false;
      updateBinding();
    }
  }
  
  public String toString()
  {
    return "Service connection " + mComponentName.flattenToShortString();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */