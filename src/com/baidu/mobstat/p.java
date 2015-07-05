package com.baidu.mobstat;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class p
{
  public static long a = 256L;
  public static String b = " HTTP.UTF_8";
  
  public static o a(String paramString1, String paramString2)
  {
    n.a("Post_URL : " + paramString1);
    localo = new o();
    Object localObject = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout((HttpParams)localObject, 3000);
    HttpConnectionParams.setSoTimeout((HttpParams)localObject, 5000);
    localObject = new DefaultHttpClient((HttpParams)localObject);
    paramString1 = new HttpPost(paramString1);
    try
    {
      StringEntity localStringEntity = new StringEntity("content=" + paramString2, "UTF-8");
      n.a("postdata content : " + paramString2);
      localStringEntity.setContentType("application/x-www-form-urlencoded");
      paramString1.setEntity(localStringEntity);
      paramString1 = ((HttpClient)localObject).execute(paramString1);
      i = (int)paramString1.getEntity().getContentLength();
      n.a("Response_Length : " + i);
      i = paramString1.getStatusLine().getStatusCode();
      n.a("Status : " + i);
      paramString1 = EntityUtils.toString(paramString1.getEntity());
      n.a("Return_Content : " + paramString1);
      switch (i)
      {
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        int i;
        paramString2 = new JSONObject();
        paramString1.printStackTrace();
        try
        {
          paramString2.put("err", paramString1.toString());
          paramString1 = paramString2.toString();
          localo.a(false);
          localo.a(paramString1);
        }
        catch (JSONException paramString1)
        {
          paramString1.printStackTrace();
        }
      }
    }
    n.c("Stauts : " + i + "; RetrunConetent : " + paramString1);
    localo.a(false);
    localo.a(paramString1);
    for (;;)
    {
      n.a("ServerResponse : " + localo.c());
      return localo;
      localo.a(Integer.parseInt(new JSONObject(paramString1).getString("errNum")));
      localo.a(true);
      localo.a(paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */