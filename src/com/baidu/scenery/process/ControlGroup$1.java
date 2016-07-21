package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ControlGroup$1
  implements Parcelable.Creator<ControlGroup>
{
  public ControlGroup createFromParcel(Parcel paramParcel)
  {
    return new ControlGroup(paramParcel);
  }
  
  public ControlGroup[] newArray(int paramInt)
  {
    return new ControlGroup[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ControlGroup.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */