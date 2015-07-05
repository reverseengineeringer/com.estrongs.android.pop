package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class v
  implements Parcelable.Creator<SlidingPaneLayout.SavedState>
{
  public SlidingPaneLayout.SavedState a(Parcel paramParcel)
  {
    return new SlidingPaneLayout.SavedState(paramParcel, null);
  }
  
  public SlidingPaneLayout.SavedState[] a(int paramInt)
  {
    return new SlidingPaneLayout.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */