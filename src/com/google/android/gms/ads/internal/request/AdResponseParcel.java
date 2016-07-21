package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.me;
import java.util.Collections;
import java.util.List;

@me
public final class AdResponseParcel
  implements SafeParcelable
{
  public static final p a = new p();
  public String A;
  private AdRequestInfoParcel B;
  public final int b;
  public final String c;
  public String d;
  public final List<String> e;
  public final int f;
  public final List<String> g;
  public final long h;
  public final boolean i;
  public final long j;
  public final List<String> k;
  public final long l;
  public final int m;
  public final String n;
  public final long o;
  public final String p;
  public final boolean q;
  public final String r;
  public final String s;
  public final boolean t;
  public final boolean u;
  public final boolean v;
  public final boolean w;
  public final boolean x;
  public final int y;
  public LargeParcelTeleporter z;
  
  public AdResponseParcel(int paramInt)
  {
    this(13, null, null, null, paramInt, null, -1L, false, -1L, null, -1L, -1, null, -1L, null, false, null, null, false, false, false, true, false, 0, null, null);
  }
  
  public AdResponseParcel(int paramInt, long paramLong)
  {
    this(13, null, null, null, paramInt, null, -1L, false, -1L, null, paramLong, -1, null, -1L, null, false, null, null, false, false, false, true, false, 0, null, null);
  }
  
  AdResponseParcel(int paramInt1, String paramString1, String paramString2, List<String> paramList1, int paramInt2, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt3, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, int paramInt4, LargeParcelTeleporter paramLargeParcelTeleporter, String paramString7)
  {
    b = paramInt1;
    c = paramString1;
    d = paramString2;
    if (paramList1 != null)
    {
      paramString1 = Collections.unmodifiableList(paramList1);
      e = paramString1;
      f = paramInt2;
      if (paramList2 == null) {
        break label243;
      }
      paramString1 = Collections.unmodifiableList(paramList2);
      label52:
      g = paramString1;
      h = paramLong1;
      i = paramBoolean1;
      j = paramLong2;
      if (paramList3 == null) {
        break label248;
      }
    }
    label243:
    label248:
    for (paramString1 = Collections.unmodifiableList(paramList3);; paramString1 = null)
    {
      k = paramString1;
      l = paramLong3;
      m = paramInt3;
      n = paramString3;
      o = paramLong4;
      p = paramString4;
      q = paramBoolean2;
      r = paramString5;
      s = paramString6;
      t = paramBoolean3;
      u = paramBoolean4;
      v = paramBoolean5;
      w = paramBoolean6;
      x = paramBoolean7;
      y = paramInt4;
      z = paramLargeParcelTeleporter;
      A = paramString7;
      if ((d == null) && (z != null))
      {
        paramString1 = (StringParcel)z.a(StringParcel.CREATOR);
        if ((paramString1 != null) && (!TextUtils.isEmpty(paramString1.a()))) {
          d = paramString1.a();
        }
      }
      return;
      paramString1 = null;
      break;
      paramString1 = null;
      break label52;
    }
  }
  
  public AdResponseParcel(AdRequestInfoParcel paramAdRequestInfoParcel, String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt1, String paramString3, long paramLong4, String paramString4, String paramString5, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, int paramInt2)
  {
    this(13, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt1, paramString3, paramLong4, paramString4, false, null, paramString5, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramInt2, null, null);
    B = paramAdRequestInfoParcel;
  }
  
  public AdResponseParcel(AdRequestInfoParcel paramAdRequestInfoParcel, String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt1, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, int paramInt2)
  {
    this(13, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt1, paramString3, paramLong4, paramString4, paramBoolean2, paramString5, paramString6, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6, paramBoolean7, paramInt2, null, null);
    B = paramAdRequestInfoParcel;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if ((B != null) && (B.b >= 9) && (!TextUtils.isEmpty(d)))
    {
      z = new LargeParcelTeleporter(new StringParcel(d));
      d = null;
    }
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.AdResponseParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */