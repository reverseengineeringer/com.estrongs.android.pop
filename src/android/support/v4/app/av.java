package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class av
  implements Parcelable.Creator<FragmentState>
{
  public FragmentState a(Parcel paramParcel)
  {
    return new FragmentState(paramParcel);
  }
  
  public FragmentState[] a(int paramInt)
  {
    return new FragmentState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */