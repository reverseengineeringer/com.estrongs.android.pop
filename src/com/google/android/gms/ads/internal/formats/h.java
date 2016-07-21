package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.FrameLayout.LayoutParams;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.w;
import com.google.android.gms.common.internal.bn;
import com.google.android.gms.internal.aj;
import com.google.android.gms.internal.bh;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.qa;
import com.google.android.gms.internal.qb;
import com.google.android.gms.internal.qh;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class h
{
  private final Object a = new Object();
  private final w b;
  private final Context c;
  private final JSONObject d;
  private final bh e;
  private final o f;
  private final aj g;
  private final VersionInfoParcel h;
  private boolean i;
  private qa j;
  private String k;
  
  public h(Context paramContext, w paramw, bh parambh, aj paramaj, JSONObject paramJSONObject, o paramo, VersionInfoParcel paramVersionInfoParcel)
  {
    c = paramContext;
    b = paramw;
    e = parambh;
    g = paramaj;
    d = paramJSONObject;
    f = paramo;
    h = paramVersionInfoParcel;
  }
  
  public b a(View.OnClickListener paramOnClickListener)
  {
    Object localObject = f.l();
    if (localObject == null) {
      return null;
    }
    localObject = new b(c, (a)localObject);
    ((b)localObject).setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    ((b)localObject).a().setOnClickListener(paramOnClickListener);
    ((b)localObject).a().setContentDescription("Ad attribution icon");
    return (b)localObject;
  }
  
  public void a()
  {
    bn.b("recordImpression must be called on the main UI thread.");
    a(true);
    b.i();
  }
  
  public void a(MotionEvent paramMotionEvent)
  {
    g.a(paramMotionEvent);
  }
  
  public void a(View paramView) {}
  
  public void a(View paramView, Map<String, WeakReference<View>> paramMap)
  {
    bn.b("performClick must be called on the main UI thread.");
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (paramView.equals((View)((WeakReference)localEntry.getValue()).get())) {
        a((String)localEntry.getKey());
      }
    }
  }
  
  public void a(String paramString)
  {
    bn.b("performClick must be called on the main UI thread.");
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("asset", paramString);
      localJSONObject.put("template", f.j());
      paramString = new JSONObject();
      paramString.put("ad", d);
      paramString.put("click", localJSONObject);
      if (b.b(f.k()) != null) {}
      for (boolean bool = true;; bool = false)
      {
        paramString.put("has_custom_click_handler", bool);
        e.a("google.afma.nativeAds.handleClickGmsg", paramString);
        return;
      }
      return;
    }
    catch (JSONException paramString)
    {
      com.google.android.gms.ads.internal.util.client.b.b("Unable to create click JSON.", paramString);
    }
  }
  
  protected void a(boolean paramBoolean)
  {
    i = paramBoolean;
  }
  
  public void b(View paramView)
  {
    synchronized (a)
    {
      if (i) {
        return;
      }
      if (!paramView.isShown()) {
        return;
      }
    }
    if (!paramView.getGlobalVisibleRect(new Rect(), null)) {
      return;
    }
    a();
  }
  
  public qa c()
  {
    j = d();
    j.getWebView().setVisibility(8);
    e.a("/loadHtml", new i(this));
    e.a("/showOverlay", new k(this));
    e.a("/hideOverlay", new l(this));
    j.i().a("/hideOverlay", new m(this));
    j.i().a("/sendMessageToSdk", new n(this));
    return j;
  }
  
  qa d()
  {
    return ae.f().a(c, AdSizeParcel.a(c), false, false, g, h);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */