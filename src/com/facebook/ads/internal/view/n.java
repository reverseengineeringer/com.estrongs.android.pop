package com.facebook.ads.internal.view;

import android.content.Intent;
import android.os.Bundle;
import android.widget.RelativeLayout.LayoutParams;
import com.facebook.ads.InterstitialAdActivity;

public class n
  implements i
{
  private InterstitialAdActivity a;
  private i.a b;
  private String c;
  private String d;
  private h e;
  
  public n(InterstitialAdActivity paramInterstitialAdActivity, i.a parama)
  {
    a = paramInterstitialAdActivity;
    b = parama;
    e = new h(paramInterstitialAdActivity);
    paramInterstitialAdActivity = new RelativeLayout.LayoutParams(-1, -2);
    paramInterstitialAdActivity.addRule(15);
    e.setLayoutParams(paramInterstitialAdActivity);
    parama.a(e);
  }
  
  public void a() {}
  
  public void a(Intent paramIntent, Bundle paramBundle)
  {
    c = paramIntent.getStringExtra("videoURL");
    d = paramIntent.getStringExtra("videoPlayReportURL");
    e.setVideoURI(c);
    e.a();
  }
  
  public void a(Bundle paramBundle) {}
  
  public void b() {}
  
  public void c() {}
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.view.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */