package com.google.android.gms.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.ae;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.m;
import com.google.android.gms.ads.internal.i;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

@me
public class qi
  extends WebView
  implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, qa
{
  private final qb a;
  private final qk b;
  private final Object c = new Object();
  private final aj d;
  private final VersionInfoParcel e;
  private final i f;
  private zzd g;
  private AdSizeParcel h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private Boolean m;
  private int n;
  private boolean o = true;
  private String p = "";
  private String q;
  private zzd r;
  private pi s;
  private int t = -1;
  private int u = -1;
  private int v = -1;
  private int w = -1;
  private Map<String, gk> x;
  private final WindowManager y;
  
  protected qi(qk paramqk, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, aj paramaj, VersionInfoParcel paramVersionInfoParcel, i parami)
  {
    super(paramqk);
    b = paramqk;
    h = paramAdSizeParcel;
    k = paramBoolean1;
    n = -1;
    d = paramaj;
    e = paramVersionInfoParcel;
    f = parami;
    y = ((WindowManager)getContext().getSystemService("window"));
    setBackgroundColor(0);
    paramAdSizeParcel = getSettings();
    paramAdSizeParcel.setJavaScriptEnabled(true);
    paramAdSizeParcel.setSavePassword(false);
    paramAdSizeParcel.setSupportMultipleWindows(true);
    paramAdSizeParcel.setJavaScriptCanOpenWindowsAutomatically(true);
    if (Build.VERSION.SDK_INT >= 21) {
      paramAdSizeParcel.setMixedContentMode(0);
    }
    ae.e().a(paramqk, c, paramAdSizeParcel);
    ae.g().a(getContext(), paramAdSizeParcel);
    setDownloadListener(this);
    a = ae.g().a(this, paramBoolean2);
    setWebViewClient(a);
    setWebChromeClient(ae.g().a(this));
    v();
    if (tm.e()) {
      addJavascriptInterface(new ql(this), "googleAdsJsInterface");
    }
    s = new pi(b.a(), this, null);
  }
  
  static qi a(Context paramContext, AdSizeParcel paramAdSizeParcel, boolean paramBoolean1, boolean paramBoolean2, aj paramaj, VersionInfoParcel paramVersionInfoParcel, i parami)
  {
    return new qi(new qk(paramContext), paramAdSizeParcel, paramBoolean1, paramBoolean2, paramaj, paramVersionInfoParcel, parami);
  }
  
  private void u()
  {
    synchronized (c)
    {
      m = ae.h().i();
      Boolean localBoolean = m;
      if (localBoolean == null) {}
      try
      {
        evaluateJavascript("(function(){})()", null);
        a(Boolean.valueOf(true));
        return;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        for (;;)
        {
          a(Boolean.valueOf(false));
        }
      }
    }
  }
  
  private void v()
  {
    for (;;)
    {
      synchronized (c)
      {
        if ((k) || (h.f))
        {
          if (Build.VERSION.SDK_INT < 14)
          {
            b.a("Disabling hardware acceleration on an overlay.");
            w();
            return;
          }
          b.a("Enabling hardware acceleration on an overlay.");
          x();
        }
      }
      if (Build.VERSION.SDK_INT < 18)
      {
        b.a("Disabling hardware acceleration on an AdView.");
        w();
      }
      else
      {
        b.a("Enabling hardware acceleration on an AdView.");
        x();
      }
    }
  }
  
  private void w()
  {
    synchronized (c)
    {
      if (!l) {
        ae.g().c(this);
      }
      l = true;
      return;
    }
  }
  
  private void x()
  {
    synchronized (c)
    {
      if (l) {
        ae.g().b(this);
      }
      l = false;
      return;
    }
  }
  
  private void y()
  {
    synchronized (c)
    {
      if (x != null)
      {
        Iterator localIterator = x.values().iterator();
        if (localIterator.hasNext()) {
          ((gk)localIterator.next()).b();
        }
      }
    }
  }
  
  public void a()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", e.c);
    a("onhide", localHashMap);
  }
  
  public void a(int paramInt)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("closetype", String.valueOf(paramInt));
    localHashMap.put("version", e.c);
    a("onhide", localHashMap);
  }
  
  public void a(Context paramContext, AdSizeParcel paramAdSizeParcel)
  {
    synchronized (c)
    {
      s.b();
      setContext(paramContext);
      g = null;
      h = paramAdSizeParcel;
      k = false;
      i = false;
      p = "";
      n = -1;
      ae.g().b(this);
      loadUrl("about:blank");
      a.f();
      setOnTouchListener(null);
      setOnClickListener(null);
      o = true;
      return;
    }
  }
  
  public void a(AdSizeParcel paramAdSizeParcel)
  {
    synchronized (c)
    {
      h = paramAdSizeParcel;
      requestLayout();
      return;
    }
  }
  
  public void a(zzd paramzzd)
  {
    synchronized (c)
    {
      g = paramzzd;
      return;
    }
  }
  
  public void a(au paramau, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean) {}
    for (paramau = "1";; paramau = "0")
    {
      localHashMap.put("isVisible", paramau);
      a("onAdVisibilityChanged", localHashMap);
      return;
    }
  }
  
  void a(Boolean paramBoolean)
  {
    m = paramBoolean;
    ae.h().a(paramBoolean);
  }
  
  public void a(String paramString)
  {
    synchronized (c)
    {
      super.loadUrl(paramString);
      return;
    }
  }
  
  protected void a(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (c)
    {
      if (!n()) {
        evaluateJavascript(paramString, paramValueCallback);
      }
      do
      {
        return;
        b.e("The webview is destroyed. Ignoring action.");
      } while (paramValueCallback == null);
      paramValueCallback.onReceiveValue(null);
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    e(paramString1 + "(" + paramString2 + ");");
  }
  
  public void a(String paramString, Map<String, ?> paramMap)
  {
    try
    {
      paramMap = ae.e().a(paramMap);
      a(paramString, paramMap);
      return;
    }
    catch (JSONException paramString)
    {
      b.e("Could not convert parameters to JSON.");
    }
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    Object localObject = paramJSONObject;
    if (paramJSONObject == null) {
      localObject = new JSONObject();
    }
    paramJSONObject = ((JSONObject)localObject).toString();
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("AFMA_ReceiveMessage('");
    ((StringBuilder)localObject).append(paramString);
    ((StringBuilder)localObject).append("'");
    ((StringBuilder)localObject).append(",");
    ((StringBuilder)localObject).append(paramJSONObject);
    ((StringBuilder)localObject).append(");");
    b.d("Dispatching AFMA event: " + ((StringBuilder)localObject).toString());
    e(((StringBuilder)localObject).toString());
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (c)
    {
      k = paramBoolean;
      v();
      return;
    }
  }
  
  public void b()
  {
    HashMap localHashMap = new HashMap(1);
    localHashMap.put("version", e.c);
    a("onshow", localHashMap);
  }
  
  public void b(zzd paramzzd)
  {
    synchronized (c)
    {
      r = paramzzd;
      return;
    }
  }
  
  public void b(String paramString)
  {
    Object localObject = c;
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    try
    {
      p = str;
      return;
    }
    finally {}
  }
  
  public void b(String paramString, JSONObject paramJSONObject)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    a(paramString, localJSONObject.toString());
  }
  
  public void b(boolean paramBoolean)
  {
    synchronized (c)
    {
      if (g != null)
      {
        g.a(a.b(), paramBoolean);
        return;
      }
      i = paramBoolean;
    }
  }
  
  public Activity c()
  {
    return b.a();
  }
  
  public void c(String paramString)
  {
    synchronized (c)
    {
      q = paramString;
      return;
    }
  }
  
  public void c(boolean paramBoolean)
  {
    synchronized (c)
    {
      o = paramBoolean;
      return;
    }
  }
  
  public Context d()
  {
    return b.b();
  }
  
  protected void d(String paramString)
  {
    synchronized (c)
    {
      if (!n())
      {
        loadUrl(paramString);
        return;
      }
      b.e("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void destroy()
  {
    synchronized (c)
    {
      s.b();
      if (g != null)
      {
        g.a();
        g.l();
        g = null;
      }
      a.f();
      if (j) {
        return;
      }
      ae.r().a(this);
      y();
      j = true;
      b.d("Initiating WebView self destruct sequence in 3...");
      a.d();
      return;
    }
  }
  
  public i e()
  {
    return f;
  }
  
  protected void e(String paramString)
  {
    if (tm.g())
    {
      if (t() == null) {
        u();
      }
      if (t().booleanValue())
      {
        a(paramString, null);
        return;
      }
      d("javascript:" + paramString);
      return;
    }
    d("javascript:" + paramString);
  }
  
  public void evaluateJavascript(String paramString, ValueCallback<String> paramValueCallback)
  {
    synchronized (c)
    {
      if (n())
      {
        b.e("The webview is destroyed. Ignoring action.");
        if (paramValueCallback != null) {
          paramValueCallback.onReceiveValue(null);
        }
        return;
      }
      super.evaluateJavascript(paramString, paramValueCallback);
      return;
    }
  }
  
  public zzd f()
  {
    synchronized (c)
    {
      zzd localzzd = g;
      return localzzd;
    }
  }
  
  public zzd g()
  {
    synchronized (c)
    {
      zzd localzzd = r;
      return localzzd;
    }
  }
  
  public String getRequestId()
  {
    synchronized (c)
    {
      String str = p;
      return str;
    }
  }
  
  public int getRequestedOrientation()
  {
    synchronized (c)
    {
      int i1 = n;
      return i1;
    }
  }
  
  public WebView getWebView()
  {
    return this;
  }
  
  public AdSizeParcel h()
  {
    synchronized (c)
    {
      AdSizeParcel localAdSizeParcel = h;
      return localAdSizeParcel;
    }
  }
  
  public qb i()
  {
    return a;
  }
  
  public boolean j()
  {
    return i;
  }
  
  public aj k()
  {
    return d;
  }
  
  public VersionInfoParcel l()
  {
    return e;
  }
  
  public void loadData(String paramString1, String paramString2, String paramString3)
  {
    synchronized (c)
    {
      if (!n())
      {
        super.loadData(paramString1, paramString2, paramString3);
        return;
      }
      b.e("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    synchronized (c)
    {
      if (!n())
      {
        super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
        return;
      }
      b.e("The webview is destroyed. Ignoring action.");
    }
  }
  
  public void loadUrl(String paramString)
  {
    synchronized (c)
    {
      if (!n())
      {
        super.loadUrl(paramString);
        return;
      }
      b.e("The webview is destroyed. Ignoring action.");
    }
  }
  
  public boolean m()
  {
    synchronized (c)
    {
      boolean bool = k;
      return bool;
    }
  }
  
  public boolean n()
  {
    synchronized (c)
    {
      boolean bool = j;
      return bool;
    }
  }
  
  public void o()
  {
    synchronized (c)
    {
      b.d("Destroying WebView!");
      oe.a.post(new qj(this));
      return;
    }
  }
  
  protected void onAttachedToWindow()
  {
    synchronized (c)
    {
      super.onAttachedToWindow();
      if (!n()) {
        s.c();
      }
      return;
    }
  }
  
  protected void onDetachedFromWindow()
  {
    synchronized (c)
    {
      if (!n()) {
        s.d();
      }
      super.onDetachedFromWindow();
      return;
    }
  }
  
  public void onDownloadStart(String paramString1, String paramString2, String paramString3, String paramString4, long paramLong)
  {
    try
    {
      paramString2 = new Intent("android.intent.action.VIEW");
      paramString2.setDataAndType(Uri.parse(paramString1), paramString4);
      getContext().startActivity(paramString2);
      return;
    }
    catch (ActivityNotFoundException paramString2)
    {
      b.a("Couldn't find an Activity to view url/mimetype: " + paramString1 + " / " + paramString4);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (n()) {}
    while ((Build.VERSION.SDK_INT == 21) && (paramCanvas.isHardwareAccelerated()) && (!isAttachedToWindow())) {
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void onGlobalLayout()
  {
    boolean bool = s();
    zzd localzzd = f();
    if ((localzzd != null) && (bool)) {
      localzzd.p();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = Integer.MAX_VALUE;
    synchronized (c)
    {
      if (n())
      {
        setMeasuredDimension(0, 0);
        return;
      }
      if ((isInEditMode()) || (k) || (h.j))
      {
        super.onMeasure(paramInt1, paramInt2);
        return;
      }
    }
    if (h.f)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      y.getDefaultDisplay().getMetrics(localDisplayMetrics);
      setMeasuredDimension(widthPixels, heightPixels);
      return;
    }
    int i5 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i4 = View.MeasureSpec.getMode(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt2);
    if (i5 != Integer.MIN_VALUE) {
      if (i5 == 1073741824) {
        break label358;
      }
    }
    for (;;)
    {
      if ((h.h > paramInt1) || (h.e > paramInt2))
      {
        float f1 = b.getResources().getDisplayMetrics().density;
        b.e("Not enough space to show ad. Needs " + (int)(h.h / f1) + "x" + (int)(h.e / f1) + " dp, but only has " + (int)(i1 / f1) + "x" + (int)(i3 / f1) + " dp.");
        if (getVisibility() != 8) {
          setVisibility(4);
        }
        setMeasuredDimension(0, 0);
      }
      for (;;)
      {
        return;
        if (getVisibility() != 8) {
          setVisibility(0);
        }
        setMeasuredDimension(h.h, h.e);
      }
      paramInt1 = Integer.MAX_VALUE;
      break label361;
      label358:
      paramInt1 = i1;
      label361:
      if (i4 != Integer.MIN_VALUE)
      {
        paramInt2 = i2;
        if (i4 != 1073741824) {}
      }
      else
      {
        paramInt2 = i3;
      }
    }
  }
  
  public void onPause()
  {
    if (n()) {
      return;
    }
    try
    {
      super.onPause();
      return;
    }
    catch (Exception localException)
    {
      b.b("Could not pause webview.", localException);
    }
  }
  
  public void onResume()
  {
    if (n()) {
      return;
    }
    try
    {
      super.onResume();
      return;
    }
    catch (Exception localException)
    {
      b.b("Could not resume webview.", localException);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (d != null) {
      d.a(paramMotionEvent);
    }
    if (n()) {
      return false;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean p()
  {
    synchronized (c)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public void q()
  {
    s.a();
  }
  
  public String r()
  {
    synchronized (c)
    {
      String str = q;
      return str;
    }
  }
  
  public boolean s()
  {
    if (!i().b()) {
      return false;
    }
    DisplayMetrics localDisplayMetrics = ae.e().a(y);
    int i3 = m.a().b(localDisplayMetrics, widthPixels);
    int i4 = m.a().b(localDisplayMetrics, heightPixels);
    Object localObject = c();
    int i2;
    int i1;
    if ((localObject == null) || (((Activity)localObject).getWindow() == null))
    {
      i2 = i4;
      i1 = i3;
      label77:
      if ((u == i3) && (t == i4) && (v == i1) && (w == i2)) {
        break label224;
      }
      if ((u == i3) && (t == i4)) {
        break label226;
      }
    }
    label224:
    label226:
    for (boolean bool = true;; bool = false)
    {
      u = i3;
      t = i4;
      v = i1;
      w = i2;
      new jr(this).a(i3, i4, i1, i2, density, y.getDefaultDisplay().getRotation());
      return bool;
      localObject = ae.e().a((Activity)localObject);
      i1 = m.a().b(localDisplayMetrics, localObject[0]);
      i2 = m.a().b(localDisplayMetrics, localObject[1]);
      break label77;
      break;
    }
  }
  
  public void setContext(Context paramContext)
  {
    b.setBaseContext(paramContext);
    s.a(b.a());
  }
  
  public void setRequestedOrientation(int paramInt)
  {
    synchronized (c)
    {
      n = paramInt;
      if (g != null) {
        g.a(n);
      }
      return;
    }
  }
  
  public void stopLoading()
  {
    if (n()) {
      return;
    }
    try
    {
      super.stopLoading();
      return;
    }
    catch (Exception localException)
    {
      b.b("Could not stop loading webview.", localException);
    }
  }
  
  Boolean t()
  {
    synchronized (c)
    {
      Boolean localBoolean = m;
      return localBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.qi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */