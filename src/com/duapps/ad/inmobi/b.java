package com.duapps.ad.inmobi;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator<IMDataModel>
{
  public IMDataModel a(Parcel paramParcel)
  {
    return new IMDataModel(paramParcel, null);
  }
  
  public IMDataModel[] a(int paramInt)
  {
    return new IMDataModel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.inmobi.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */