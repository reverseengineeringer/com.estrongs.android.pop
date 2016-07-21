package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ba
  implements Parcelable.Creator<NestedScrollView.SavedState>
{
  public NestedScrollView.SavedState a(Parcel paramParcel)
  {
    return new NestedScrollView.SavedState(paramParcel);
  }
  
  public NestedScrollView.SavedState[] a(int paramInt)
  {
    return new NestedScrollView.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */