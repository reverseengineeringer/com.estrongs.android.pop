package com.duapps.ad.entity;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<AdData>
{
  public AdData a(Parcel paramParcel)
  {
    return new AdData(paramParcel, null);
  }
  
  public AdData[] a(int paramInt)
  {
    return new AdData[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */