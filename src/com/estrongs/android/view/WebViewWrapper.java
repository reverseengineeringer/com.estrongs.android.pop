package com.estrongs.android.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
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
import com.estrongs.android.pop.esclasses.g;
import com.estrongs.android.pop.utils.cv;
import com.estrongs.android.pop.utils.cx;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.ag;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;
import com.estrongs.android.util.bf;
import com.estrongs.android.widget.ESViewStub;
import com.estrongs.android.widget.HeaderGridView;
import com.estrongs.fs.h;
import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.client.utils.URLEncodedUtils;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class WebViewWrapper
  extends aw
{
  private static String b = "?fr=ch_es&pa=1&da=1&bb=1&lr=1&vd=1&td=1&ta=1&mgd=0&bi=1&sl=1&dsa=1&tn=1&noad=1";
  private static String c = "fr=ch_es";
  protected VideoEnabledWebView a = null;
  private ProgressBar ai;
  private boolean aj = false;
  private boolean ak = false;
  private dt al = null;
  private String am = null;
  private String an = null;
  private SparseArray<Integer> ao = new SparseArray();
  private SparseArray<String> ap = new SparseArray();
  private ValueCallback<Uri> aq;
  private ValueCallback<Uri[]> ar;
  private WebView d = null;
  
  @SuppressLint({"NewApi"})
  public WebViewWrapper(Activity paramActivity, cb paramcb)
  {
    super(paramActivity, null, paramcb);
    g.setVisibility(8);
    paramcb = (ESViewStub)k(2131362047);
    paramcb.b(2130903082);
    paramcb.a(2131362047);
    paramcb.a(g.a(paramActivity));
    paramcb = paramcb.a();
    ai = ((ProgressBar)paramcb.findViewById(2131362055));
    a = ((VideoEnabledWebView)paramcb.findViewById(2131362056));
    d = new ESWebView(paramActivity);
    ay();
    paramcb = a.getSettings();
    paramcb.setBuiltInZoomControls(false);
    paramcb.setSupportZoom(false);
    paramcb.setJavaScriptEnabled(true);
    paramcb.setDatabaseEnabled(true);
    paramcb.setUseWideViewPort(true);
    if (ac.a() >= 7) {
      paramcb.setLoadWithOverviewMode(true);
    }
    paramcb.setDatabasePath("/data/data/" + paramActivity.getPackageName() + "/databases");
    if (bd.b()) {
      paramcb.setDomStorageEnabled(true);
    }
    a.setScrollBarStyle(33554432);
    a.setWebViewClient(new ec(this));
    al = new ee(this, ad.findViewById(2131362210), (ViewGroup)ad.findViewById(2131362211), ag.inflate(2130903230, null), a);
    a.setWebChromeClient(al);
    a.setDownloadListener(new ef(this));
    a.addJavascriptInterface(new WebViewWrapper.BaiduMusicTitleHanlder(this), "bdmusic");
    a.addJavascriptInterface(new WebViewWrapper.JSVideoDetailHelper(this), "JSVideoDetailHelper");
    a.setOnLongClickListener(new eg(this));
    a.a(new ej(this));
    a.requestFocus();
  }
  
  private String a(String paramString, boolean paramBoolean)
  {
    Object localObject;
    if ((a == null) || (bd.a(a.getUrl()))) {
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
        str = (String)ap.get(i);
        if (paramBoolean) {
          break;
        }
        localObject = str;
      } while (!bd.a(str));
      localObject = str;
    } while (!bd.b(paramString));
    ap.put(i, paramString);
    return paramString;
  }
  
  private boolean a(String paramString)
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
      } while ((!bd.b(str)) || (!str.contains("bad parameter")));
      paramString.printStackTrace();
      ag.a(ad, 2131428239, 0);
      return false;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
    return true;
  }
  
  private void aw()
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
  
  private void ax()
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
  private void ay()
  {
    d.getSettings().setJavaScriptEnabled(true);
    d.getSettings().setDatabaseEnabled(true);
    d.getSettings().setDatabasePath("/data/data/" + ad.getPackageName() + "/databases");
    if (bd.b()) {
      d.getSettings().setDomStorageEnabled(true);
    }
    d.setWebViewClient(new el(this));
  }
  
  private void o(String paramString)
  {
    if (!a(paramString)) {}
    do
    {
      do
      {
        return;
        if ((paramString == null) || (!paramString.contains("baidu.com")) || (paramString.contains("word=" + Uri.encode("天气")))) {
          break;
        }
        Object localObject = cv.a("baidu", "apk");
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
  
  private boolean p(String paramString)
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
    if (bd.a(paramString)) {}
    for (;;)
    {
      return;
      if (w != null) {}
      try
      {
        w.setName(paramString);
        if ((y == null) || (!bd.b(paramString)) || (!(ad instanceof FileExplorerActivity))) {
          continue;
        }
        aw localaw = ((FileExplorerActivity)ad).y();
        if ((localaw == null) || (localaw.hashCode() != hashCode())) {
          continue;
        }
        y.a("http://win-title/" + paramString, true);
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
    if (!am.e(v, paramString))
    {
      w = new ds(paramString);
      v = paramString;
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
      if (bd.b(str3)) {
        localIntent.setData(Uri.parse(str3 + localUri.getAuthority() + "?" + localUri.getQuery()));
      }
      try
      {
        ((FileExplorerActivity)ad).a(localIntent);
        return true;
      }
      catch (Exception paramString)
      {
        for (;;)
        {
          if (bd.b(str2)) {
            try
            {
              localIntent.setData(Uri.parse("market://search?q=" + str2));
              ((FileExplorerActivity)ad).a(localIntent);
            }
            catch (Exception paramString)
            {
              ag.a(ad, 2131427782, 0);
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
      if (bd.b(paramString))
      {
        paramString = new Intent("android.intent.action.DIAL", Uri.parse(paramString));
        try
        {
          ((FileExplorerActivity)ad).a(paramString);
          return true;
          if ((!paramString.startsWith("wtai://wp/mc")) && (!paramString.startsWith("WTAI://WP/MC"))) {
            break label557;
          }
          paramString = paramString.split(";");
          if ((paramString == null) || (paramString.length <= 1) || (!bd.b(paramString[1]))) {
            break label557;
          }
          paramString = "tel:" + paramString[1];
        }
        catch (Exception paramString)
        {
          for (;;)
          {
            ag.a(ad, 2131427782, 0);
          }
        }
      }
      else
      {
        return false;
        label557:
        paramString = null;
      }
    }
  }
  
  private int u(String paramString)
  {
    if (paramString.equalsIgnoreCase("apk")) {
      return 2130837683;
    }
    if (paramString.equalsIgnoreCase("document")) {
      return 2130837686;
    }
    if (paramString.equalsIgnoreCase("image")) {
      return 2130837694;
    }
    if (paramString.equalsIgnoreCase("music")) {
      return 2130837690;
    }
    if (paramString.equalsIgnoreCase("video")) {
      return 2130837703;
    }
    return 2130837682;
  }
  
  public boolean O()
  {
    return !a.canGoBack();
  }
  
  public void a(View.OnTouchListener paramOnTouchListener)
  {
    super.a(paramOnTouchListener);
    a.setOnTouchListener(new em(this, paramOnTouchListener));
  }
  
  public void a(String paramString, TypedMap paramTypedMap)
  {
    v = paramString;
    w = new ds(v);
    b(false);
  }
  
  public void a(String paramString1, String paramString2)
  {
    am = paramString1;
    an = paramString2;
  }
  
  public void a_()
  {
    super.a_();
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
    ao.clear();
  }
  
  public bf[] ak()
  {
    if ((am == null) || (an == null)) {
      return super.ak();
    }
    ArrayList localArrayList = cv.b(am, an);
    if ((localArrayList != null) && (localArrayList.size() != 0))
    {
      bf[] arrayOfbf = new bf[localArrayList.size()];
      int j = u(an);
      int i = 0;
      while (i < localArrayList.size())
      {
        arrayOfbf[i] = new bf();
        f = true;
        a = getd;
        i = geta;
        j = j;
        k = am;
        l = an;
        i += 1;
      }
      return arrayOfbf;
    }
    return super.ak();
  }
  
  public boolean al()
  {
    try
    {
      boolean bool = a.canZoomIn();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return true;
  }
  
  public boolean am()
  {
    try
    {
      boolean bool = a.canZoomOut();
      return bool;
    }
    catch (Throwable localThrowable) {}
    return true;
  }
  
  public boolean an()
  {
    return a.zoomIn();
  }
  
  public boolean ao()
  {
    return a.zoomOut();
  }
  
  public boolean ap()
  {
    return ak;
  }
  
  public boolean as()
  {
    if (al.a())
    {
      al.b();
      return true;
    }
    return false;
  }
  
  public String at()
  {
    String str2 = a(null, false);
    String str1 = str2;
    if (bd.a(str2))
    {
      str1 = str2;
      if (a != null) {
        str1 = a.getUrl();
      }
    }
    return str1;
  }
  
  public boolean au()
  {
    return (aq != null) || (ar != null);
  }
  
  public void b(Intent paramIntent)
  {
    if ((paramIntent == null) || (paramIntent.getData() == null))
    {
      paramIntent = null;
      if (aq == null) {
        break label49;
      }
      aq.onReceiveValue(paramIntent);
    }
    label49:
    while (ar == null)
    {
      aq = null;
      ar = null;
      return;
      paramIntent = paramIntent.getData();
      break;
    }
    if (paramIntent == null) {}
    for (paramIntent = null;; paramIntent = new Uri[] { paramIntent })
    {
      ar.onReceiveValue(paramIntent);
      break;
    }
  }
  
  public void b(boolean paramBoolean)
  {
    ad.runOnUiThread(new ek(this));
  }
  
  public String c()
  {
    return v;
  }
  
  public h f()
  {
    if (al.a())
    {
      al.b();
      return w;
    }
    if (a.canGoBack())
    {
      a.stopLoading();
      a.goBack();
      return w;
    }
    return null;
  }
  
  public void l()
  {
    super.l();
    r(a(null, false));
  }
  
  public boolean o()
  {
    return aj;
  }
  
  public boolean p()
  {
    return a.canGoBack();
  }
  
  public boolean q()
  {
    return a.canGoForward();
  }
  
  public h r()
  {
    if (a.canGoForward())
    {
      a.stopLoading();
      a.goForward();
      return w;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.view.WebViewWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */