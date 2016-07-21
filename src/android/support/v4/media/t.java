package android.support.v4.media;

import android.os.IBinder;
import android.support.v4.e.a;

class t
  implements Runnable
{
  t(n paramn, k paramk) {}
  
  public void run()
  {
    IBinder localIBinder = a.a();
    MediaBrowserServiceCompat.b(b.a).remove(localIBinder);
    i locali = new i(b.a, null);
    c = a;
    MediaBrowserServiceCompat.b(b.a).put(localIBinder, locali);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */