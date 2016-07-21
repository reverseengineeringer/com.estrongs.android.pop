package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ax
  implements Parcelable.Creator<FragmentTabHost.SavedState>
{
  public FragmentTabHost.SavedState a(Parcel paramParcel)
  {
    return new FragmentTabHost.SavedState(paramParcel, null);
  }
  
  public FragmentTabHost.SavedState[] a(int paramInt)
  {
    return new FragmentTabHost.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */