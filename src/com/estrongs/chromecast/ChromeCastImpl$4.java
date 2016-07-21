package com.estrongs.chromecast;

import android.util.Log;
import com.google.android.gms.cast.as;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.aa;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$4
  implements aa<as>
{
  ChromeCastImpl$4(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onResult(as arg1)
  {
    if (!???.a().e())
    {
      Log.e(ChromeCastImpl.access$1300(), "Failed to request status.");
      ChromeCastImpl.access$1502(this$0, 64536);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator = ChromeCastImpl.access$1600(this$0).iterator();
        if (localIterator.hasNext()) {
          ((RemoteMediaPlayerListener)localIterator.next()).onStatusUpdated(64536);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */