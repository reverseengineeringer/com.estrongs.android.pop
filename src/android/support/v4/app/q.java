package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable.Creator<FragmentManagerState>
{
  public FragmentManagerState a(Parcel paramParcel)
  {
    return new FragmentManagerState(paramParcel);
  }
  
  public FragmentManagerState[] a(int paramInt)
  {
    return new FragmentManagerState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */