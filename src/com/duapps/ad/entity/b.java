package com.duapps.ad.entity;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<AdModel>
{
  public AdModel a(Parcel paramParcel)
  {
    return new AdModel(paramParcel, null);
  }
  
  public AdModel[] a(int paramInt)
  {
    return new AdModel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.entity.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */