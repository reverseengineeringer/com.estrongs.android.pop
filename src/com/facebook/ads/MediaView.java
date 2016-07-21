package com.facebook.ads;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.internal.util.k;
import com.facebook.ads.internal.util.s;
import com.facebook.ads.internal.view.d;
import com.facebook.ads.internal.view.f;

public class MediaView
  extends RelativeLayout
{
  private final f a;
  private final d b;
  private boolean c = false;
  private boolean d = true;
  
  public MediaView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MediaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new f(paramContext);
    a.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    addView(a);
    b = new d(paramContext);
    paramContext = new RelativeLayout.LayoutParams(-1, -1);
    paramContext.addRule(13);
    b.setLayoutParams(paramContext);
    b.setAutoplay(d);
    addView(b);
  }
  
  private boolean a(NativeAd paramNativeAd)
  {
    return !s.a(paramNativeAd.a());
  }
  
  public boolean isAutoplay()
  {
    return d;
  }
  
  public void setAutoplay(boolean paramBoolean)
  {
    d = paramBoolean;
    b.setAutoplay(paramBoolean);
  }
  
  public void setNativeAd(NativeAd paramNativeAd)
  {
    paramNativeAd.b(true);
    paramNativeAd.setMediaViewAutoplay(d);
    if (c)
    {
      a.a(null, null);
      b.a();
      c = false;
    }
    if ((paramNativeAd != null) && (a(paramNativeAd)))
    {
      a.setVisibility(4);
      b.setVisibility(0);
      bringChildToFront(b);
      c = true;
    }
    while ((paramNativeAd == null) || (paramNativeAd.getAdCoverImage() == null)) {
      try
      {
        b.setVideoPlayReportURI(paramNativeAd.b());
        b.setVideoSkipReportURI(paramNativeAd.c());
        b.setVideoURI(paramNativeAd.a());
        return;
      }
      catch (Exception paramNativeAd)
      {
        paramNativeAd.printStackTrace();
        return;
      }
    }
    b.setVisibility(4);
    a.setVisibility(0);
    bringChildToFront(a);
    c = true;
    new k(a).execute(new String[] { paramNativeAd.getAdCoverImage().getUrl() });
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.MediaView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */