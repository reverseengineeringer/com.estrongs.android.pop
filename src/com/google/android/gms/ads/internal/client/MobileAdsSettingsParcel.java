package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;

@me
public final class MobileAdsSettingsParcel
  implements SafeParcelable
{
  public static final c a = new c();
  public final int b;
  public final boolean c;
  public final String d;
  
  public MobileAdsSettingsParcel(int paramInt, boolean paramBoolean, String paramString)
  {
    b = paramInt;
    c = paramBoolean;
    d = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.MobileAdsSettingsParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */