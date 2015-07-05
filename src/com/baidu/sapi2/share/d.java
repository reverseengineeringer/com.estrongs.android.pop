package com.baidu.sapi2.share;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator<ShareModel>
{
  public ShareModel a(Parcel paramParcel)
  {
    return new ShareModel(paramParcel);
  }
  
  public ShareModel[] a(int paramInt)
  {
    return new ShareModel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.share.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */