package com.facebook.ads.internal.util;

import android.os.AsyncTask;
import android.util.Log;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.message.BasicNameValuePair;

public class o
  extends AsyncTask<String, Void, Void>
{
  private static final String a = o.class.getSimpleName();
  private static final Set<String> b = new HashSet();
  private Map<String, String> c;
  private Map<String, String> d;
  
  static
  {
    b.add("#");
    b.add("null");
  }
  
  public o()
  {
    this(null, null);
  }
  
  public o(Map<String, String> paramMap)
  {
    this(paramMap, null);
  }
  
  public o(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    c = paramMap1;
    d = paramMap2;
  }
  
  private String a(String paramString1, String paramString2, String paramString3)
  {
    if ((s.a(paramString1)) || (s.a(paramString2)) || (s.a(paramString3))) {
      return paramString1;
    }
    if (paramString1.contains("?")) {}
    for (String str = "&";; str = "?") {
      return paramString1 + str + paramString2 + "=" + URLEncoder.encode(paramString3);
    }
  }
  
  private boolean a(String paramString)
  {
    boolean bool = true;
    HttpClient localHttpClient = g.b();
    HttpPost localHttpPost;
    try
    {
      if ((d == null) || (d.size() == 0))
      {
        if (localHttpClient.execute(new HttpGet(paramString)).getStatusLine().getStatusCode() != 200) {
          break label235;
        }
        bool = true;
        break label233;
      }
      localHttpPost = new HttpPost(paramString);
      ArrayList localArrayList = new ArrayList(1);
      Iterator localIterator = d.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        localArrayList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
      }
      localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList));
    }
    catch (Exception localException)
    {
      Log.e(a, "Error opening url: " + paramString, localException);
      return false;
    }
    int i = localException.execute(localHttpPost).getStatusLine().getStatusCode();
    if (i != 200) {
      return false;
    }
    for (;;)
    {
      label233:
      return bool;
      label235:
      bool = false;
    }
  }
  
  private String b(String paramString)
  {
    try
    {
      String str = a(paramString, "analog", g.a(a.a()));
      return str;
    }
    catch (Exception localException) {}
    return paramString;
  }
  
  protected Void a(String... paramVarArgs)
  {
    paramVarArgs = paramVarArgs[0];
    if ((s.a(paramVarArgs)) || (b.contains(paramVarArgs))) {}
    for (;;)
    {
      return null;
      paramVarArgs = b(paramVarArgs);
      Object localObject = paramVarArgs;
      if (c != null)
      {
        localObject = paramVarArgs;
        if (!c.isEmpty())
        {
          localObject = c.entrySet().iterator();
          while (((Iterator)localObject).hasNext())
          {
            Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
            paramVarArgs = a(paramVarArgs, (String)localEntry.getKey(), (String)localEntry.getValue());
          }
          localObject = paramVarArgs;
        }
      }
      int i = 1;
      while ((i <= 2) && (!a((String)localObject))) {
        i += 1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.util.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */