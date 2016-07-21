package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.content.Intent;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.InterstitialAdActivity.Type;
import com.facebook.ads.internal.util.f;
import com.facebook.ads.internal.util.h;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

public class j
  extends InterstitialAdapter
{
  private final String a = UUID.randomUUID().toString();
  private Context b;
  private boolean c;
  private int d;
  private int e;
  private boolean f;
  private d g;
  private InterstitialAdapterListener h;
  private boolean i = false;
  private l j;
  private WebView k;
  
  private void a(l paraml)
  {
    if (paraml == null) {
      return;
    }
    k = new WebView(b.getApplicationContext());
    k.setWebChromeClient(new j.1(this));
    k.loadDataWithBaseURL(h.a(), paraml.d(), "text/html", "utf-8", null);
  }
  
  public void loadInterstitialAd(Context paramContext, InterstitialAdapterListener paramInterstitialAdapterListener, Map<String, Object> paramMap)
  {
    b = paramContext;
    h = paramInterstitialAdapterListener;
    j = l.a((JSONObject)paramMap.get("data"));
    if (f.a(paramContext, j)) {
      paramInterstitialAdapterListener.onInterstitialError(this, AdError.NO_FILL);
    }
    do
    {
      return;
      g = new d(paramContext, a, this, h);
      g.a();
      i = true;
      paramContext = j.h();
      if (paramContext.containsKey("is_tablet")) {
        c = Boolean.parseBoolean((String)paramContext.get("is_tablet"));
      }
      if (paramContext.containsKey("ad_height")) {
        d = Integer.parseInt((String)paramContext.get("ad_height"));
      }
      if (paramContext.containsKey("ad_width")) {
        e = Integer.parseInt((String)paramContext.get("ad_width"));
      }
      if (paramContext.containsKey("native_close")) {
        f = Boolean.valueOf((String)paramContext.get("native_close")).booleanValue();
      }
      if ((paramContext.containsKey("preloadMarkup")) && (Boolean.parseBoolean((String)paramContext.get("preloadMarkup"))))
      {
        a(j);
        return;
      }
    } while (h == null);
    h.onInterstitialAdLoaded(this);
  }
  
  public void onDestroy()
  {
    if (g != null) {
      g.b();
    }
    if (k != null)
    {
      h.a(k);
      k.destroy();
      k = null;
    }
  }
  
  public boolean show()
  {
    if (!i)
    {
      if (h != null) {
        h.onInterstitialError(this, AdError.INTERNAL_ERROR);
      }
      return false;
    }
    Intent localIntent = new Intent(b, InterstitialAdActivity.class);
    j.a(localIntent);
    Display localDisplay = ((WindowManager)b.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    localDisplay.getMetrics(localDisplayMetrics);
    localIntent.putExtra("displayRotation", localDisplay.getRotation());
    localIntent.putExtra("displayWidth", widthPixels);
    localIntent.putExtra("displayHeight", heightPixels);
    localIntent.putExtra("isTablet", c);
    localIntent.putExtra("adHeight", d);
    localIntent.putExtra("adWidth", e);
    localIntent.putExtra("adInterstitialUniqueId", a);
    localIntent.putExtra("useNativeCloseButton", f);
    localIntent.putExtra("viewType", InterstitialAdActivity.Type.DISPLAY);
    localIntent.addFlags(268435456);
    b.startActivity(localIntent);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.adapters.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */