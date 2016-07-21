package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class g
  implements Parcelable.Creator<ParcelableVolumeInfo>
{
  public ParcelableVolumeInfo a(Parcel paramParcel)
  {
    return new ParcelableVolumeInfo(paramParcel);
  }
  
  public ParcelableVolumeInfo[] a(int paramInt)
  {
    return new ParcelableVolumeInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */