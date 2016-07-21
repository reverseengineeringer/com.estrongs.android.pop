package com.duapps.ad.base;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URI;
import java.net.URL;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;
import org.json.JSONObject;

public final class aj
{
  private static final Header a = new BasicHeader("Content-Encoding", "gzip");
  private static final Header b = new BasicHeader("Accept-Encoding", "gzip");
  private static aj c = new aj();
  private static DefaultHttpClient d;
  
  private static int a(URL paramURL, List<Header> paramList, ak paramak, int paramInt)
  {
    if (paramInt > 2) {
      throw new IOException("Too much recursion:2");
    }
    paramURL = a(paramURL, paramList, true);
    try
    {
      paramInt = paramURL.getStatusLine().getStatusCode();
      if ((paramInt != 200) && (paramInt != 304)) {
        return paramInt;
      }
      int i = paramInt;
      if (paramInt == 200)
      {
        paramList = c(paramURL);
        JSONObject localJSONObject = paramList.getJSONObject("responseHeader");
        b = localJSONObject;
        i = localJSONObject.getInt("status");
        if (i == 200)
        {
          a = paramList.getJSONObject("response");
          c = b(paramURL);
        }
      }
      else
      {
        return i;
      }
      return i;
    }
    finally
    {
      a(paramURL);
    }
  }
  
  public static String a(Date paramDate)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return localSimpleDateFormat.format(paramDate);
  }
  
  public static Date a(String paramString)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return localSimpleDateFormat.parse(paramString);
  }
  
  private static Header a(long paramLong)
  {
    return new BasicHeader("If-Modified-Since", a(new Date(paramLong)));
  }
  
  public static HttpResponse a(URI paramURI, String paramString, List<Header> paramList)
  {
    paramURI = new HttpPost(paramURI.toString());
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramURI.addHeader((Header)paramList.next());
      }
    }
    paramURI.addHeader(a);
    paramURI.addHeader(b);
    paramURI.setEntity(new ByteArrayEntity(ap.b(paramString)));
    if (l.a()) {
      l.c("ToolboxRequestHelper", "request uri:" + paramURI.getURI() + ",body:" + paramString + ",headers:" + Arrays.asList(paramURI.getAllHeaders()));
    }
    paramURI.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
    paramString = a();
    try
    {
      paramString = paramString.execute(paramURI);
      return paramString;
    }
    catch (IOException paramString)
    {
      paramURI.abort();
      throw paramString;
    }
  }
  
  public static HttpResponse a(URL paramURL, List<Header> paramList, boolean paramBoolean)
  {
    paramURL = new HttpGet(paramURL.toString());
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramURL.addHeader((Header)paramList.next());
      }
    }
    if (paramBoolean) {
      paramURL.addHeader(b);
    }
    if (l.a()) {
      l.c("ToolboxRequestHelper", "request uri: " + paramURL.getURI() + ", headers: " + Arrays.asList(paramURL.getAllHeaders()));
    }
    paramURL.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
    paramList = a();
    try
    {
      paramList = paramList.execute(paramURL);
      return paramList;
    }
    catch (IOException paramList)
    {
      paramURL.abort();
      throw paramList;
    }
  }
  
  /* Error */
  public static DefaultHttpClient a()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   6: ifnull +12 -> 18
    //   9: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: new 276	org/apache/http/conn/scheme/SchemeRegistry
    //   21: dup
    //   22: invokespecial 277	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   25: astore_0
    //   26: aload_0
    //   27: new 279	org/apache/http/conn/scheme/Scheme
    //   30: dup
    //   31: ldc_w 281
    //   34: invokestatic 287	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   37: bipush 80
    //   39: invokespecial 290	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   42: invokevirtual 294	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   45: pop
    //   46: aload_0
    //   47: new 279	org/apache/http/conn/scheme/Scheme
    //   50: dup
    //   51: ldc_w 296
    //   54: invokestatic 301	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   57: sipush 443
    //   60: invokespecial 290	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   63: invokevirtual 294	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   66: pop
    //   67: new 303	org/apache/http/params/BasicHttpParams
    //   70: dup
    //   71: invokespecial 304	org/apache/http/params/BasicHttpParams:<init>	()V
    //   74: astore_1
    //   75: new 248	org/apache/http/impl/client/DefaultHttpClient
    //   78: dup
    //   79: new 306	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   82: dup
    //   83: aload_1
    //   84: aload_0
    //   85: invokespecial 309	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   88: aload_1
    //   89: invokespecial 312	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   92: putstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   95: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   98: invokevirtual 313	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   101: sipush 30000
    //   104: invokestatic 319	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   107: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   110: invokevirtual 313	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   113: sipush 30000
    //   116: invokestatic 322	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   119: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   122: invokevirtual 313	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   125: ldc_w 324
    //   128: bipush 10
    //   130: invokeinterface 328 3 0
    //   135: pop
    //   136: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   139: invokevirtual 313	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   142: ldc_w 330
    //   145: invokestatic 336	org/apache/http/client/params/HttpClientParams:setCookiePolicy	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   148: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   151: invokevirtual 313	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   154: ldc_w 338
    //   157: invokestatic 343	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   160: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   163: new 345	org/apache/http/impl/client/DefaultHttpRequestRetryHandler
    //   166: dup
    //   167: iconst_3
    //   168: iconst_1
    //   169: invokespecial 348	org/apache/http/impl/client/DefaultHttpRequestRetryHandler:<init>	(IZ)V
    //   172: invokevirtual 352	org/apache/http/impl/client/DefaultHttpClient:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   175: getstatic 274	com/duapps/ad/base/aj:d	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   178: astore_0
    //   179: goto -166 -> 13
    //   182: astore_0
    //   183: ldc 2
    //   185: monitorexit
    //   186: aload_0
    //   187: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	167	0	localObject1	Object
    //   182	5	0	localObject2	Object
    //   74	15	1	localBasicHttpParams	org.apache.http.params.BasicHttpParams
    // Exception table:
    //   from	to	target	type
    //   3	13	182	finally
    //   18	179	182	finally
  }
  
  public static void a(URL paramURL, al paramal, long paramLong)
  {
    try
    {
      ak localak = new ak();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(a(paramLong));
      int i = a(paramURL, localArrayList, localak, 1);
      if ((200 == i) || (304 == i))
      {
        paramal.a(i, localak);
        return;
      }
      paramal.a(i, localak.a());
      return;
    }
    catch (Exception paramURL)
    {
      paramal.a(paramURL, null);
      l.a("ToolboxRequestHelper", "failed to get project", paramURL);
    }
  }
  
  public static void a(HttpResponse paramHttpResponse)
  {
    if ((paramHttpResponse == null) || (paramHttpResponse.getEntity() == null)) {
      return;
    }
    try
    {
      paramHttpResponse.getEntity().consumeContent();
      return;
    }
    catch (Exception paramHttpResponse)
    {
      l.a("ToolboxRequestHelper", "failed to cosume entity", paramHttpResponse);
    }
  }
  
  private static long b(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getFirstHeader("Last-Modified");
    if (paramHttpResponse != null) {
      return a(paramHttpResponse.getValue()).getTime();
    }
    return 0L;
  }
  
  private static JSONObject c(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity();
    paramHttpResponse = ((HttpEntity)localObject).getContent();
    int j = (int)((HttpEntity)localObject).getContentLength();
    int i = j;
    if (j < 0) {
      i = 1024;
    }
    localObject = ((HttpEntity)localObject).getContentEncoding();
    if ((localObject != null) && (((Header)localObject).getValue().indexOf("gzip") != -1)) {
      paramHttpResponse = new GZIPInputStream(paramHttpResponse);
    }
    for (;;)
    {
      paramHttpResponse = new InputStreamReader(paramHttpResponse, "UTF-8");
      localObject = new CharArrayBuffer(i);
      char[] arrayOfChar = new char['Ѐ'];
      for (;;)
      {
        i = paramHttpResponse.read(arrayOfChar);
        if (i == -1) {
          break;
        }
        ((CharArrayBuffer)localObject).append(arrayOfChar, 0, i);
      }
      ap.a(paramHttpResponse);
      return new JSONObject(((CharArrayBuffer)localObject).toString());
    }
  }
}

/* Location:
 * Qualified Name:     com.duapps.ad.base.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */