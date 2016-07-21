package android.support.v4.media;

import android.os.IBinder;
import android.os.RemoteException;
import android.support.v4.e.a;
import android.util.Log;
import java.util.Iterator;
import java.util.Set;

class e
  implements Runnable
{
  public void run()
  {
    Iterator localIterator = MediaBrowserServiceCompat.b(b).keySet().iterator();
    while (localIterator.hasNext())
    {
      IBinder localIBinder = (IBinder)localIterator.next();
      i locali = (i)MediaBrowserServiceCompat.b(b).get(localIBinder);
      try
      {
        c.a(d.a(), a, d.b());
      }
      catch (RemoteException localRemoteException)
      {
        Log.w("MediaBrowserServiceCompat", "Connection for " + a + " is no longer valid.");
        MediaBrowserServiceCompat.b(b).remove(localIBinder);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */