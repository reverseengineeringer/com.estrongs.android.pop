package com.dianxinos.lockscreen.fragment;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<TabInfo>
{
  public TabInfo a(Parcel paramParcel)
  {
    return new TabInfo(paramParcel);
  }
  
  public TabInfo[] a(int paramInt)
  {
    return new TabInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */