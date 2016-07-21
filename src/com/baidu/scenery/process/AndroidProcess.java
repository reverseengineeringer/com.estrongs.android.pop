package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.io.IOException;

public class AndroidProcess
  implements Parcelable
{
  public static final Parcelable.Creator<AndroidProcess> CREATOR = new AndroidProcess.1();
  public final String name;
  public final int pid;
  
  public AndroidProcess(int paramInt)
  {
    pid = paramInt;
    name = getProcessName(paramInt);
  }
  
  protected AndroidProcess(Parcel paramParcel)
  {
    name = paramParcel.readString();
    pid = paramParcel.readInt();
  }
  
  static String getProcessName(int paramInt)
  {
    Object localObject1 = null;
    try
    {
      localObject2 = ProcFile.readFile(String.format("/proc/%d/cmdline", new Object[] { Integer.valueOf(paramInt) })).trim();
      localObject1 = localObject2;
    }
    catch (IOException localIOException)
    {
      Object localObject2;
      for (;;) {}
    }
    localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1)) {
      localObject2 = Stat.get(paramInt).getComm();
    }
    return (String)localObject2;
  }
  
  public Cgroup cgroup()
  {
    return Cgroup.get(pid);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Stat stat()
  {
    return Stat.get(pid);
  }
  
  public Status status()
  {
    return Status.get(pid);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(name);
    paramParcel.writeInt(pid);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.AndroidProcess
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */