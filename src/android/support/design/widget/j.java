package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class j
  implements Parcelable.Creator<BottomSheetBehavior.SavedState>
{
  public BottomSheetBehavior.SavedState a(Parcel paramParcel)
  {
    return new BottomSheetBehavior.SavedState(paramParcel);
  }
  
  public BottomSheetBehavior.SavedState[] a(int paramInt)
  {
    return new BottomSheetBehavior.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */