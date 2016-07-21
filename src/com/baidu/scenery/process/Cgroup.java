package com.baidu.scenery.process;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;

public final class Cgroup
  extends ProcFile
{
  public static final Parcelable.Creator<Cgroup> CREATOR = new Cgroup.1();
  public final ArrayList<ControlGroup> groups;
  
  private Cgroup(Parcel paramParcel)
  {
    super(paramParcel);
    groups = paramParcel.createTypedArrayList(ControlGroup.CREATOR);
  }
  
  private Cgroup(String paramString)
  {
    super(paramString);
    paramString = content.split("\n");
    groups = new ArrayList();
    int j = paramString.length;
    int i = 0;
    for (;;)
    {
      String str;
      if (i < j) {
        str = paramString[i];
      }
      try
      {
        groups.add(new ControlGroup(str));
        i += 1;
        continue;
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  public static Cgroup get(int paramInt)
  {
    return new Cgroup(String.format("/proc/%d/cgroup", new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public ControlGroup getGroup(String paramString)
  {
    Iterator localIterator = groups.iterator();
    while (localIterator.hasNext())
    {
      ControlGroup localControlGroup = (ControlGroup)localIterator.next();
      String[] arrayOfString = subsystems.split(",");
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        if (arrayOfString[i].equals(paramString)) {
          return localControlGroup;
        }
        i += 1;
      }
    }
    return null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeTypedList(groups);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.Cgroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */