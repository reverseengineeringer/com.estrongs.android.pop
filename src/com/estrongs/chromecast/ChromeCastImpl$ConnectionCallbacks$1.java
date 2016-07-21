package com.estrongs.chromecast;

import android.util.Log;
import com.google.android.gms.cast.c;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.aa;
import java.util.ArrayList;
import java.util.Iterator;

class ChromeCastImpl$ConnectionCallbacks$1
  implements aa<c>
{
  ChromeCastImpl$ConnectionCallbacks$1(ChromeCastImpl.ConnectionCallbacks paramConnectionCallbacks) {}
  
  public void onResult(c arg1)
  {
    if (???.a().e())
    {
      ???.b();
      ???.d();
      ???.c();
      ???.e();
      ChromeCastImpl.access$1002(this$1.this$0, true);
      ChromeCastImpl.access$1100(this$1.this$0);
      synchronized (ChromeCastImpl.access$200())
      {
        Iterator localIterator1 = ChromeCastImpl.access$1200(this$1.this$0).iterator();
        if (localIterator1.hasNext()) {
          ((ChromeCastConnectionListener)localIterator1.next()).onConnected();
        }
      }
      return;
    }
    Log.e(ChromeCastImpl.access$1300(), "application could not launch");
    this$1.this$0.teardown();
    synchronized (ChromeCastImpl.access$200())
    {
      Iterator localIterator2 = ChromeCastImpl.access$1200(this$1.this$0).iterator();
      if (localIterator2.hasNext()) {
        ((ChromeCastConnectionListener)localIterator2.next()).onConnectionFailed();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.ConnectionCallbacks.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */