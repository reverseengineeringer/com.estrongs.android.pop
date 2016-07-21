package com.estrongs.chromecast;

import com.google.android.gms.cast.ah;
import com.google.android.gms.cast.ak;
import com.google.android.gms.cast.aw;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$2
  implements aw
{
  ChromeCastImpl$2(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onStatusUpdated()
  {
    ??? = ChromeCastImpl.access$1400(this$0).c();
    if (??? != null) {}
    for (int i = ((ah)???).b();; i = 0)
    {
      ChromeCastImpl.access$1502(this$0, i);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$1600(this$0).iterator();
        if (localIterator.hasNext()) {
          ((RemoteMediaPlayerListener)localIterator.next()).onStatusUpdated(i);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */