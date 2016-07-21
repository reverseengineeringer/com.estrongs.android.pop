package com.facebook.ads;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.adapters.o;
import com.facebook.ads.internal.c;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;

public class NativeAd
  implements Ad
{
  private static final c a = c.a;
  private static final String b = NativeAd.class.getSimpleName();
  private static WeakHashMap<View, WeakReference<NativeAd>> c = new WeakHashMap();
  private final Context d;
  private final String e;
  private AdListener f;
  private ImpressionListener g;
  private h h;
  private volatile boolean i;
  private com.facebook.ads.internal.adapters.p j;
  private com.facebook.ads.internal.dto.d k;
  private View l;
  private List<View> m = new ArrayList();
  private View.OnTouchListener n;
  private com.facebook.ads.internal.adapters.e o;
  private o p;
  private NativeAd.a q;
  private NativeAd.b r;
  private com.facebook.ads.internal.view.p s;
  private NativeAdView.Type t;
  private boolean u;
  private boolean v;
  private boolean w;
  
  public NativeAd(Context paramContext, com.facebook.ads.internal.adapters.p paramp, com.facebook.ads.internal.dto.d paramd)
  {
    this(paramContext, null);
    k = paramd;
    i = true;
    j = paramp;
  }
  
  public NativeAd(Context paramContext, String paramString)
  {
    d = paramContext;
    e = paramString;
  }
  
  NativeAd(NativeAd paramNativeAd)
  {
    this(d, null);
    k = k;
    i = true;
    j = j;
  }
  
  private void a(View paramView)
  {
    m.add(paramView);
    paramView.setOnClickListener(q);
    paramView.setOnTouchListener(q);
  }
  
  private void a(List<View> paramList, View paramView)
  {
    paramList.add(paramView);
    if (((paramView instanceof ViewGroup)) && (!(paramView instanceof com.facebook.ads.internal.view.d)))
    {
      paramView = (ViewGroup)paramView;
      int i1 = 0;
      while (i1 < paramView.getChildCount())
      {
        a(paramList, paramView.getChildAt(i1));
        i1 += 1;
      }
    }
  }
  
  private int d()
  {
    if (k != null) {
      return k.e();
    }
    if (j != null) {
      return j.e();
    }
    if ((h != null) && (h.a() != null)) {
      return h.a().f();
    }
    return 0;
  }
  
  public static void downloadAndDisplayImage(NativeAd.Image paramImage, ImageView paramImageView)
  {
    if ((paramImage != null) && (paramImageView != null)) {
      new k(paramImageView).execute(new String[] { paramImage.getUrl() });
    }
  }
  
  private int e()
  {
    if (k != null) {
      return k.g();
    }
    if (j != null) {
      return j.f();
    }
    if ((h != null) && (h.a() != null)) {
      return h.a().g();
    }
    return 1000;
  }
  
  private void f()
  {
    Iterator localIterator = m.iterator();
    while (localIterator.hasNext())
    {
      View localView = (View)localIterator.next();
      localView.setOnClickListener(null);
      localView.setOnTouchListener(null);
    }
    m.clear();
  }
  
  private void g()
  {
    if ((j != null) && (j.a()))
    {
      r = new NativeAd.b(this, null);
      r.a();
      p = new o(d, new NativeAd.4(this), j);
    }
  }
  
  private int getMinViewabilityPercentage()
  {
    int i2 = 1;
    int i1;
    if (k != null) {
      i1 = k.e();
    }
    do
    {
      do
      {
        return i1;
        i1 = i2;
      } while (h == null);
      i1 = i2;
    } while (h.a() == null);
    return h.a().e();
  }
  
  private void logExternalClick(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("eil", Boolean.valueOf(true));
    localHashMap.put("eil_source", paramString);
    j.b(localHashMap);
  }
  
  private void logExternalImpression()
  {
    p.a();
  }
  
  private void registerExternalLogReceiver(String paramString)
  {
    p = new o(d, new NativeAd.5(this, paramString), j);
  }
  
  String a()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.r();
  }
  
  void a(NativeAdView.Type paramType)
  {
    t = paramType;
  }
  
  void a(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  String b()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.s();
  }
  
  void b(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  String c()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.t();
  }
  
  public void destroy()
  {
    if (r != null)
    {
      r.b();
      r = null;
    }
    if (h != null)
    {
      h.d();
      h = null;
    }
  }
  
  public String getAdBody()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.k();
  }
  
  public String getAdCallToAction()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.l();
  }
  
  public NativeAd.Image getAdChoicesIcon()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.p();
  }
  
  public String getAdChoicesLinkUrl()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.q();
  }
  
  public NativeAd.Image getAdCoverImage()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.h();
  }
  
  public NativeAd.Image getAdIcon()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.g();
  }
  
  public String getAdSocialContext()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.m();
  }
  
  public NativeAd.Rating getAdStarRating()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.n();
  }
  
  public String getAdSubtitle()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.j();
  }
  
  public String getAdTitle()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.i();
  }
  
  public String getId()
  {
    if (!isAdLoaded()) {
      return null;
    }
    return j.o();
  }
  
  public boolean isAdLoaded()
  {
    return j != null;
  }
  
  public void loadAd()
  {
    loadAd(EnumSet.of(NativeAd.MediaCacheFlag.NONE));
  }
  
  public void loadAd(EnumSet<NativeAd.MediaCacheFlag> paramEnumSet)
  {
    if (i) {
      throw new IllegalStateException("loadAd cannot be called more than once");
    }
    i = true;
    com.facebook.ads.internal.e locale = com.facebook.ads.internal.e.j;
    h = new h(d, e, locale, null, a, 1, true);
    h.a(new NativeAd.1(this, paramEnumSet));
    h.b();
  }
  
  public void registerViewForInteraction(View paramView)
  {
    ArrayList localArrayList = new ArrayList();
    a(localArrayList, paramView);
    registerViewForInteraction(paramView, localArrayList);
  }
  
  public void registerViewForInteraction(View paramView, List<View> paramList)
  {
    if (paramView == null) {
      throw new IllegalArgumentException("Must provide a View");
    }
    if ((paramList == null) || (paramList.size() == 0)) {
      throw new IllegalArgumentException("Invalid set of clickable views");
    }
    if (!isAdLoaded())
    {
      Log.e(b, "Ad not loaded");
      return;
    }
    if (l != null)
    {
      Log.w(b, "Native Ad was already registered with a View. Auto unregistering and proceeding.");
      unregisterView();
    }
    if (c.containsKey(paramView))
    {
      Log.w(b, "View already registered with a NativeAd. Auto unregistering and proceeding.");
      ((NativeAd)((WeakReference)c.get(paramView)).get()).unregisterView();
    }
    q = new NativeAd.a(this, null);
    l = paramView;
    if ((paramView instanceof ViewGroup))
    {
      s = new com.facebook.ads.internal.view.p(paramView.getContext(), new NativeAd.2(this));
      ((ViewGroup)paramView).addView(s);
    }
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext()) {
      a((View)localIterator.next());
    }
    p = new o(d, new NativeAd.c(this, null), j);
    p.a(paramList);
    int i1 = getMinViewabilityPercentage();
    o = new com.facebook.ads.internal.adapters.e(d, l, i1, new NativeAd.3(this));
    o.a(d());
    o.b(e());
    o.a();
    c.put(paramView, new WeakReference(this));
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    f = paramAdListener;
  }
  
  @Deprecated
  public void setImpressionListener(ImpressionListener paramImpressionListener)
  {
    g = paramImpressionListener;
  }
  
  public void setMediaViewAutoplay(boolean paramBoolean)
  {
    w = paramBoolean;
  }
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    n = paramOnTouchListener;
  }
  
  public void unregisterView()
  {
    if (l == null) {
      return;
    }
    if ((!c.containsKey(l)) || (((WeakReference)c.get(l)).get() != this)) {
      throw new IllegalStateException("View not registered with this NativeAd");
    }
    if (((l instanceof ViewGroup)) && (s != null))
    {
      ((ViewGroup)l).removeView(s);
      s = null;
    }
    c.remove(l);
    f();
    l = null;
    if (o != null)
    {
      o.b();
      o = null;
    }
    p = null;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */