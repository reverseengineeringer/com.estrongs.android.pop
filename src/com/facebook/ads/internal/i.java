package com.facebook.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.NativeAd.MediaCacheFlag;
import com.facebook.ads.internal.adapters.AdAdapter;
import com.facebook.ads.internal.adapters.f;
import com.facebook.ads.internal.adapters.p;
import com.facebook.ads.internal.server.AdPlacementType;
import com.facebook.ads.internal.server.a.a;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class i
  implements a.a
{
  private final Context a;
  private final String b;
  private final com.facebook.ads.internal.server.a c;
  private final e d;
  private final c e;
  private final AdSize f;
  private final int g;
  private final EnumSet<NativeAd.MediaCacheFlag> h;
  private boolean i;
  private final Handler j;
  private final Runnable k;
  private i.a l;
  private com.facebook.ads.internal.dto.c m;
  
  public i(Context paramContext, String paramString, e parame, AdSize paramAdSize, c paramc, int paramInt, EnumSet<NativeAd.MediaCacheFlag> paramEnumSet)
  {
    a = paramContext;
    b = paramString;
    d = parame;
    f = paramAdSize;
    e = paramc;
    g = paramInt;
    h = paramEnumSet;
    c = new com.facebook.ads.internal.server.a();
    c.a(this);
    i = true;
    j = new Handler();
    k = new i.1(this);
  }
  
  private List<p> d()
  {
    com.facebook.ads.internal.dto.c localc = m;
    com.facebook.ads.internal.dto.a locala = localc.c();
    ArrayList localArrayList = new ArrayList(localc.b());
    while (locala != null)
    {
      AdAdapter localAdAdapter = f.a(b, AdPlacementType.NATIVE);
      if ((localAdAdapter != null) && (localAdAdapter.getPlacementType() == AdPlacementType.NATIVE))
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("data", c);
        localHashMap.put("definition", localc.a());
        ((p)localAdAdapter).a(a, new i.2(this, localArrayList), localHashMap);
      }
      locala = localc.c();
    }
    return localArrayList;
  }
  
  public void a()
  {
    com.facebook.ads.internal.dto.e locale = new com.facebook.ads.internal.dto.e(a, b, f, d, e, g, AdSettings.isTestMode(a));
    c.a(a, locale);
  }
  
  public void a(b paramb)
  {
    if (i) {
      j.postDelayed(k, 1800000L);
    }
    if (l != null) {
      l.a(paramb);
    }
  }
  
  public void a(i.a parama)
  {
    l = parama;
  }
  
  public void a(com.facebook.ads.internal.server.d paramd)
  {
    paramd = paramd.b();
    if (paramd == null) {
      throw new IllegalStateException("no placement in response");
    }
    if (i)
    {
      long l2 = paramd.a().b();
      long l1 = l2;
      if (l2 == 0L) {
        l1 = 1800000L;
      }
      j.postDelayed(k, l1);
    }
    m = paramd;
    paramd = d();
    if (l != null)
    {
      if (paramd.isEmpty()) {
        l.a(AdErrorType.NO_FILL.getAdErrorWrapper(""));
      }
    }
    else {
      return;
    }
    l.a(paramd);
  }
  
  public void b()
  {
    j.removeCallbacks(k);
    c.a();
  }
  
  public void c()
  {
    i = false;
    j.removeCallbacks(k);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */