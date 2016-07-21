package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Cgroup$1
  implements Parcelable.Creator<Cgroup>
{
  public Cgroup createFromParcel(Parcel paramParcel)
  {
    return new Cgroup(paramParcel, null);
  }
  
  public Cgroup[] newArray(int paramInt)
  {
    return new Cgroup[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Cgroup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */