package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.ads.search.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;

@me
public final class SearchAdRequestParcel
  implements SafeParcelable
{
  public static final d a = new d();
  public final int b;
  public final int c;
  public final int d;
  public final int e;
  public final int f;
  public final int g;
  public final int h;
  public final int i;
  public final int j;
  public final String k;
  public final int l;
  public final String m;
  public final int n;
  public final int o;
  public final String p;
  
  SearchAdRequestParcel(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, String paramString1, int paramInt10, String paramString2, int paramInt11, int paramInt12, String paramString3)
  {
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
    e = paramInt4;
    f = paramInt5;
    g = paramInt6;
    h = paramInt7;
    i = paramInt8;
    j = paramInt9;
    k = paramString1;
    l = paramInt10;
    m = paramString2;
    n = paramInt11;
    o = paramInt12;
    p = paramString3;
  }
  
  public SearchAdRequestParcel(a parama)
  {
    b = 1;
    c = parama.a();
    d = parama.b();
    e = parama.c();
    f = parama.d();
    g = parama.e();
    h = parama.f();
    i = parama.g();
    j = parama.h();
    k = parama.i();
    l = parama.j();
    m = parama.k();
    n = parama.l();
    o = parama.m();
    p = parama.n();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.SearchAdRequestParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */