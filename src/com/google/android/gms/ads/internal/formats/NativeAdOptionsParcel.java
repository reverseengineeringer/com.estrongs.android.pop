package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import com.google.android.gms.ads.formats.c;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;

@me
public class NativeAdOptionsParcel
  implements SafeParcelable
{
  public static final p a = new p();
  public final int b;
  public final boolean c;
  public final int d;
  public final boolean e;
  
  public NativeAdOptionsParcel(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    b = paramInt1;
    c = paramBoolean1;
    d = paramInt2;
    e = paramBoolean2;
  }
  
  public NativeAdOptionsParcel(c paramc)
  {
    this(1, paramc.a(), paramc.b(), paramc.c());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */