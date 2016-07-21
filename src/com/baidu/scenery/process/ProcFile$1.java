package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ProcFile$1
  implements Parcelable.Creator<ProcFile>
{
  public ProcFile createFromParcel(Parcel paramParcel)
  {
    return new ProcFile(paramParcel);
  }
  
  public ProcFile[] newArray(int paramInt)
  {
    return new ProcFile[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ProcFile.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */