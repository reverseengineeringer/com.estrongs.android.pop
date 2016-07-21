package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.os.ResultReceiver;

class g
  extends j<MediaBrowserCompat.MediaItem>
{
  g(MediaBrowserServiceCompat paramMediaBrowserServiceCompat, Object paramObject, ResultReceiver paramResultReceiver)
  {
    super(paramObject);
  }
  
  void a(MediaBrowserCompat.MediaItem paramMediaItem, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("media_item", paramMediaItem);
    a.b(0, localBundle);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */