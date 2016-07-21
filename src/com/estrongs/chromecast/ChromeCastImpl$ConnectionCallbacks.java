package com.estrongs.chromecast;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.cast.a;
import com.google.android.gms.cast.d;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.w;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$ConnectionCallbacks
  implements q
{
  private ChromeCastImpl$ConnectionCallbacks(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onConnected(Bundle arg1)
  {
    if (ChromeCastImpl.access$500(this$0) == null) {
      return;
    }
    if (ChromeCastImpl.access$800(this$0))
    {
      ChromeCastImpl.access$802(this$0, false);
      if ((??? != null) && (???.getBoolean("com.google.android.gms.cast.EXTRA_APP_NO_LONGER_RUNNING")))
      {
        this$0.teardown();
        return;
      }
      ChromeCastImpl.access$900(this$0);
      return;
    }
    try
    {
      a.b.a(ChromeCastImpl.access$500(this$0), "43597A76", false).a(new ChromeCastImpl.ConnectionCallbacks.1(this));
      return;
    }
    catch (Exception ???)
    {
      Log.e(ChromeCastImpl.access$1300(), "Failed to launch application", ???);
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
  
  public void onConnectionSuspended(int paramInt)
  {
    ChromeCastImpl.access$802(this$0, true);
    synchronized (ChromeCastImpl.access$200())
    {
      Iterator localIterator = ChromeCastImpl.access$1200(this$0).iterator();
      if (localIterator.hasNext()) {
        ((ChromeCastConnectionListener)localIterator.next()).onConnectionSuspended();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.ConnectionCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */