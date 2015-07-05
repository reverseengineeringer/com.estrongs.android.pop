package com.estrongs.android.ui.preference.esswitch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.preference.Preference.BaseSavedState;

class TwoStatePreference$SavedState
  extends Preference.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new c();
  boolean a;
  
  public TwoStatePreference$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      a = bool;
      return;
      bool = false;
    }
  }
  
  public TwoStatePreference$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (a) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.esswitch.TwoStatePreference.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */