package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ac
  implements Parcelable.Creator<Fragment.SavedState>
{
  public Fragment.SavedState a(Parcel paramParcel)
  {
    return new Fragment.SavedState(paramParcel, null);
  }
  
  public Fragment.SavedState[] a(int paramInt)
  {
    return new Fragment.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */