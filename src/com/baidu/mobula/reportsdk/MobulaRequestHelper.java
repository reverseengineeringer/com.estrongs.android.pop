package com.baidu.mobula.reportsdk;

import java.io.IOException;
import java.net.URI;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;

public final class MobulaRequestHelper
{
  private static final Header HEADER_ACCEPT_GZIP = new BasicHeader("Accept-Encoding", "gzip");
  private static final Header HEADER_CONTENT_GZIP = new BasicHeader("Content-Encoding", "gzip");
  static final String LOG_TAG = "MobulaReport";
  private static final int SOCKET_TIME_OUT = 20000;
  private static DefaultHttpClient client;
  
  public static void consumEntity(HttpResponse paramHttpResponse)
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
      LogHelper.d("MobulaReport", "failed to cosume entity", paramHttpResponse);
    }
  }
  
  public static HttpResponse executePostRequest(URI paramURI, String paramString, List<Header> paramList)
  {
    paramURI = new HttpPost(paramURI.toString());
    if (paramList != null) {
      paramList = paramList.iterator();
    }
    for (;;)
    {
      if (!paramList.hasNext())
      {
        paramURI.addHeader(HEADER_CONTENT_GZIP);
        paramURI.addHeader(HEADER_ACCEPT_GZIP);
        paramURI.setEntity(new ByteArrayEntity(MobulaUtils.zip(paramString)));
        if (LogHelper.isLogEnabled()) {
          LogHelper.d("MobulaReport", "request uri:" + paramURI.getURI() + ",body:" + paramString + ",headers:" + Arrays.asList(paramURI.getAllHeaders()));
        }
        paramURI.getParams().setParameter("http.socket.timeout", Integer.valueOf(20000));
        paramString = getThreadSafeClient();
      }
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
      paramURI.addHeader((Header)paramList.next());
    }
  }
  
  /* Error */
  public static DefaultHttpClient getThreadSafeClient()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   6: ifnull +12 -> 18
    //   9: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: new 185	org/apache/http/conn/scheme/SchemeRegistry
    //   21: dup
    //   22: invokespecial 186	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   25: astore_0
    //   26: aload_0
    //   27: new 188	org/apache/http/conn/scheme/Scheme
    //   30: dup
    //   31: ldc -66
    //   33: invokestatic 196	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   36: bipush 80
    //   38: invokespecial 199	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   41: invokevirtual 203	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   44: pop
    //   45: aload_0
    //   46: new 188	org/apache/http/conn/scheme/Scheme
    //   49: dup
    //   50: ldc -51
    //   52: invokestatic 210	org/apache/http/conn/ssl/SSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   55: sipush 443
    //   58: invokespecial 199	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   61: invokevirtual 203	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   64: pop
    //   65: new 212	org/apache/http/params/BasicHttpParams
    //   68: dup
    //   69: invokespecial 213	org/apache/http/params/BasicHttpParams:<init>	()V
    //   72: astore_1
    //   73: new 166	org/apache/http/impl/client/DefaultHttpClient
    //   76: dup
    //   77: new 215	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   80: dup
    //   81: aload_1
    //   82: aload_0
    //   83: invokespecial 218	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   86: aload_1
    //   87: invokespecial 221	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   90: putstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   93: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   96: invokevirtual 222	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   99: sipush 30000
    //   102: invokestatic 228	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   105: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   108: invokevirtual 222	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   111: sipush 30000
    //   114: invokestatic 231	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   117: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   120: invokevirtual 222	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   123: ldc -23
    //   125: bipush 10
    //   127: invokeinterface 237 3 0
    //   132: pop
    //   133: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   136: invokevirtual 222	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   139: ldc -17
    //   141: invokestatic 245	org/apache/http/client/params/HttpClientParams:setCookiePolicy	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   144: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   147: invokevirtual 222	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   150: ldc -9
    //   152: invokestatic 252	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   155: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   158: new 254	org/apache/http/impl/client/DefaultHttpRequestRetryHandler
    //   161: dup
    //   162: iconst_3
    //   163: iconst_1
    //   164: invokespecial 257	org/apache/http/impl/client/DefaultHttpRequestRetryHandler:<init>	(IZ)V
    //   167: invokevirtual 261	org/apache/http/impl/client/DefaultHttpClient:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   170: getstatic 183	com/baidu/mobula/reportsdk/MobulaRequestHelper:client	Lorg/apache/http/impl/client/DefaultHttpClient;
    //   173: astore_0
    //   174: goto -161 -> 13
    //   177: astore_0
    //   178: ldc 2
    //   180: monitorexit
    //   181: aload_0
    //   182: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   12	162	0	localObject1	Object
    //   177	5	0	localObject2	Object
    //   72	15	1	localBasicHttpParams	org.apache.http.params.BasicHttpParams
    // Exception table:
    //   from	to	target	type
    //   3	13	177	finally
    //   18	174	177	finally
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobula.reportsdk.MobulaRequestHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */