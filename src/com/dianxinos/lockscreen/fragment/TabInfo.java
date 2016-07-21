package com.dianxinos.lockscreen.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.dianxinos.lockscreen.c.g;
import java.lang.reflect.Constructor;

public class TabInfo
  implements Parcelable
{
  public static final Parcelable.Creator<TabInfo> CREATOR = new d();
  public boolean a = false;
  public a b = null;
  public boolean c = false;
  public Class d = null;
  private int e;
  private int f;
  private String g = null;
  
  public TabInfo(int paramInt1, String paramString, int paramInt2, Class paramClass)
  {
    g = paramString;
    e = paramInt1;
    f = paramInt2;
    d = paramClass;
  }
  
  public TabInfo(int paramInt, String paramString, Class paramClass)
  {
    this(paramInt, paramString, 0, paramClass);
  }
  
  public TabInfo(Parcel paramParcel)
  {
    e = paramParcel.readInt();
    g = paramParcel.readString();
    f = paramParcel.readInt();
    if (paramParcel.readInt() == 1) {}
    for (;;)
    {
      c = bool;
      return;
      bool = false;
    }
  }
  
  public int a()
  {
    return e;
  }
  
  public a b()
  {
    if (b == null) {}
    try
    {
      b = ((a)d.getConstructor(new Class[0]).newInstance(new Object[0]));
      return b;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        if (g.a) {
          localException.printStackTrace();
        }
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(e);
    paramParcel.writeString(g);
    paramParcel.writeInt(f);
    if (c) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.lockscreen.fragment.TabInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */