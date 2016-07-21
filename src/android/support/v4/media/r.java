package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.e.a;
import android.util.Log;

class r
  implements Runnable
{
  r(n paramn, k paramk, String paramString, Bundle paramBundle) {}
  
  public void run()
  {
    Object localObject = a.a();
    localObject = (i)MediaBrowserServiceCompat.b(d.a).get(localObject);
    if (localObject == null) {
      Log.w("MediaBrowserServiceCompat", "removeSubscription for callback that isn't registered id=" + b);
    }
    while (MediaBrowserServiceCompat.b(d.a, b, (i)localObject, c)) {
      return;
    }
    Log.w("MediaBrowserServiceCompat", "removeSubscription called for " + b + " which is not subscribed");
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */