package android.support.design.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class cp
  implements Parcelable.Creator<TextInputLayout.SavedState>
{
  public TextInputLayout.SavedState a(Parcel paramParcel)
  {
    return new TextInputLayout.SavedState(paramParcel);
  }
  
  public TextInputLayout.SavedState[] a(int paramInt)
  {
    return new TextInputLayout.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */