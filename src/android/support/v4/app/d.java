package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<BackStackState>
{
  public BackStackState a(Parcel paramParcel)
  {
    return new BackStackState(paramParcel);
  }
  
  public BackStackState[] a(int paramInt)
  {
    return new BackStackState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */