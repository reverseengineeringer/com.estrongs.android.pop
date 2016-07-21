package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;

class n
{
  private n(MediaBrowserServiceCompat paramMediaBrowserServiceCompat) {}
  
  public void a(k paramk)
  {
    MediaBrowserServiceCompat.a(a).a(new p(this, paramk));
  }
  
  public void a(String paramString, int paramInt, Bundle paramBundle, k paramk)
  {
    if (!MediaBrowserServiceCompat.a(a, paramString, paramInt)) {
      throw new IllegalArgumentException("Package/uid mismatch: uid=" + paramInt + " package=" + paramString);
    }
    MediaBrowserServiceCompat.a(a).a(new o(this, paramk, paramString, paramBundle, paramInt));
  }
  
  public void a(String paramString, Bundle paramBundle, k paramk)
  {
    MediaBrowserServiceCompat.a(a).a(new q(this, paramk, paramString, paramBundle));
  }
  
  public void a(String paramString, ResultReceiver paramResultReceiver)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramResultReceiver == null)) {
      return;
    }
    MediaBrowserServiceCompat.a(a).a(new s(this, paramString, paramResultReceiver));
  }
  
  public void b(k paramk)
  {
    MediaBrowserServiceCompat.a(a).a(new t(this, paramk));
  }
  
  public void b(String paramString, Bundle paramBundle, k paramk)
  {
    MediaBrowserServiceCompat.a(a).a(new r(this, paramk, paramString, paramBundle));
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */