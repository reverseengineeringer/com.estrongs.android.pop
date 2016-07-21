package com.estrongs.chromecast;

import com.google.android.gms.cast.k;

class ChromeCastImpl$1
  extends k
{
  ChromeCastImpl$1(ChromeCastImpl paramChromeCastImpl) {}
  
  public void onApplicationDisconnected(int paramInt)
  {
    this$0.teardown();
  }
  
  public void onApplicationStatusChanged()
  {
    if (ChromeCastImpl.access$500(this$0) != null) {}
  }
  
  public void onVolumeChanged()
  {
    if (ChromeCastImpl.access$500(this$0) != null) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.chromecast.ChromeCastImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */