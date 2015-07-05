package com.baidu.sapi2;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator<SapiAccount>
{
  public SapiAccount a(Parcel paramParcel)
  {
    return new SapiAccount(paramParcel);
  }
  
  public SapiAccount[] a(int paramInt)
  {
    return new SapiAccount[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */