package com.baidu.scenery.process;

import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.io.File;

public class AndroidAppProcess
  extends AndroidProcess
{
  public static final Parcelable.Creator<AndroidAppProcess> CREATOR = new AndroidAppProcess.1();
  private static final boolean SYS_SUPPORTS_SCHEDGROUPS = new File("/dev/cpuctl/tasks").exists();
  public final boolean foreground;
  public final int uid;
  
  public AndroidAppProcess(int paramInt)
  {
    super(paramInt);
    int i;
    if (SYS_SUPPORTS_SCHEDGROUPS)
    {
      localObject2 = cgroup();
      localObject1 = ((Cgroup)localObject2).getGroup("cpuacct");
      localObject2 = ((Cgroup)localObject2).getGroup("cpu");
      if (Build.VERSION.SDK_INT >= 21)
      {
        if ((localObject2 == null) || (localObject1 == null) || (!group.contains("pid_"))) {
          throw new AndroidAppProcess.NotAndroidAppProcessException(paramInt);
        }
        if (!group.contains("bg_non_interactive")) {
          bool = true;
        }
      }
      for (;;)
      {
        try
        {
          i = Integer.parseInt(group.split("/")[1].replace("uid_", ""));
          ProcessManager.log("name=%s, pid=%d, uid=%d, foreground=%b, cpuacct=%s, cpu=%s", new Object[] { name, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool), ((ControlGroup)localObject1).toString(), ((ControlGroup)localObject2).toString() });
          foreground = bool;
          uid = i;
          return;
          bool = false;
          continue;
        }
        catch (Exception localException1)
        {
          i = status().getUid();
          continue;
        }
        if ((localObject2 == null) || (localObject1 == null) || (!group.contains("apps"))) {
          throw new AndroidAppProcess.NotAndroidAppProcessException(paramInt);
        }
        if (!group.contains("bg_non_interactive")) {
          bool = true;
        }
        try
        {
          for (;;)
          {
            i = Integer.parseInt(group.substring(group.lastIndexOf("/") + 1));
            ProcessManager.log("name=%s, pid=%d, uid=%d foreground=%b, cpuacct=%s, cpu=%s", new Object[] { name, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool), ((ControlGroup)localObject1).toString(), ((ControlGroup)localObject2).toString() });
            break;
            bool = false;
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            i = status().getUid();
          }
        }
      }
    }
    if ((name.startsWith("/")) || (!new File("/data/data", getPackageName()).exists())) {
      throw new AndroidAppProcess.NotAndroidAppProcessException(paramInt);
    }
    Object localObject1 = stat();
    Object localObject2 = status();
    if (((Stat)localObject1).policy() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      i = ((Status)localObject2).getUid();
      ProcessManager.log("name=%s, pid=%d, uid=%d foreground=%b", new Object[] { name, Integer.valueOf(paramInt), Integer.valueOf(i), Boolean.valueOf(bool) });
      break;
    }
  }
  
  protected AndroidAppProcess(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      foreground = bool;
      uid = paramParcel.readInt();
      return;
    }
  }
  
  public String getPackageName()
  {
    return name.split(":")[0];
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (foreground) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeInt(uid);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.AndroidAppProcess
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */