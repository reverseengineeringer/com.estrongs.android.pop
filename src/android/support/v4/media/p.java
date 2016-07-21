package android.support.v4.media;

import android.os.IBinder;
import android.support.v4.e.a;

class p
  implements Runnable
{
  p(n paramn, k paramk) {}
  
  public void run()
  {
    IBinder localIBinder = a.a();
    if ((i)MediaBrowserServiceCompat.b(b.a).remove(localIBinder) != null) {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */