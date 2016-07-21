package com.google.android.gms.internal;

import com.google.ads.AdRequest.Gender;
import com.google.ads.a;
import com.google.ads.mediation.g;
import com.google.android.gms.ads.i;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import java.util.Date;
import java.util.HashSet;

@me
public final class jc
{
  public static AdRequest.Gender a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return AdRequest.Gender.UNKNOWN;
    case 2: 
      return AdRequest.Gender.FEMALE;
    }
    return AdRequest.Gender.MALE;
  }
  
  public static a a(AdSizeParcel paramAdSizeParcel)
  {
    int i = 0;
    a[] arrayOfa = new a[6];
    arrayOfa[0] = a.a;
    arrayOfa[1] = a.b;
    arrayOfa[2] = a.c;
    arrayOfa[3] = a.d;
    arrayOfa[4] = a.e;
    arrayOfa[5] = a.f;
    while (i < arrayOfa.length)
    {
      if ((arrayOfa[i].a() == g) && (arrayOfa[i].b() == d)) {
        return arrayOfa[i];
      }
      i += 1;
    }
    return new a(i.a(g, d, c));
  }
  
  public static g a(AdRequestParcel paramAdRequestParcel)
  {
    if (f != null) {}
    for (HashSet localHashSet = new HashSet(f);; localHashSet = null) {
      return new g(new Date(c), a(e), localHashSet, g, l);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */