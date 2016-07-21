package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.support.v4.os.ResultReceiver;

class MediaBrowserServiceCompat$ServiceImplApi23$1
  extends ResultReceiver
{
  protected void a(int paramInt, Bundle paramBundle)
  {
    MediaBrowserCompat.MediaItem localMediaItem = (MediaBrowserCompat.MediaItem)paramBundle.getParcelable("media_item");
    Parcel localParcel;
    if (localMediaItem != null)
    {
      localParcel = Parcel.obtain();
      localMediaItem.writeToParcel(localParcel, 0);
    }
    for (;;)
    {
      a.a(paramInt, paramBundle, localParcel);
      return;
      localParcel = null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.MediaBrowserServiceCompat.ServiceImplApi23.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */