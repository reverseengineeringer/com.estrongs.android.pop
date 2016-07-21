package com.estrongs.android.ui.dialog;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.h.a.e;
import com.estrongs.android.pop.ad;
import com.estrongs.android.view.gf;
import com.estrongs.fs.impl.b.d;
import com.estrongs.fs.impl.b.h;
import com.estrongs.fs.impl.local.m;
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

class u
  extends gf
{
  private HashMap<Integer, View> b = new HashMap();
  private Button c;
  private Handler d = new Handler();
  
  public u(o paramo, Activity paramActivity)
  {
    super(paramActivity);
    ImageView localImageView = (ImageView)b(2131624328);
    TextView localTextView2 = (TextView)b(2131624329);
    TextView localTextView3 = (TextView)b(2131624333);
    TextView localTextView4 = (TextView)b(2131624334);
    TextView localTextView5 = (TextView)b(2131624339);
    TextView localTextView1 = (TextView)b(2131624341);
    if (a.j())
    {
      b(2131624342).setVisibility(0);
      ((TextView)b(2131624343)).setText(ag.getString(2131232248) + ":");
      paramActivity = ad.a(paramActivity).F().format(Long.valueOf(a.lastModified()));
      ((TextView)b(2131624344)).setText(paramActivity);
      paramActivity = (TextView)b(2131624345);
      String str = a.k().g();
      if ((str != null) && (!"".equals(str)) && (!"NULL".equals(str)))
      {
        paramActivity.setVisibility(0);
        paramActivity.setText(str.replaceAll("<br>", "\n"));
      }
      localTextView3.setText(j(2131231297) + ":");
      b(2131624335).setVisibility(0);
      ((TextView)b(2131624336)).setText(j(2131231841) + ":");
      ((TextView)b(2131624337)).setText(a.k().c());
    }
    e.a(a.getAbsolutePath(), localImageView, a);
    localTextView2.setText(a.getName());
    localTextView4.setText(a.g());
    localTextView5.setText(j.c(a.length()));
    paramActivity = a.h().packageName;
    localTextView1.setText(paramActivity);
    c = ((Button)b(2131624346));
    c.setVisibility(0);
    c.setOnClickListener(new v(this, paramo, paramActivity));
    paramActivity = (Button)b(2131624347);
    paramActivity.setVisibility(0);
    paramActivity.setOnClickListener(new w(this, paramo));
  }
  
  private void a(d paramd, Context paramContext)
  {
    paramContext.startActivity(new Intent("android.intent.action.DELETE", Uri.parse("package:" + paramd.m())));
  }
  
  private void a(String paramString)
  {
    boolean bool2 = true;
    boolean bool3 = m.b(true);
    boolean bool1;
    Object localObject;
    int i;
    if ((Build.VERSION.SDK_INT >= 15) && (m.b() == 1))
    {
      bool1 = true;
      localObject = System.getProperty("java.vm.version");
      if ((localObject == null) || (!((String)localObject).startsWith("2"))) {
        break label121;
      }
      i = 1;
      label52:
      if (i != 0) {
        break label126;
      }
      i = 1;
      label58:
      bool3 = bool3 & bool1 & i;
      localObject = ag.getPackageManager();
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
        label121:
        label126:
        localNameNotFoundException.printStackTrace();
        bool2 = false;
        continue;
        if (!bool3) {
          continue;
        }
        b();
        return;
        new gn(ag, paramString, bool3, bool2).a();
      }
      if (!bool2) {
        continue;
      }
      new gn(ag, paramString, bool3, bool2).a();
      return;
      bool1 = false;
      break;
      i = 0;
      break label52;
      i = 0;
      break label58;
      bool2 = false;
    }
  }
  
  private void b()
  {
    new cv(ag).a(2131232202).b(2131231722).b(2131230847, new x(this)).c(2131231265, null).c();
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
      d.post(new z(this, str1));
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
    return 2130903106;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.dialog.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */