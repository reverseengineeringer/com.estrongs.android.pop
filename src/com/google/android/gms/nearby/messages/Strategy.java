package com.google.android.gms.nearby.messages;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class Strategy
  implements SafeParcelable
{
  public static final Parcelable.Creator<Strategy> CREATOR = new f();
  public static final Strategy a = new c().a();
  public static final Strategy b = new c().a(2).b(Integer.MAX_VALUE).a();
  @Deprecated
  public static final Strategy c = b;
  final int d;
  @Deprecated
  final int e;
  final int f;
  final int g;
  @Deprecated
  final boolean h;
  final int i;
  final int j;
  
  Strategy(int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean, int paramInt5, int paramInt6)
  {
    d = paramInt1;
    e = paramInt2;
    if (paramInt2 == 0) {
      j = paramInt6;
    }
    for (;;)
    {
      g = paramInt4;
      h = paramBoolean;
      if (!paramBoolean) {
        break;
      }
      i = 2;
      f = Integer.MAX_VALUE;
      return;
      switch (paramInt2)
      {
      default: 
        j = 3;
        break;
      case 2: 
        j = 1;
        break;
      case 3: 
        j = 2;
      }
    }
    if (paramInt5 == 0)
    {
      i = 1;
      f = paramInt3;
      return;
    }
    i = paramInt5;
    f = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof Strategy)) {
        return false;
      }
      paramObject = (Strategy)paramObject;
    } while ((d == d) && (j == j) && (f == f) && (g == g) && (i == i));
    return false;
  }
  
  public int hashCode()
  {
    return (((d * 31 + j) * 31 + f) * 31 + g) * 31 + i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.nearby.messages.Strategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */