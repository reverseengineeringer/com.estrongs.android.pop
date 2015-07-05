package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.d.f;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.view.ea;
import com.estrongs.fs.impl.b.c;
import com.estrongs.fs.impl.b.g;
import com.estrongs.fs.impl.local.l;
import com.estrongs.fs.util.j;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.text.DateFormat;
import java.util.HashMap;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class t
  extends ea
{
  private HashMap<Integer, View> b = new HashMap();
  private Button c;
  private Handler d = new Handler();
  
  public t(o paramo, ESActivity paramESActivity)
  {
    super(paramESActivity);
    ImageView localImageView = (ImageView)k(2131361829);
    TextView localTextView2 = (TextView)k(2131361830);
    TextView localTextView3 = (TextView)k(2131361834);
    TextView localTextView4 = (TextView)k(2131361835);
    TextView localTextView5 = (TextView)k(2131361840);
    TextView localTextView1 = (TextView)k(2131361842);
    if (a.e())
    {
      k(2131361843).setVisibility(0);
      ((TextView)k(2131361844)).setText(ad.getString(2131427609) + ":");
      paramESActivity = ad.a(paramESActivity).E().format(Long.valueOf(a.lastModified()));
      ((TextView)k(2131361845)).setText(paramESActivity);
      paramESActivity = (TextView)k(2131361846);
      String str = a.f().g();
      if ((str != null) && (!"".equals(str)) && (!"NULL".equals(str)))
      {
        paramESActivity.setVisibility(0);
        paramESActivity.setText(str.replaceAll("<br>", "\n"));
      }
      localTextView3.setText(l(2131428661) + ":");
      k(2131361836).setVisibility(0);
      ((TextView)k(2131361837)).setText(l(2131428509) + ":");
      ((TextView)k(2131361838)).setText(a.f().c());
    }
    localImageView.setImageDrawable(f.e(a));
    localTextView2.setText(a.getName());
    localTextView4.setText(a.b());
    localTextView5.setText(j.c(a.length()));
    paramESActivity = a.c().packageName;
    localTextView1.setText(paramESActivity);
    c = ((Button)k(2131361847));
    c.setVisibility(0);
    c.setOnClickListener(new u(this, paramo, paramESActivity));
  }
  
  private void a(String paramString)
  {
    boolean bool2 = true;
    boolean bool3 = l.b(true);
    boolean bool1;
    Object localObject;
    int i;
    if ((Build.VERSION.SDK_INT >= 15) && (l.b() == 1))
    {
      bool1 = true;
      localObject = System.getProperty("java.vm.version");
      if ((localObject == null) || (!((String)localObject).startsWith("2"))) {
        break label118;
      }
      i = 1;
      label50:
      if (i != 0) {
        break label123;
      }
      i = 1;
      label56:
      bool3 = bool3 & bool1 & i;
      localObject = ad.getPackageManager();
    }
    for (;;)
    {
      try
      {
        localObject = ((PackageManager)localObject).getPackageInfo("com.estrongs.android.permmgrservice", 0);
        if (localObject == null) {
          continue;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        label118:
        label123:
        localNameNotFoundException.printStackTrace();
        bool2 = false;
        continue;
        if (!bool3) {
          continue;
        }
        b();
        return;
        new gk(ad, paramString, bool3, bool2).a();
      }
      if (!bool2) {
        continue;
      }
      new gk(ad, paramString, bool3, bool2).a();
      return;
      bool1 = false;
      break;
      i = 0;
      break label50;
      i = 0;
      break label56;
      bool2 = false;
    }
  }
  
  private void b()
  {
    new ct(ad).a(2131427694).b(2131428531).b(2131427359, new v(this)).c(2131427340, null).c();
  }
  
  private void c()
  {
    Object localObject1 = new HttpGet("http://update.estrongs.com/up/?id=100&v=0");
    Object localObject2 = new DefaultHttpClient();
    try
    {
      localObject1 = ((HttpClient)localObject2).execute((HttpUriRequest)localObject1);
      BufferedReader localBufferedReader;
      StringBuilder localStringBuilder;
      if (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 200)
      {
        localObject1 = ((HttpResponse)localObject1).getEntity().getContent();
        localObject2 = new InputStreamReader((InputStream)localObject1);
        localBufferedReader = new BufferedReader((Reader)localObject2);
        localStringBuilder = new StringBuilder();
        for (;;)
        {
          String str2 = localBufferedReader.readLine();
          if (str2 == null) {
            break;
          }
          localStringBuilder.append(str2);
        }
      }
      String str1;
      return;
    }
    catch (ClientProtocolException localClientProtocolException)
    {
      localClientProtocolException.printStackTrace();
      return;
      localBufferedReader.close();
      ((InputStreamReader)localObject2).close();
      localClientProtocolException.close();
      str1 = new JSONArray(new JSONObject(localStringBuilder.toString()).getString("urls")).getJSONObject(0).getString("url");
      d.post(new x(this, str1));
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  protected int a()
  {
    return 2130903044;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */