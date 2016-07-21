package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<IMData>
{
  public IMData a(Parcel paramParcel)
  {
    return new IMData(paramParcel, null);
  }
  
  public IMData[] a(int paramInt)
  {
    return new IMData[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */