package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class AndroidProcess$1
  implements Parcelable.Creator<AndroidProcess>
{
  public AndroidProcess createFromParcel(Parcel paramParcel)
  {
    return new AndroidProcess(paramParcel);
  }
  
  public AndroidProcess[] newArray(int paramInt)
  {
    return new AndroidProcess[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.AndroidProcess.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */