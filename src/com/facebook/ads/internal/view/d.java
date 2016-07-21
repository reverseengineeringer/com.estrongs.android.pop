package com.facebook.ads.internal.view;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.VideoView;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.InterstitialAdActivity.Type;
import com.facebook.ads.NativeAdVideoActivity;
import com.facebook.ads.internal.adapters.e;
import com.facebook.ads.internal.util.b;
import com.facebook.ads.internal.util.c;

public class d
  extends FrameLayout
{
  private VideoView a;
  private e b;
  private d.a c;
  private String d;
  private String e;
  private String f;
  private boolean g;
  private Handler h;
  private float i;
  
  public d(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  private void a(Context paramContext, Intent paramIntent)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    paramContext.getMetrics(localDisplayMetrics);
    paramIntent.putExtra("displayRotation", paramContext.getRotation());
    paramIntent.putExtra("displayWidth", widthPixels);
    paramIntent.putExtra("displayHeight", heightPixels);
    paramIntent.putExtra("useNativeCloseButton", true);
    paramIntent.putExtra("viewType", InterstitialAdActivity.Type.VIDEO);
    paramIntent.putExtra("videoURL", getVideoURI());
    paramIntent.putExtra("videoPlayReportURL", getVideoPlayReportURI());
    paramIntent.putExtra("predefinedOrientationKey", 13);
    paramIntent.addFlags(268435456);
  }
  
  private boolean a(Class<?> paramClass)
  {
    try
    {
      Context localContext = getContext();
      paramClass = new Intent(localContext, paramClass);
      a(localContext, paramClass);
      localContext.startActivity(paramClass);
      return true;
    }
    catch (Exception paramClass)
    {
      c.a(b.a(paramClass, "Error occurred while loading fullscreen video activity."));
    }
    return false;
  }
  
  private void d()
  {
    i = 0.0F;
    Object localObject1 = new RelativeLayout(getContext());
    Object localObject2 = new RelativeLayout.LayoutParams(-1, -1);
    ((RelativeLayout)localObject1).setGravity(17);
    ((RelativeLayout)localObject1).setLayoutParams((ViewGroup.LayoutParams)localObject2);
    setBackgroundColor(0);
    localObject2 = getContext();
    a = new VideoView((Context)localObject2);
    a.setBackgroundColor(0);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(10, -1);
    localLayoutParams.addRule(12, -1);
    localLayoutParams.addRule(11, -1);
    localLayoutParams.addRule(9, -1);
    a.setLayoutParams(localLayoutParams);
    a.setOnPreparedListener(new d.1(this, this));
    ((RelativeLayout)localObject1).addView(a);
    addView((View)localObject1);
    h = new Handler();
    localObject1 = new d.2(this);
    h.postDelayed((Runnable)localObject1, 250L);
    b = new e((Context)localObject2, this, 50, new d.3(this, this));
    b.a(0);
    b.b(250);
    b.a();
    setOnTouchListenerInternal(new d.4(this, this));
    setOnClickListenerInternal(new d.5(this, this));
    c = new d.a(this, (Context)localObject2);
    localObject1 = new FrameLayout.LayoutParams(100, 100, 80);
    c.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    c.setOnTouchListener(new d.6(this));
    c.setOnClickListener(new d.7(this));
    addView(c);
  }
  
  private void e()
  {
    if (!a(NativeAdVideoActivity.class)) {
      a(InterstitialAdActivity.class);
    }
  }
  
  private void setOnClickListenerInternal(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(paramOnClickListener);
  }
  
  private void setOnTouchListenerInternal(View.OnTouchListener paramOnTouchListener)
  {
    super.setOnTouchListener(paramOnTouchListener);
  }
  
  public void a()
  {
    d = null;
  }
  
  public void b()
  {
    d.a.a(c, false);
    a.start();
  }
  
  public void c()
  {
    d.a.a(c, true);
    a.pause();
  }
  
  public boolean getAutoplay()
  {
    return g;
  }
  
  public String getVideoPlayReportURI()
  {
    return e;
  }
  
  public String getVideoSkipReportURI()
  {
    return f;
  }
  
  public String getVideoURI()
  {
    return d;
  }
  
  float getVolume()
  {
    return i;
  }
  
  public void setAutoplay(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener) {}
  
  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener) {}
  
  public void setVideoPlayReportURI(String paramString)
  {
    e = paramString;
  }
  
  public void setVideoSkipReportURI(String paramString)
  {
    f = paramString;
  }
  
  public void setVideoURI(String paramString)
  {
    d = paramString;
    if (paramString != null) {
      a.setVideoURI(Uri.parse(paramString));
    }
  }
  
  void setVolume(float paramFloat)
  {
    i = paramFloat;
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */