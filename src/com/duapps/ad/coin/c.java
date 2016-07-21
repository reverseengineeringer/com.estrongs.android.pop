package com.duapps.ad.coin;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator<CoinManager.RequestResult>
{
  public CoinManager.RequestResult a(Parcel paramParcel)
  {
    return new CoinManager.RequestResult(paramParcel, null);
  }
  
  public CoinManager.RequestResult[] a(int paramInt)
  {
    return new CoinManager.RequestResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.coin.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */