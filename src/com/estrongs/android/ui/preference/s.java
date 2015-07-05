package com.estrongs.android.ui.preference;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class s
  implements Parcelable.Creator<ListPreference.SavedState>
{
  public ListPreference.SavedState a(Parcel paramParcel)
  {
    return new ListPreference.SavedState(paramParcel);
  }
  
  public ListPreference.SavedState[] a(int paramInt)
  {
    return new ListPreference.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */