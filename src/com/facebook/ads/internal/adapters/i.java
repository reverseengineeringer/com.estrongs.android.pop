package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSize;
import com.facebook.ads.internal.dto.d;
import com.facebook.ads.internal.util.b.a;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.h;
import com.facebook.ads.internal.view.a;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

public class i
  extends BannerAdapter
{
  private static final String a = i.class.getSimpleName();
  private a b;
  private m c;
  private BannerAdapterListener d;
  private Map<String, Object> e;
  private k f;
  private Context g;
  private long h;
  private b.a i;
  
  private void a(d paramd)
  {
    h = 0L;
    i = null;
    l locall = l.a((JSONObject)e.get("data"));
    if (f.a(g, locall)) {
      d.onBannerError(this, AdError.NO_FILL);
    }
    do
    {
      return;
      b = new a(g, new i.1(this, locall), paramd.e());
      b.a(paramd.f(), paramd.g());
      c = new m(g, b, new i.2(this));
      c.a(locall);
      b.loadDataWithBaseURL(h.a(), locall.d(), "text/html", "utf-8", null);
    } while (d == null);
    d.onBannerAdLoaded(this, b);
  }
  
  public void loadBannerAd(Context paramContext, AdSize paramAdSize, BannerAdapterListener paramBannerAdapterListener, Map<String, Object> paramMap)
  {
    g = paramContext;
    d = paramBannerAdapterListener;
    e = paramMap;
    a((d)paramMap.get("definition"));
  }
  
  public void onDestroy()
  {
    if (b != null)
    {
      h.a(b);
      b.destroy();
      b = null;
    }
    if (f != null)
    {
      f.onDestroy();
      f = null;
    }
  }
  
  public void onViewableImpression()
  {
    if (c != null) {
      c.a();
    }
    while (f == null) {
      return;
    }
    HashMap localHashMap = new HashMap();
    localHashMap.put("mil", Boolean.valueOf(false));
    f.a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */