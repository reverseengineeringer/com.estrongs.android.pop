package com.facebook.ads;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.r;
import android.view.Display;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.internal.view.i;
import com.facebook.ads.internal.view.n;

public class InterstitialAdActivity
  extends Activity
{
  public static final String PREDEFINED_ORIENTATION_KEY = "predefinedOrientationKey";
  public static final String VIDEO_PLAY_REPORT_URL = "videoPlayReportURL";
  public static final String VIDEO_URL = "videoURL";
  public static final String VIEW_TYPE = "viewType";
  private RelativeLayout a;
  private com.facebook.ads.internal.g b;
  private int c;
  private int d;
  private int e;
  private boolean f = false;
  private String g;
  private InterstitialAdActivity.Type h;
  private i i;
  private int j = -1;
  
  private void a(int paramInt1, int paramInt2)
  {
    if (paramInt2 >= paramInt1) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      paramInt2 = ((WindowManager)getSystemService("window")).getDefaultDisplay().getRotation();
      if (paramInt1 == 0) {
        break;
      }
      switch (paramInt2)
      {
      default: 
        setRequestedOrientation(1);
        return;
      }
    }
    setRequestedOrientation(9);
    return;
    switch (paramInt2)
    {
    default: 
      setRequestedOrientation(0);
      return;
    }
    setRequestedOrientation(8);
  }
  
  private void a(Intent paramIntent, Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      c = paramBundle.getInt("lastRequestedOrientation", -1);
      g = paramBundle.getString("adInterstitialUniqueId");
      i.a(paramIntent, paramBundle);
      f = true;
      return;
    }
    d = paramIntent.getIntExtra("displayWidth", 0);
    e = paramIntent.getIntExtra("displayHeight", 0);
    g = paramIntent.getStringExtra("adInterstitialUniqueId");
    i.a(paramIntent, paramBundle);
  }
  
  private void a(String paramString)
  {
    paramString = new Intent(paramString + ":" + g);
    r.a(this).a(paramString);
  }
  
  public void finish()
  {
    a.removeAllViews();
    i.c();
    a("com.facebook.ads.interstitial.dismissed");
    super.finish();
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    getWindow().setFlags(1024, 1024);
    a = new RelativeLayout(this);
    a.setBackgroundColor(-16777216);
    setContentView(a, new RelativeLayout.LayoutParams(-1, -1));
    Intent localIntent = getIntent();
    if (localIntent.getBooleanExtra("useNativeCloseButton", false))
    {
      b = new com.facebook.ads.internal.g(this);
      b.setId(100002);
      b.setOnClickListener(new InterstitialAdActivity.1(this));
    }
    h = ((InterstitialAdActivity.Type)localIntent.getSerializableExtra("viewType"));
    switch (InterstitialAdActivity.4.a[h.ordinal()])
    {
    }
    for (i = new com.facebook.ads.internal.view.g(this, new InterstitialAdActivity.3(this));; i = new n(this, new InterstitialAdActivity.2(this)))
    {
      j = localIntent.getIntExtra("predefinedOrientationKey", -1);
      a(localIntent, paramBundle);
      a("com.facebook.ads.interstitial.displayed");
      return;
    }
  }
  
  public void onPause()
  {
    super.onPause();
    i.a();
  }
  
  public void onRestart()
  {
    super.onRestart();
    f = true;
  }
  
  public void onResume()
  {
    super.onResume();
    i.b();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    i.a(paramBundle);
    paramBundle.putInt("lastRequestedOrientation", c);
    paramBundle.putString("adInterstitialUniqueId", g);
  }
  
  public void onStart()
  {
    super.onStart();
    if (j != -1) {
      setRequestedOrientation(j);
    }
    for (;;)
    {
      f = false;
      return;
      if ((d != 0) && (e != 0)) {
        if (!f)
        {
          a(d, e);
        }
        else if (c >= 0)
        {
          setRequestedOrientation(c);
          c = -1;
        }
      }
    }
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    c = paramInt;
    super.setRequestedOrientation(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.InterstitialAdActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */