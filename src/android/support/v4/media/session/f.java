package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;

final class f
  implements Parcelable.Creator<MediaSessionCompat.Token>
{
  public MediaSessionCompat.Token a(Parcel paramParcel)
  {
    if (Build.VERSION.SDK_INT >= 21) {}
    for (paramParcel = paramParcel.readParcelable(null);; paramParcel = paramParcel.readStrongBinder()) {
      return new MediaSessionCompat.Token(paramParcel);
    }
  }
  
  public MediaSessionCompat.Token[] a(int paramInt)
  {
    return new MediaSessionCompat.Token[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */