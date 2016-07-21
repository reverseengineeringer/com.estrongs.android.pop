package android.support.v7.media;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.lang.ref.WeakReference;

final class RegisteredMediaRouteProvider$ReceiveHandler
  extends Handler
{
  private final WeakReference<RegisteredMediaRouteProvider.Connection> mConnectionRef;
  
  public RegisteredMediaRouteProvider$ReceiveHandler(RegisteredMediaRouteProvider.Connection paramConnection)
  {
    mConnectionRef = new WeakReference(paramConnection);
  }
  
  private boolean processMessage(RegisteredMediaRouteProvider.Connection paramConnection, int paramInt1, int paramInt2, int paramInt3, Object paramObject, Bundle paramBundle)
  {
    switch (paramInt1)
    {
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return false;
            paramConnection.onGenericFailure(paramInt2);
            return true;
            paramConnection.onGenericSuccess(paramInt2);
            return true;
          } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
          return paramConnection.onRegistered(paramInt2, paramInt3, (Bundle)paramObject);
        } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
        return paramConnection.onDescriptorChanged((Bundle)paramObject);
      } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
      return paramConnection.onControlRequestSucceeded(paramInt2, (Bundle)paramObject);
    } while ((paramObject != null) && (!(paramObject instanceof Bundle)));
    if (paramBundle == null) {}
    for (paramBundle = null;; paramBundle = paramBundle.getString("error")) {
      return paramConnection.onControlRequestFailed(paramInt2, paramBundle, (Bundle)paramObject);
    }
  }
  
  public void dispose()
  {
    mConnectionRef.clear();
  }
  
  public void handleMessage(Message paramMessage)
  {
    RegisteredMediaRouteProvider.Connection localConnection = (RegisteredMediaRouteProvider.Connection)mConnectionRef.get();
    if ((localConnection != null) && (!processMessage(localConnection, what, arg1, arg2, obj, paramMessage.peekData())) && (RegisteredMediaRouteProvider.access$800())) {
      Log.d("MediaRouteProviderProxy", "Unhandled message from server: " + paramMessage);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.media.RegisteredMediaRouteProvider.ReceiveHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */