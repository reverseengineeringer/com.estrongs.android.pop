package com.estrongs.android.appinfo;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class AppFolderInfoManager$RemnantFolder
  implements Parcelable
{
  public static final Parcelable.Creator<RemnantFolder> CREATOR = new t();
  public String a;
  public boolean b;
  private Object c;
  
  AppFolderInfoManager$RemnantFolder() {}
  
  private AppFolderInfoManager$RemnantFolder(Parcel paramParcel)
  {
    a = paramParcel.readString();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      b = bool;
      return;
      bool = false;
    }
  }
  
  public Object a()
  {
    return c;
  }
  
  public void a(Object paramObject)
  {
    c = paramObject;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    if (b) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.AppFolderInfoManager.RemnantFolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */