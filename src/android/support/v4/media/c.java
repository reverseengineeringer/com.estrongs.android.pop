package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<MediaBrowserCompat.MediaItem>
{
  public MediaBrowserCompat.MediaItem a(Parcel paramParcel)
  {
    return new MediaBrowserCompat.MediaItem(paramParcel, null);
  }
  
  public MediaBrowserCompat.MediaItem[] a(int paramInt)
  {
    return new MediaBrowserCompat.MediaItem[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */