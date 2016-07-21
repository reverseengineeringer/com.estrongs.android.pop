package com.facebook.ads.internal;

import android.text.TextUtils;
import com.facebook.ads.internal.util.AdInternalSettings;
import org.json.JSONArray;

public enum d
{
  private static final d[] n;
  private static final String o;
  private static final String p = TextUtils.join(",", n);
  private final int m;
  
  static
  {
    int i1 = 0;
    a = new d("APP_AD", 0, 0);
    b = new d("LINK_AD", 1, 1);
    c = new d("APP_AD_V2", 2, 2);
    d = new d("LINK_AD_V2", 3, 3);
    e = new d("APP_ENGAGEMENT_AD", 4, 4);
    f = new d("AD_CHOICES", 5, 5);
    g = new d("JS_TRIGGER", 6, 6);
    h = new d("JS_TRIGGER_NO_AUTO_IMP_LOGGING", 7, 7);
    i = new d("VIDEO_AD", 8, 8);
    j = new d("INLINE_VIDEO_AD", 9, 9);
    k = new d("BANNER_TO_INTERSTITIAL", 10, 10);
    l = new d("NATIVE_CLOSE_BUTTON", 11, 11);
    q = new d[] { a, b, c, d, e, f, g, h, i, j, k, l };
    n = new d[] { d, e, f, h, l };
    JSONArray localJSONArray = new JSONArray();
    d[] arrayOfd = n;
    int i2 = arrayOfd.length;
    while (i1 < i2)
    {
      localJSONArray.put(arrayOfd[i1].a());
      i1 += 1;
    }
    o = localJSONArray.toString();
  }
  
  private d(int paramInt)
  {
    m = paramInt;
  }
  
  public static String b()
  {
    if (AdInternalSettings.shouldUseLiveRailEndpoint()) {
      return p;
    }
    return o;
  }
  
  public static String c()
  {
    return p;
  }
  
  int a()
  {
    return m;
  }
  
  public String toString()
  {
    return String.valueOf(m);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */