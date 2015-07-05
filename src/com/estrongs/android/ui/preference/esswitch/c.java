package com.estrongs.android.ui.preference.esswitch;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<TwoStatePreference.SavedState>
{
  public TwoStatePreference.SavedState a(Parcel paramParcel)
  {
    return new TwoStatePreference.SavedState(paramParcel);
  }
  
  public TwoStatePreference.SavedState[] a(int paramInt)
  {
    return new TwoStatePreference.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.esswitch.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */