package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class Status
  extends ProcFile
{
  public static final Parcelable.Creator<Status> CREATOR = new Status.1();
  
  private Status(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  private Status(String paramString)
  {
    super(paramString);
  }
  
  public static Status get(int paramInt)
  {
    return new Status(String.format("/proc/%d/status", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public int getUid()
  {
    try
    {
      int i = Integer.parseInt(getValue("Uid").split("\\s+")[0]);
      return i;
    }
    catch (Exception localException) {}
    return -1;
  }
  
  public String getValue(String paramString)
  {
    String[] arrayOfString = content.split("\n");
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      if (str.startsWith(paramString + ":")) {
        return str.split(paramString + ":")[1].trim();
      }
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */