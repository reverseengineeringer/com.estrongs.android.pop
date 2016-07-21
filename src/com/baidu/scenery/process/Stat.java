package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class Stat
  extends ProcFile
{
  public static final Parcelable.Creator<Stat> CREATOR = new Stat.1();
  private final String[] fields;
  
  private Stat(Parcel paramParcel)
  {
    super(paramParcel);
    fields = paramParcel.createStringArray();
  }
  
  private Stat(String paramString)
  {
    super(paramString);
    fields = content.split("\\s+");
  }
  
  public static Stat get(int paramInt)
  {
    return new Stat(String.format("/proc/%d/stat", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public String getComm()
  {
    return fields[1].replace("(", "").replace(")", "");
  }
  
  public int getPid()
  {
    return Integer.parseInt(fields[0]);
  }
  
  public int policy()
  {
    return Integer.parseInt(fields[40]);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeStringArray(fields);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Stat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */