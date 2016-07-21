package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class af
  implements Parcelable.Creator<MediaMetadataCompat>
{
  public MediaMetadataCompat a(Parcel paramParcel)
  {
    return new MediaMetadataCompat(paramParcel, null);
  }
  
  public MediaMetadataCompat[] a(int paramInt)
  {
    return new MediaMetadataCompat[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */