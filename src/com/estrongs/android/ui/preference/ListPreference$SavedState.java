package com.estrongs.android.ui.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.preference.Preference.BaseSavedState;

class ListPreference$SavedState
  extends Preference.BaseSavedState
{
  public static final Parcelable.Creator<SavedState> CREATOR = new s();
  String a;
  
  public ListPreference$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
  }
  
  public ListPreference$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.preference.ListPreference.SavedState
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */