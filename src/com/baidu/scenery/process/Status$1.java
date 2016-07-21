package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Status$1
  implements Parcelable.Creator<Status>
{
  public Status createFromParcel(Parcel paramParcel)
  {
    return new Status(paramParcel, null);
  }
  
  public Status[] newArray(int paramInt)
  {
    return new Status[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Status.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */