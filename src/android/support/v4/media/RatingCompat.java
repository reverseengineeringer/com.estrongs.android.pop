package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class RatingCompat
  implements Parcelable
{
  public static final Parcelable.Creator<RatingCompat> CREATOR = new ag();
  private final int a;
  private final float b;
  
  private RatingCompat(int paramInt, float paramFloat)
  {
    a = paramInt;
    b = paramFloat;
  }
  
  public int describeContents()
  {
    return a;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("Rating:style=").append(a).append(" rating=");
    if (b < 0.0F) {}
    for (String str = "unrated";; str = String.valueOf(b)) {
      return str;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeFloat(b);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.RatingCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */