package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.i;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Map;
import org.json.JSONObject;

@me
public abstract interface qa
  extends ar
{
  public abstract void a();
  
  public abstract void a(int paramInt);
  
  public abstract void a(Context paramContext, AdSizeParcel paramAdSizeParcel);
  
  public abstract void a(AdSizeParcel paramAdSizeParcel);
  
  public abstract void a(zzd paramzzd);
  
  public abstract void a(String paramString);
  
  public abstract void a(String paramString1, String paramString2);
  
  public abstract void a(String paramString, Map<String, ?> paramMap);
  
  public abstract void a(String paramString, JSONObject paramJSONObject);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void b();
  
  public abstract void b(zzd paramzzd);
  
  public abstract void b(String paramString);
  
  public abstract void b(String paramString, JSONObject paramJSONObject);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract Activity c();
  
  public abstract void c(String paramString);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract Context d();
  
  public abstract void destroy();
  
  public abstract i e();
  
  public abstract zzd f();
  
  public abstract zzd g();
  
  public abstract Context getContext();
  
  public abstract ViewGroup.LayoutParams getLayoutParams();
  
  public abstract void getLocationOnScreen(int[] paramArrayOfInt);
  
  public abstract int getMeasuredHeight();
  
  public abstract int getMeasuredWidth();
  
  public abstract ViewParent getParent();
  
  public abstract String getRequestId();
  
  public abstract int getRequestedOrientation();
  
  public abstract WebView getWebView();
  
  public abstract AdSizeParcel h();
  
  public abstract qb i();
  
  public abstract boolean j();
  
  public abstract aj k();
  
  public abstract VersionInfoParcel l();
  
  public abstract void loadData(String paramString1, String paramString2, String paramString3);
  
  public abstract void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5);
  
  public abstract void loadUrl(String paramString);
  
  public abstract boolean m();
  
  public abstract void measure(int paramInt1, int paramInt2);
  
  public abstract boolean n();
  
  public abstract void o();
  
  public abstract boolean p();
  
  public abstract void q();
  
  public abstract String r();
  
  public abstract void setBackgroundColor(int paramInt);
  
  public abstract void setContext(Context paramContext);
  
  public abstract void setOnClickListener(View.OnClickListener paramOnClickListener);
  
  public abstract void setOnTouchListener(View.OnTouchListener paramOnTouchListener);
  
  public abstract void setRequestedOrientation(int paramInt);
  
  public abstract void setWebViewClient(WebViewClient paramWebViewClient);
  
  public abstract void setWillNotDraw(boolean paramBoolean);
  
  public abstract void stopLoading();
  
  public abstract boolean willNotDraw();
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */