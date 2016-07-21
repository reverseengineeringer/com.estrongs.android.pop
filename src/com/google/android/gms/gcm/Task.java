package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

public abstract class Task
  implements Parcelable
{
  private final String a;
  private final String b;
  private final boolean c;
  private final boolean d;
  private final int e;
  private final boolean f;
  private final Bundle g;
  
  @Deprecated
  Task(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    if (paramParcel.readInt() == 1)
    {
      bool1 = true;
      c = bool1;
      if (paramParcel.readInt() != 1) {
        break label73;
      }
    }
    label73:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      e = 2;
      f = false;
      g = null;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    if (c)
    {
      paramInt = 1;
      paramParcel.writeInt(paramInt);
      if (!d) {
        break label52;
      }
    }
    label52:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      paramInt = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.gcm.Task
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */