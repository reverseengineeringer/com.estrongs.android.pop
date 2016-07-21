package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

@me
public final class hw
{
  public final List<hs> a;
  public final long b;
  public final List<String> c;
  public final List<String> d;
  public final List<String> e;
  public final String f;
  public final long g;
  public final String h;
  public final int i;
  public int j;
  public int k;
  
  public hw(String paramString)
  {
    paramString = new JSONObject(paramString);
    if (b.a(2)) {
      b.d("Mediation Response JSON: " + paramString.toString(2));
    }
    JSONArray localJSONArray = paramString.getJSONArray("ad_networks");
    ArrayList localArrayList = new ArrayList(localJSONArray.length());
    int n = -1;
    int m = 0;
    while (m < localJSONArray.length())
    {
      hs localhs = new hs(localJSONArray.getJSONObject(m));
      localArrayList.add(localhs);
      int i1 = n;
      if (n < 0)
      {
        i1 = n;
        if (a(localhs)) {
          i1 = m;
        }
      }
      m += 1;
      n = i1;
    }
    j = n;
    k = localJSONArray.length();
    a = Collections.unmodifiableList(localArrayList);
    f = paramString.getString("qdata");
    paramString = paramString.optJSONObject("settings");
    if (paramString != null)
    {
      b = paramString.optLong("ad_network_timeout_millis", -1L);
      c = ae.q().a(paramString, "click_urls");
      d = ae.q().a(paramString, "imp_urls");
      e = ae.q().a(paramString, "nofill_urls");
      long l = paramString.optLong("refresh", -1L);
      if (l > 0L) {}
      for (l *= 1000L;; l = -1L)
      {
        g = l;
        paramString = paramString.optJSONArray("rewards");
        if ((paramString != null) && (paramString.length() != 0)) {
          break;
        }
        h = null;
        i = 0;
        return;
      }
      h = paramString.getJSONObject(0).optString("rb_type");
      i = paramString.getJSONObject(0).optInt("rb_amount");
      return;
    }
    b = -1L;
    c = null;
    d = null;
    e = null;
    g = -1L;
    h = null;
    i = 0;
  }
  
  private boolean a(hs paramhs)
  {
    paramhs = c.iterator();
    while (paramhs.hasNext()) {
      if (((String)paramhs.next()).equals("com.google.ads.mediation.admob.AdMobAdapter")) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */