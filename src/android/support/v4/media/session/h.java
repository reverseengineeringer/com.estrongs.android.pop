package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class h
  implements Parcelable.Creator<PlaybackStateCompat>
{
  public PlaybackStateCompat a(Parcel paramParcel)
  {
    return new PlaybackStateCompat(paramParcel, null);
  }
  
  public PlaybackStateCompat[] a(int paramInt)
  {
    return new PlaybackStateCompat[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */