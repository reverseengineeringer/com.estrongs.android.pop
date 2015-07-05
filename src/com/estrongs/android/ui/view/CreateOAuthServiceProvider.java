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
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.SPFileSystem;
import com.estrongs.android.util.am;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.Map;

public class CreateOAuthServiceProvider
  extends ESActivity
{
  public static int a = 1;
  public static int b = 2;
  public static int c = 3;
  public static int d = 4;
  public static int e = 5;
  private static CreateOAuthServiceProvider f = null;
  private String g = null;
  private boolean h = false;
  private WebView i = null;
  private ab j = new ab(this, null);
  private ProgressBar k = null;
  private TextView l = null;
  private View m = null;
  private String n = null;
  private String o;
  private String p = null;
  private View.OnClickListener q = new y(this);
  private Handler r = new z(this);
  
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
      if ("1.0a".equals(p)) {
        if (g.equals("Flickr"))
        {
          localObject2 = OAuthUtil.getDataAsMap(URLDecoder.decode(OAuthUtil.sendPost(SPFileSystem.getAccessTokenUrl(g), SPFileSystem.getAccessTokenParameters(g, (String)localObject1, o, str)), "UTF-8"));
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
        SPFileSystem.saveUsernameAndToken(g, (String)localObject2, paramBundle, (String)localObject1, str);
        while (paramBundle != null)
        {
          str = am.b(g, paramBundle, "fake", "/");
          if (!h) {
            break label250;
          }
          localObject1 = new Bundle();
          ((Bundle)localObject1).putString("path", str);
          ((Bundle)localObject1).putString("display", paramBundle);
          paramBundle = new Intent();
          paramBundle.putExtras((Bundle)localObject1);
          setResult(-1, paramBundle);
          break label270;
          paramBundle = SPFileSystem.getUserLoginName(g, (String)localObject1);
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
    Message localMessage = r.obtainMessage(c);
    r.sendMessage(localMessage);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    super.setContentView(2130903201);
    i = ((WebView)findViewById(2131362543));
    i.getSettings().setJavaScriptEnabled(true);
    i.setWebViewClient(j);
    Object localObject = i.getSettings();
    ((WebSettings)localObject).setSavePassword(false);
    ((WebSettings)localObject).setSaveFormData(false);
    CookieSyncManager.createInstance(this);
    CookieSyncManager.getInstance().startSync();
    paramBundle = CookieManager.getInstance();
    ((WebSettings)localObject).setDefaultTextEncodingName("utf-8");
    l = ((TextView)findViewById(2131362545));
    k = ((ProgressBar)findViewById(2131362544));
    m = findViewById(2131362542);
    localObject = getIntent().getExtras();
    if (localObject == null)
    {
      setResult(0, null);
      finish();
      return;
    }
    g = ((Bundle)localObject).getString("nettype");
    h = ((Bundle)localObject).getBoolean("editServer", false);
    new x(this).start();
    paramBundle.removeAllCookie();
    f = this;
  }
  
  protected void onDestroy()
  {
    f = null;
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.CreateOAuthServiceProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */