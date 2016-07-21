package com.google.android.gms.ads.internal.reward.mediation.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;

@me
public final class RewardItemParcel
  implements SafeParcelable
{
  public static final e a = new e();
  public final int b;
  public final String c;
  public final int d;
  
  public RewardItemParcel(int paramInt1, String paramString, int paramInt2)
  {
    b = paramInt1;
    c = paramString;
    d = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */