package com.facebook.ads;

import android.support.v4.view.bw;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class NativeAdScrollView$a
  extends bw
{
  private List<NativeAd> b = new ArrayList();
  
  public NativeAdScrollView$a(NativeAdScrollView paramNativeAdScrollView) {}
  
  public void a()
  {
    b.clear();
    int j = Math.min(NativeAdScrollView.a(a), NativeAdScrollView.b(a).getUniqueNativeAdCount());
    int i = 0;
    while (i < j)
    {
      NativeAd localNativeAd = NativeAdScrollView.b(a).nextNativeAd();
      localNativeAd.a(true);
      b.add(localNativeAd);
      i += 1;
    }
    notifyDataSetChanged();
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (paramInt < b.size())
    {
      if (NativeAdScrollView.c(a) == null) {
        break label48;
      }
      ((NativeAd)b.get(paramInt)).unregisterView();
    }
    for (;;)
    {
      paramViewGroup.removeView((View)paramObject);
      return;
      label48:
      NativeAdScrollView.f(a).destroyView((NativeAd)b.get(paramInt), (View)paramObject);
    }
  }
  
  public int getCount()
  {
    return b.size();
  }
  
  public int getItemPosition(Object paramObject)
  {
    int i = b.indexOf(paramObject);
    if (i >= 0) {
      return i;
    }
    return -2;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (NativeAdScrollView.c(a) != null) {}
    for (View localView = NativeAdView.render(NativeAdScrollView.d(a), (NativeAd)b.get(paramInt), NativeAdScrollView.c(a), NativeAdScrollView.e(a));; localView = NativeAdScrollView.f(a).createView((NativeAd)b.get(paramInt), paramInt))
    {
      paramViewGroup.addView(localView);
      return localView;
    }
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.NativeAdScrollView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */