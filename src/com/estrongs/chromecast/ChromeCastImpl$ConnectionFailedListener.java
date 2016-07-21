package com.estrongs.chromecast;

import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.r;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$ConnectionFailedListener
  implements r
{
  private ChromeCastImpl$ConnectionFailedListener(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onConnectionFailed(ConnectionResult arg1)
  {
    Log.e(ChromeCastImpl.access$1300(), "onConnectionFailed ");
    this$0.teardown();
    synchronized (ChromeCastImpl.access$200())
    {
      Iterator localIterator = ChromeCastImpl.access$1200(this$0).iterator();
      if (localIterator.hasNext()) {
        ((ChromeCastConnectionListener)localIterator.next()).onConnectionFailed();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.ConnectionFailedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */