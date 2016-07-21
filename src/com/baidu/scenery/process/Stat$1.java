package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class Stat$1
  implements Parcelable.Creator<Stat>
{
  public Stat createFromParcel(Parcel paramParcel)
  {
    return new Stat(paramParcel, null);
  }
  
  public Stat[] newArray(int paramInt)
  {
    return new Stat[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Stat.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */