package com.estrongs.android.ui.view;

import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESResourceActivity;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.util.ap;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;

public class CreateOAuthServiceProvider
  extends ESResourceActivity
{
  public static int a = 1;
  public static int b = 2;
  public static int d = 3;
  public static int e = 4;
  public static int f = 5;
  private static CreateOAuthServiceProvider g = null;
  private String h = null;
  private boolean i = false;
  private WebView j = null;
  private ab k = new ab(this, null);
  private ProgressBar l = null;
  private TextView m = null;
  private View n = null;
  private String o = null;
  private String p;
  private String q = null;
  private View.OnClickListener r = new y(this);
  private Handler s = new z(this);
  
  private String a(String paramString1, String paramString2)
  {
    String[] arrayOfString2 = paramString1.split("\\?");
    String[] arrayOfString1 = arrayOfString2;
    if (arrayOfString2.length != 2) {
      arrayOfString1 = paramString1.split("#");
    }
    if (arrayOfString1.length == 2)
    {
      paramString1 = arrayOfString1[1].split("&");
      if (paramString1 != null)
      {
        int i1 = 0;
        while (i1 < paramString1.length)
        {
          arrayOfString1 = paramString1[i1].split("=");
          if ((arrayOfString1.length == 2) && (arrayOfString1[0].equals(paramString2))) {
            return arrayOfString1[1];
          }
          i1 += 1;
        }
      }
    }
    return null;
  }
  
  private boolean a(Bundle paramBundle)
  {
    Object localObject1 = paramBundle.getString("token");
    String str = paramBundle.getString("verifier");
    if (localObject1 != null) {
      paramBundle = null;
    }
    try
    {
      if ("1.0a".equals(q)) {
        if (h.equals("Flickr"))
        {
          localObject2 = OAuthUtil.getDataAsMap(URLDecoder.decode(OAuthUtil.sendPost(SPFileSystem.getAccessTokenUrl(h), SPFileSystem.getAccessTokenParameters(h, (String)localObject1, p, str)), "UTF-8"));
          if (((Map)localObject2).isEmpty()) {
            throw new Exception("Empty Response");
          }
        }
      }
    }
    catch (IOException paramBundle)
    {
      Object localObject2;
      paramBundle.printStackTrace();
      for (;;)
      {
        return false;
        localObject1 = (String)((Map)localObject2).get("oauth_token");
        str = (String)((Map)localObject2).get("oauth_token_secret");
        paramBundle = (String)((Map)localObject2).get("username");
        localObject2 = (String)((Map)localObject2).get("user_nsid");
        SPFileSystem.saveUsernameAndToken(h, (String)localObject2, paramBundle, (String)localObject1, str);
        while (paramBundle != null)
        {
          str = ap.b(h, paramBundle, "fake", "/");
          if (!i) {
            break label250;
          }
          localObject1 = new Bundle();
          ((Bundle)localObject1).putString("path", str);
          ((Bundle)localObject1).putString("display", paramBundle);
          paramBundle = new Intent();
          paramBundle.putExtras((Bundle)localObject1);
          setResult(-1, paramBundle);
          break label270;
          paramBundle = SPFileSystem.getUserLoginName(h, (String)localObject1);
        }
      }
      ad.a(this).a(str, paramBundle);
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        label250:
        paramBundle.printStackTrace();
      }
    }
    label270:
    return true;
  }
  
  private boolean c()
  {
    Object localObject = (ConnectivityManager)getSystemService("connectivity");
    if (localObject == null) {
      return false;
    }
    localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
    if (localObject == null) {}
    for (boolean bool = false;; bool = ((NetworkInfo)localObject).isConnected()) {
      return bool;
    }
  }
  
  public void a()
  {
    Message localMessage = s.obtainMessage(d);
    s.sendMessage(localMessage);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    super.setContentView(2130903352);
    j = ((WebView)findViewById(2131625280));
    j.getSettings().setJavaScriptEnabled(true);
    j.setWebViewClient(k);
    Object localObject = j.getSettings();
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setSaveFormData(false);
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
    paramBundle = CookieManager.getInstance();
    ((WebSettings)localObject).setDefaultTextEncodingName("utf-8");
    m = ((TextView)findViewById(2131625282));
    l = ((ProgressBar)findViewById(2131625281));
    n = findViewById(2131625279);
    localObject = getIntent().getExtras();
    if (localObject == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    h = ((Bundle)localObject).getString("nettype");
    i = ((Bundle)localObject).getBoolean("editServer", false);
    new x(this).start();
    paramBundle.removeAllCookie();
    g = this;
  }
  
  protected void onDestroy()
  {
    g = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.CreateOAuthServiceProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */