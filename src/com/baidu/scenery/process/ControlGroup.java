package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ControlGroup
  implements Parcelable
{
  public static final Parcelable.Creator<ControlGroup> CREATOR = new ControlGroup.1();
  public final String group;
  public final int id;
  public final String subsystems;
  
  protected ControlGroup(Parcel paramParcel)
  {
    id = paramParcel.readInt();
    subsystems = paramParcel.readString();
    group = paramParcel.readString();
  }
  
  protected ControlGroup(String paramString)
  {
    paramString = paramString.split(":");
    id = Integer.parseInt(paramString[0]);
    subsystems = paramString[1];
    group = paramString[2];
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    return String.format("%d:%s:%s", new Object[] { Integer.valueOf(id), subsystems, group });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(id);
    paramParcel.writeString(subsystems);
    paramParcel.writeString(group);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ControlGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */