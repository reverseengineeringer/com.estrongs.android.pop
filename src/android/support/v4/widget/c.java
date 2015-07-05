package android.support.v4.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<DrawerLayout.SavedState>
{
  public DrawerLayout.SavedState a(Parcel paramParcel)
  {
    return new DrawerLayout.SavedState(paramParcel);
  }
  
  public DrawerLayout.SavedState[] a(int paramInt)
  {
    return new DrawerLayout.SavedState[paramInt];
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */