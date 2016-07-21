package android.support.v4.media;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.e.a;
import android.util.Log;

class o
  implements Runnable
{
  o(n paramn, k paramk, String paramString, Bundle paramBundle, int paramInt) {}
  
  public void run()
  {
    IBinder localIBinder = a.a();
    MediaBrowserServiceCompat.b(e.a).remove(localIBinder);
    i locali = new i(e.a, null);
    a = b;
    b = c;
    c = a;
    d = e.a.a(b, d, c);
    if (d == null) {
      Log.i("MediaBrowserServiceCompat", "No root for client " + b + " from service " + getClass().getName());
    }
    for (;;)
    {
      try
      {
        a.b();
        return;
      }
      catch (RemoteException localRemoteException1)
      {
        Log.w("MediaBrowserServiceCompat", "Calling onConnectFailed() failed. Ignoring. pkg=" + b);
        return;
      }
      try
      {
        MediaBrowserServiceCompat.b(e.a).put(localRemoteException1, locali);
        if (e.a.a != null)
        {
          a.a(d.a(), e.a.a, d.b());
          return;
        }
      }
      catch (RemoteException localRemoteException2)
      {
        Log.w("MediaBrowserServiceCompat", "Calling onConnect() failed. Dropping client. pkg=" + b);
        MediaBrowserServiceCompat.b(e.a).remove(localRemoteException1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */