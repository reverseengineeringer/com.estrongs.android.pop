package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class i
  implements Parcelable.Creator<PlaybackStateCompat.CustomAction>
{
  public PlaybackStateCompat.CustomAction a(Parcel paramParcel)
  {
    return new PlaybackStateCompat.CustomAction(paramParcel, null);
  }
  
  public PlaybackStateCompat.CustomAction[] a(int paramInt)
  {
    return new PlaybackStateCompat.CustomAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.media.session.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */