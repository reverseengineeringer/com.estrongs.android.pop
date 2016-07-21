package com.google.android.gms.nearby.sharing.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.nearby.sharing.SharedContent;
import java.util.List;

public final class ProvideContentRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<ProvideContentRequest> CREATOR = new j();
  final int a;
  public IBinder b;
  public d c;
  @Deprecated
  public List<SharedContent> d;
  public long e;
  public g f;
  
  ProvideContentRequest()
  {
    a = 1;
  }
  
  ProvideContentRequest(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, List<SharedContent> paramList, long paramLong, IBinder paramIBinder3)
  {
    a = paramInt;
    b = paramIBinder1;
    c = e.a(paramIBinder2);
    d = paramList;
    e = paramLong;
    f = h.a(paramIBinder3);
  }
  
  IBinder a()
  {
    if (c == null) {
      return null;
    }
    return c.asBinder();
  }
  
  IBinder b()
  {
    return f.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.nearby.sharing.internal.ProvideContentRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */