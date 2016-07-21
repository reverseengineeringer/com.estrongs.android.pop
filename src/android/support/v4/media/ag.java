package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ag
  implements Parcelable.Creator<RatingCompat>
{
  public RatingCompat a(Parcel paramParcel)
  {
    return new RatingCompat(paramParcel.readInt(), paramParcel.readFloat(), null);
  }
  
  public RatingCompat[] a(int paramInt)
  {
    return new RatingCompat[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */