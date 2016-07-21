package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class AndroidAppProcess$1
  implements Parcelable.Creator<AndroidAppProcess>
{
  public AndroidAppProcess createFromParcel(Parcel paramParcel)
  {
    return new AndroidAppProcess(paramParcel);
  }
  
  public AndroidAppProcess[] newArray(int paramInt)
  {
    return new AndroidAppProcess[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.AndroidAppProcess.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */