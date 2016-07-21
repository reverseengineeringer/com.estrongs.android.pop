package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.e.a;
import android.util.Log;

class q
  implements Runnable
{
  q(n paramn, k paramk, String paramString, Bundle paramBundle) {}
  
  public void run()
  {
    Object localObject = a.a();
    localObject = (i)MediaBrowserServiceCompat.b(d.a).get(localObject);
    if (localObject == null)
    {
      Log.w("MediaBrowserServiceCompat", "addSubscription for callback that isn't registered id=" + b);
      return;
    }
    MediaBrowserServiceCompat.a(d.a, b, (i)localObject, c);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */