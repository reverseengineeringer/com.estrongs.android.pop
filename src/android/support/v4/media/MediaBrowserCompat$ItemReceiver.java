package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class MediaBrowserCompat$ItemReceiver
  extends ResultReceiver
{
  private final String a;
  private final b e;
  
  protected void a(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
    if ((paramInt != 0) || (paramBundle == null) || (!paramBundle.containsKey("media_item")))
    {
      e.a(a);
      return;
    }
    paramBundle = paramBundle.getParcelable("media_item");
    if ((paramBundle instanceof MediaBrowserCompat.MediaItem))
    {
      e.a((MediaBrowserCompat.MediaItem)paramBundle);
      return;
    }
    e.a(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserCompat.ItemReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */