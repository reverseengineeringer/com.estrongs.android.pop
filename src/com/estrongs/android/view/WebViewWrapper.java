package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.support.v7.widget.RecyclerView;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.estrongs.android.pop.ac;
import com.estrongs.android.pop.esclasses.ESWebView;
import com.estrongs.android.pop.esclasses.k;
import com.estrongs.android.pop.utils.de;
import com.estrongs.android.pop.utils.dg;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ak;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;
import com.estrongs.android.util.bn;
import com.estrongs.android.widget.ESViewStub;
import com.estrongs.fs.h;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.client.utils.URLEncodedUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class WebViewWrapper
  extends cr
{
  private static String b = "?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1";
  private static String c = "fr=ch_es";
  protected VideoEnabledWebView a = null;
  private boolean al = false;
  private boolean am = false;
  private fy an = null;
  private String ao = null;
  private String ap = null;
  private SparseArray<Integer> aq = new SparseArray();
  private SparseArray<String> ar = new SparseArray();
  private ValueCallback<Uri> as;
  private ValueCallback<Uri[]> at;
  private WebView d = null;
  private ProgressBar e;
  
  @SuppressLint({"NewApi"})
  public WebViewWrapper(Activity paramActivity, dw paramdw)
  {
    super(paramActivity, null, paramdw);
    h.setVisibility(8);
    paramdw = (ESViewStub)b(2131624591);
    paramdw.setLayoutResource(2130903157);
    paramdw.setInflatedId(2131624591);
    paramdw.setLayoutInflater(k.a(paramActivity));
    paramdw = paramdw.a();
    e = ((ProgressBar)paramdw.findViewById(2131624600));
    a = ((VideoEnabledWebView)paramdw.findViewById(2131624601));
    d = new ESWebView(paramActivity);
    aH();
    paramdw = a.getSettings();
    paramdw.setBuiltInZoomControls(false);
    paramdw.setSupportZoom(false);
    paramdw.setJavaScriptEnabled(true);
    paramdw.setDatabaseEnabled(true);
    paramdw.setUseWideViewPort(true);
    if (ac.a() >= 7) {
      paramdw.setLoadWithOverviewMode(true);
    }
    paramdw.setDatabasePath("/data/data/" + paramActivity.getPackageName() + "/databases");
    if (bk.b()) {
      paramdw.setDomStorageEnabled(true);
    }
    a.setScrollBarStyle(33554432);
    a.setWebViewClient(new gh(this));
    an = new gj(this, ag.findViewById(2131624800), (ViewGroup)ag.findViewById(2131624801), aj.inflate(2130903394, null), a);
    a.setWebChromeClient(an);
    a.setDownloadListener(new gk(this));
    a.addJavascriptInterface(new WebViewWrapper.BaiduMusicTitleHanlder(this), "bdmusic");
    a.addJavascriptInterface(new WebViewWrapper.JSVideoDetailHelper(this), "JSVideoDetailHelper");
    a.setOnLongClickListener(new gl(this));
    a.setOnWebViewScrollListener(new go(this));
    a.requestFocus();
  }
  
  private void E()
  {
    String str = "javascript:" + "_jsget_html5_video = document.getElementsByTagName('video')[0];";
    str = str + "if (_jsget_html5_video !== undefined) {";
    str = str + "JSVideoDetailHelper.setVideoSource(_jsget_html5_video.currentSrc);";
    str = str + "} else {";
    str = str + "JSVideoDetailHelper.setVideoSource('');";
    str = str + "}";
    if (a != null) {
      a.loadUrl(str);
    }
  }
  
  private String a(String paramString, boolean paramBoolean)
  {
    Object localObject;
    if ((a == null) || (bk.a(a.getUrl()))) {
      localObject = null;
    }
    int i;
    do
    {
      String str;
      do
      {
        return (String)localObject;
        i = a.getUrl().hashCode();
        str = (String)ar.get(i);
        if (paramBoolean) {
          break;
        }
        localObject = str;
      } while (!bk.a(str));
      localObject = str;
    } while (!bk.b(paramString));
    ar.put(i, paramString);
    return paramString;
  }
  
  private void aG()
  {
    for (;;)
    {
      try
      {
        str = a.getOriginalUrl();
        if ((str != null) && ("m.baidu.com".equals(Uri.parse(str).getHost())))
        {
          str = "javascript:" + " var MAX_TIMES = 3 * 60 * 1000;";
          str = str + " var internalTime = 0;";
          str = str + " var checkAndRemove;";
          str = str + " var removeId = setTimeout(checkAndRemove=function() { ";
          str = str + " if (internalTime > MAX_TIMES) {  clearTimeout(removeId);  console.log('ADS-RM: MAX_TIMES, clearTimeout: ' + removeId + ', No more checking!'); return;}";
          str = str + " page = document.getElementById('page');";
          str = str + " if (page !== undefined && page != null) {";
          str = str + " var c= page.childNodes;";
          str = str + " for (i=0; i<c.length; i++) {";
          str = str + " if(c[i].nodeName == 'DIV' && (c[i].id.indexOf('page') == -1 && c[i].id.indexOf('foot') == -1 && c[i].id.indexOf('index') == -1 && c[i].id.indexOf('search') == -1) ) {      page.removeChild(c[i]);     clearTimeout(removeId);     console.log('ADS-RM: ADS is Found, clearTimeout: ' + removeId + ', internalTime: ' + internalTime); \treturn; ";
          str = str + " }";
          str = str + "  }";
          str = str + " }";
          str = str + " if (internalTime == 0) { internalTime = 300;  } else { internalTime = internalTime + internalTime / 2;  }";
          str = str + " removeId = setTimeout(checkAndRemove, internalTime);";
          str = str + " console.log('ADS-RM: setTimeout again: ' + removeId + ', after: ' + internalTime);";
          str = str + "},internalTime);";
          if (a != null) {
            a.loadUrl(str);
          }
        }
      }
      catch (Exception localException2)
      {
        String str;
        continue;
      }
      try
      {
        str = a.getOriginalUrl();
        if ((str != null) && ("music.baidu.com".equals(Uri.parse(str).getHost())))
        {
          str = "javascript:" + " var isTitelRemoved = false;";
          str = str + " var isAdsRemoved = false;";
          str = str + " var MAX_TIMES = 3 * 60 * 1000;";
          str = str + " var internalTime = 0;";
          str = str + " var checkAndRemove;";
          str = str + " var removeId = setTimeout(checkAndRemove=function() { ";
          str = str + " console.log('ADS-RM: BEGIN - removeId: ' + removeId + ',internalTime: ' + internalTime);";
          str = str + " if (internalTime > MAX_TIMES) {  clearTimeout(removeId);  console.log('ADS-RM: MAX_TIMES, clearTimeout: ' + removeId + ', No more checking!'); return;}";
          str = str + " var header = document.getElementById('header');";
          str = str + " if (header !== undefined && header != null) {";
          str = str + " var headerBar = header.querySelector('.bar');";
          str = str + "if (headerBar !== undefined && headerBar != null) {";
          str = str + " headerBar.parentNode.removeChild(headerBar); isTitelRemoved = true; console.log('ADS-RM: Title is Found');";
          str = str + " }";
          str = str + " }";
          str = str + " var mainDiv = document.getElementById('main');";
          str = str + " if (mainDiv !== undefined && mainDiv != null) {";
          str = str + " var adsDivs = mainDiv.querySelectorAll('.slot-da1,.top');";
          str = str + "\tif (adsDivs !== undefined && adsDivs != null && adsDivs.length > 0) {";
          str = str + " for (i = 0; i< adsDivs.length; i++) {";
          str = str + " adsDivs[i].parentNode.removeChild(adsDivs[i]); console.log('ADS-RM: Ads is Found by ' + adsDivs[i].className);";
          str = str + " }";
          str = str + " isAdsRemoved = true;";
          str = str + " }";
          str = str + " }";
          str = str + " if (isTitelRemoved == true && isAdsRemoved == true) {\t\tclearTimeout(removeId); \tconsole.log('ADS-RM: END - Title and Ads are Found, clearTimeout and return: ' + removeId + ', internalTime: ' + internalTime); \treturn; }";
          str = str + " if (internalTime == 0) { internalTime = 300;  } else { internalTime = internalTime + internalTime / 2;  }";
          str = str + " removeId = setTimeout(checkAndRemove, internalTime);";
          str = str + " console.log('ADS-RM: setTimeout again: ' + removeId + ', after: ' + internalTime);";
          str = str + "},internalTime);";
          if (a != null) {
            a.loadUrl(str);
          }
        }
        return;
      }
      catch (Exception localException1) {}
    }
  }
  
  @SuppressLint({"NewApi"})
  private void aH()
  {
    d.getSettings().setJavaScriptEnabled(true);
    d.getSettings().setDatabaseEnabled(true);
    d.getSettings().setDatabasePath("/data/data/" + ag.getPackageName() + "/databases");
    if (bk.b()) {
      d.getSettings().setDomStorageEnabled(true);
    }
    d.setWebViewClient(new gq(this));
  }
  
  private boolean b(String paramString)
  {
    if ((ac.a() == 16) || (ac.b().toLowerCase().startsWith("vsun"))) {}
    try
    {
      URLEncodedUtils.parse(new URI(paramString), "UTF-8");
      return true;
    }
    catch (IllegalArgumentException paramString)
    {
      String str;
      do
      {
        str = paramString.getMessage();
      } while ((!bk.b(str)) || (!str.contains("bad parameter")));
      paramString.printStackTrace();
      ak.a(ag, 2131232524, 0);
      return false;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return true;
  }
  
  private void c(String paramString)
  {
    if (!b(paramString)) {}
    do
    {
      do
      {
        return;
        if ((paramString == null) || (!paramString.contains("baidu.com")) || (paramString.contains("word=" + Uri.encode("天气")))) {
          break;
        }
        Object localObject = de.a("baidu", "apk");
        if (localObject == null) {
          break;
        }
        localObject = ((ArrayList)localObject).iterator();
        do
        {
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
        } while (!paramString.equals((String)((Iterator)localObject).next()));
      } while (d == null);
      d.loadUrl(paramString);
      return;
    } while (a == null);
    a.loadUrl(paramString);
  }
  
  private boolean d(String paramString)
  {
    return (paramString.contains("music.baidu.com")) && (!paramString.contains(c));
  }
  
  private void q(String paramString)
  {
    JSONParser localJSONParser = new JSONParser();
    try
    {
      r(a(((JSONObject)localJSONParser.parse(paramString)).get("title").toString(), true));
      return;
    }
    catch (Exception paramString) {}
  }
  
  private void r(String paramString)
  {
    if (bk.a(paramString)) {}
    for (;;)
    {
      return;
      if (D != null) {}
      try
      {
        D.setName(paramString);
        if ((F == null) || (!bk.b(paramString)) || (!(ag instanceof FileExplorerActivity))) {
          continue;
        }
        cr localcr = ((FileExplorerActivity)ag).O();
        if ((localcr == null) || (localcr.hashCode() != hashCode())) {
          continue;
        }
        F.a("http://win-title/" + paramString, true);
        return;
      }
      catch (Exception localException)
      {
        for (;;) {}
      }
    }
  }
  
  private void s(String paramString)
  {
    if (!ap.e(C, paramString))
    {
      D = new fx(paramString);
      C = paramString;
    }
  }
  
  private boolean t(String paramString)
  {
    if (paramString == null) {
      return false;
    }
    Uri localUri = Uri.parse(paramString);
    String str1 = localUri.getScheme();
    if ("intent".equalsIgnoreCase(str1))
    {
      Intent localIntent = new Intent();
      Object localObject = localUri.getFragment();
      str1 = "";
      paramString = "";
      String str3 = paramString;
      String str2 = str1;
      if (localObject != null)
      {
        localObject = ((String)localObject).split(";");
        str3 = paramString;
        str2 = str1;
        if (localObject != null)
        {
          int j = localObject.length;
          int i = 0;
          str3 = paramString;
          str2 = str1;
          if (i < j)
          {
            str3 = localObject[i];
            if (str3 == null) {
              str2 = paramString;
            }
            for (;;)
            {
              i += 1;
              paramString = str2;
              break;
              if (str3.contains("scheme=")) {
                paramString = str3.substring("scheme=".length()) + "://";
              }
              if (str3.contains("action=")) {
                localIntent.setAction(str3.substring("action=".length()));
              }
              if (str3.contains("category=")) {
                localIntent.addCategory(str3.substring("category=".length()));
              }
              str2 = paramString;
              if (str3.contains("package="))
              {
                str1 = str3.substring("package=".length());
                str2 = paramString;
              }
            }
          }
        }
      }
      if (bk.b(str3)) {
        localIntent.setData(Uri.parse(str3 + localUri.getAuthority() + "?" + localUri.getQuery()));
      }
      try
      {
        ((FileExplorerActivity)ag).a(localIntent);
        return true;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          if (bk.b(str2)) {
            try
            {
              localIntent.setData(Uri.parse("market://search?q=" + str2));
              ((FileExplorerActivity)ag).a(localIntent);
            }
            catch (Exception paramString)
            {
              ak.a(ag, 2131231030, 0);
            }
          }
        }
      }
    }
    if (("tel".equalsIgnoreCase(str1)) || ("wtai".equalsIgnoreCase(str1))) {
      if (!"tel".equalsIgnoreCase(str1)) {}
    }
    for (;;)
    {
      if (bk.b(paramString))
      {
        paramString = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
        try
        {
          ((FileExplorerActivity)ag).a(paramString);
          return true;
          if ((!paramString.startsWith("wtai://wp/mc")) && (!paramString.startsWith("WTAI://WP/MC"))) {
            break label614;
          }
          paramString = paramString.split(";");
          if ((paramString == null) || (paramString.length <= 1) || (!bk.b(paramString[1]))) {
            break label614;
          }
          paramString = "tel:" + paramString[1];
        }
        catch (Exception paramString)
        {
          for (;;)
          {
            ak.a(ag, 2131231030, 0);
          }
        }
        if ("market".equalsIgnoreCase(str1)) {
          try
          {
            paramString = new Intent("android.intent.action.VIEW");
            paramString.setData(localUri);
            ((FileExplorerActivity)ag).a(paramString);
            return true;
          }
          catch (Exception paramString)
          {
            for (;;)
            {
              ak.a(ag, 2131231030, 0);
            }
          }
        }
      }
      return false;
      label614:
      paramString = null;
    }
  }
  
  private int u(String paramString)
  {
    if (paramString.equalsIgnoreCase("apk")) {
      return 2130837943;
    }
    if (paramString.equalsIgnoreCase("document")) {
      return 2130837946;
    }
    if (paramString.equalsIgnoreCase("image")) {
      return 2130837954;
    }
    if (paramString.equalsIgnoreCase("music")) {
      return 2130837950;
    }
    if (paramString.equalsIgnoreCase("video")) {
      return 2130837963;
    }
    return 2130837942;
  }
  
  public boolean A()
  {
    if (an.a())
    {
      an.b();
      return true;
    }
    return false;
  }
  
  public String B()
  {
    String str2 = a(null, false);
    String str1 = str2;
    if (bk.a(str2))
    {
      str1 = str2;
      if (a != null) {
        str1 = a.getUrl();
      }
    }
    return str1;
  }
  
  public boolean C()
  {
    return (as != null) || (at != null);
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    super.a(paramOnTouchListener);
    a.setOnTouchListener(new gr(this, paramOnTouchListener));
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    C = paramString;
    D = new fx(C);
    b(false);
  }
  
  public void a(String paramString1, String paramString2)
  {
    ao = paramString1;
    ap = paramString2;
  }
  
  public boolean ae()
  {
    return !a.canGoBack();
  }
  
  public bn[] ay()
  {
    if ((ao == null) || (ap == null)) {
      return super.ay();
    }
    ArrayList localArrayList = de.b(ao, ap);
    if ((localArrayList != null) && (localArrayList.size() != 0))
    {
      bn[] arrayOfbn = new bn[localArrayList.size()];
      int j = u(ap);
      int i = 0;
      while (i < localArrayList.size())
      {
        arrayOfbn[i] = new bn();
        f = true;
        a = getd;
        i = geta;
        j = j;
        k = ao;
        l = ap;
        i += 1;
      }
      return arrayOfbn;
    }
    return super.ay();
  }
  
  public void b(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getData() == null))
    {
      paramIntent = null;
      if (as == null) {
        break label49;
      }
      as.onReceiveValue(paramIntent);
    }
    label49:
    while (at == null)
    {
      as = null;
      at = null;
      return;
      paramIntent = paramIntent.getData();
      break;
    }
    if (paramIntent == null) {}
    for (paramIntent = null;; paramIntent = new Uri[] { paramIntent })
    {
      at.onReceiveValue(paramIntent);
      break;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    ag.runOnUiThread(new gp(this));
  }
  
  public String c()
  {
    return C;
  }
  
  public h f()
  {
    if (an.a())
    {
      an.b();
      return D;
    }
    if (a.canGoBack())
    {
      a.stopLoading();
      a.goBack();
      return D;
    }
    return null;
  }
  
  public void i_()
  {
    super.i_();
    if (a != null)
    {
      ViewGroup localViewGroup = (ViewGroup)a.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeAllViews();
      }
      a.stopLoading();
      a.removeAllViews();
      a.clearHistory();
      a.clearCache(true);
      a.destroy();
      a = null;
    }
    if (d != null)
    {
      d.stopLoading();
      d.removeAllViews();
      d.clearHistory();
      d.destroy();
      d = null;
    }
    aq.clear();
  }
  
  public void l()
  {
    super.l();
    r(a(null, false));
  }
  
  public boolean p()
  {
    return al;
  }
  
  public boolean s()
  {
    return a.canGoBack();
  }
  
  public boolean t()
  {
    return a.canGoForward();
  }
  
  public h u()
  {
    if (a.canGoForward())
    {
      a.stopLoading();
      a.goForward();
      return D;
    }
    return null;
  }
  
  public boolean v()
  {
    try
    {
      boolean bool = a.canZoomIn();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return true;
  }
  
  public boolean w()
  {
    try
    {
      boolean bool = a.canZoomOut();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return true;
  }
  
  public boolean x()
  {
    return a.zoomIn();
  }
  
  public boolean y()
  {
    return a.zoomOut();
  }
  
  public boolean z()
  {
    return am;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.WebViewWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */