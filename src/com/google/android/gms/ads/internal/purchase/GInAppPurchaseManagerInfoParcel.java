package com.google.android.gms.ads.internal.purchase;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.f;
import com.google.android.gms.dynamic.h;
import com.google.android.gms.internal.kg;
import com.google.android.gms.internal.me;

@me
public final class GInAppPurchaseManagerInfoParcel
  implements SafeParcelable
{
  public static final a a = new a();
  public final int b;
  public final n c;
  public final kg d;
  public final Context e;
  public final m f;
  
  GInAppPurchaseManagerInfoParcel(int paramInt, IBinder paramIBinder1, IBinder paramIBinder2, IBinder paramIBinder3, IBinder paramIBinder4)
  {
    b = paramInt;
    c = ((n)h.a(f.a(paramIBinder1)));
    d = ((kg)h.a(f.a(paramIBinder2)));
    e = ((Context)h.a(f.a(paramIBinder3)));
    f = ((m)h.a(f.a(paramIBinder4)));
  }
  
  public GInAppPurchaseManagerInfoParcel(Context paramContext, n paramn, kg paramkg, m paramm)
  {
    b = 2;
    e = paramContext;
    c = paramn;
    d = paramkg;
    f = paramm;
  }
  
  public static GInAppPurchaseManagerInfoParcel a(Intent paramIntent)
  {
    try
    {
      paramIntent = paramIntent.getBundleExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      paramIntent.setClassLoader(GInAppPurchaseManagerInfoParcel.class.getClassLoader());
      paramIntent = (GInAppPurchaseManagerInfoParcel)paramIntent.getParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo");
      return paramIntent;
    }
    catch (Exception paramIntent) {}
    return null;
  }
  
  public static void a(Intent paramIntent, GInAppPurchaseManagerInfoParcel paramGInAppPurchaseManagerInfoParcel)
  {
    Bundle localBundle = new Bundle(1);
    localBundle.putParcelable("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", paramGInAppPurchaseManagerInfoParcel);
    paramIntent.putExtra("com.google.android.gms.ads.internal.purchase.InAppPurchaseManagerInfo", localBundle);
  }
  
  IBinder a()
  {
    return h.a(f).asBinder();
  }
  
  IBinder b()
  {
    return h.a(c).asBinder();
  }
  
  IBinder c()
  {
    return h.a(d).asBinder();
  }
  
  IBinder d()
  {
    return h.a(e).asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */