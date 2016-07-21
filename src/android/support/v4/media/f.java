package android.support.v4.media;

import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.e.a;
import android.util.Log;
import java.util.List;

class f
  extends j<List<MediaBrowserCompat.MediaItem>>
{
  f(MediaBrowserServiceCompat paramMediaBrowserServiceCompat, Object paramObject, i parami, String paramString, Bundle paramBundle)
  {
    super(paramObject);
  }
  
  void a(List<MediaBrowserCompat.MediaItem> paramList, int paramInt)
  {
    if (MediaBrowserServiceCompat.b(d).get(a.c.a()) != a) {
      return;
    }
    Object localObject = paramList;
    if ((paramInt & 0x1) != 0) {
      localObject = d.a(paramList, c);
    }
    try
    {
      a.c.a(b, (List)localObject, c);
      return;
    }
    catch (RemoteException paramList)
    {
      Log.w("MediaBrowserServiceCompat", "Calling onLoadChildren() failed for id=" + b + " package=" + a.a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */