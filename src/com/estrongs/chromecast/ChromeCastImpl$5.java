package com.estrongs.chromecast;

import com.google.android.gms.cast.as;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.aa;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$5
  implements aa<as>
{
  ChromeCastImpl$5(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onResult(as arg1)
  {
    if (???.a().e()) {
      synchronized (ChromeCastImpl.access$200())
      {
        localIterator1 = ChromeCastImpl.access$1600(this$0).iterator();
        if (localIterator1.hasNext()) {
          ((RemoteMediaPlayerListener)localIterator1.next()).onStatusUpdated(1000);
        }
      }
    }
    while (???.a().f() != 1)
    {
      Iterator localIterator1;
      return;
    }
    synchronized (ChromeCastImpl.access$200())
    {
      Iterator localIterator2 = ChromeCastImpl.access$1600(this$0).iterator();
      if (localIterator2.hasNext()) {
        ((RemoteMediaPlayerListener)localIterator2.next()).onStatusUpdated(64535);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */