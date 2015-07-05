package com.dropbox.client2;

import com.dropbox.client2.exception.DropboxException;
import com.dropbox.client2.exception.DropboxIOException;
import com.dropbox.client2.exception.DropboxParseException;
import com.dropbox.client2.exception.DropboxProxyChangeException;
import com.dropbox.client2.exception.DropboxSSLException;
import com.dropbox.client2.session.Session;
import com.dropbox.client2.session.Session.ProxyInfo;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import javax.net.ssl.SSLException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class RESTUtility
{
  private static final DateFormat dateFormat = new SimpleDateFormat("EEE, dd MMM yyyy kk:mm:ss ZZZZZ", Locale.US);
  
  public static String buildURL(String paramString1, int paramInt, String paramString2, String[] paramArrayOfString)
  {
    String str = paramString2;
    if (!paramString2.startsWith("/")) {
      str = "/" + paramString2;
    }
    try
    {
      str = URLEncoder.encode("/" + paramInt + str, "UTF-8").replace("%2F", "/");
      paramString2 = str;
      if (paramArrayOfString != null)
      {
        paramString2 = str;
        if (paramArrayOfString.length > 0) {
          paramString2 = str + "?" + urlencode(paramArrayOfString);
        }
      }
      paramString2 = paramString2.replace("+", "%20").replace("*", "%2A");
      return "https://" + paramString1 + ":443" + paramString2;
    }
    catch (UnsupportedEncodingException paramString1) {}
    return null;
  }
  
  public static HttpResponse execute(Session paramSession, HttpUriRequest paramHttpUriRequest)
  {
    return execute(paramSession, paramHttpUriRequest, -1);
  }
  
  public static HttpResponse execute(Session paramSession, HttpUriRequest paramHttpUriRequest, int paramInt)
  {
    HttpClient localHttpClient = updatedHttpClient(paramSession);
    paramSession.setRequestTimeout(paramHttpUriRequest);
    if (paramInt >= 0) {
      HttpConnectionParams.setSoTimeout(paramHttpUriRequest.getParams(), paramInt);
    }
    boolean bool = isRequestRepeatable(paramHttpUriRequest);
    Object localObject1 = null;
    paramInt = 0;
    for (;;)
    {
      Object localObject2;
      if (paramInt >= 5)
      {
        localObject2 = localObject1;
        label46:
        if (localObject2 != null) {
          break label129;
        }
      }
      try
      {
        throw new DropboxIOException("Apache HTTPClient encountered an error. No response, try again.");
      }
      catch (SSLException paramSession)
      {
        throw new DropboxSSLException(paramSession);
        try
        {
          localObject2 = localHttpClient.execute(paramHttpUriRequest);
          localObject1 = localObject2;
        }
        catch (NullPointerException localNullPointerException)
        {
          for (;;) {}
        }
        localObject2 = localObject1;
        if (localObject1 != null) {
          break label46;
        }
        updateClientProxy(localHttpClient, paramSession);
        if (!bool) {
          throw new DropboxProxyChangeException();
        }
      }
      catch (IOException paramSession)
      {
        throw new DropboxIOException(paramSession);
        paramInt += 1;
        continue;
        paramInt = ((HttpResponse)localObject2).getStatusLine().getStatusCode();
        if ((paramInt != 200) && (paramInt != 206)) {
          parseAsJSON((HttpResponse)localObject2);
        }
        return (HttpResponse)localObject2;
      }
      catch (OutOfMemoryError paramSession)
      {
        label129:
        throw new DropboxException(paramSession);
      }
    }
  }
  
  private static boolean isRequestRepeatable(HttpRequest paramHttpRequest)
  {
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
    {
      paramHttpRequest = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
      if ((paramHttpRequest != null) && (!paramHttpRequest.isRepeatable())) {
        return false;
      }
    }
    return true;
  }
  
  /* Error */
  public static Object parseAsJSON(HttpResponse paramHttpResponse)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aconst_null
    //   4: astore 4
    //   6: aconst_null
    //   7: astore_2
    //   8: aconst_null
    //   9: astore 5
    //   11: aload_2
    //   12: astore_3
    //   13: aload_0
    //   14: invokeinterface 191 1 0
    //   19: astore 7
    //   21: aload 7
    //   23: ifnull +202 -> 225
    //   26: aload_2
    //   27: astore_3
    //   28: new 193	java/io/BufferedReader
    //   31: dup
    //   32: new 195	java/io/InputStreamReader
    //   35: dup
    //   36: aload 7
    //   38: invokeinterface 199 1 0
    //   43: invokespecial 202	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   46: sipush 16384
    //   49: invokespecial 205	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   52: astore_2
    //   53: aload_2
    //   54: astore_3
    //   55: aload_2
    //   56: sipush 16384
    //   59: invokevirtual 209	java/io/BufferedReader:mark	(I)V
    //   62: aload_2
    //   63: astore_3
    //   64: new 211	org/json/simple/parser/JSONParser
    //   67: dup
    //   68: invokespecial 212	org/json/simple/parser/JSONParser:<init>	()V
    //   71: aload_2
    //   72: invokevirtual 216	org/json/simple/parser/JSONParser:parse	(Ljava/io/Reader;)Ljava/lang/Object;
    //   75: astore 4
    //   77: aload 4
    //   79: astore_3
    //   80: aload_2
    //   81: ifnull +7 -> 88
    //   84: aload_2
    //   85: invokevirtual 219	java/io/BufferedReader:close	()V
    //   88: aload_0
    //   89: invokeinterface 161 1 0
    //   94: invokeinterface 167 1 0
    //   99: istore_1
    //   100: iload_1
    //   101: sipush 200
    //   104: if_icmpeq +105 -> 209
    //   107: iload_1
    //   108: sipush 401
    //   111: if_icmpne +80 -> 191
    //   114: new 221	com/dropbox/client2/exception/DropboxUnlinkedException
    //   117: dup
    //   118: invokespecial 222	com/dropbox/client2/exception/DropboxUnlinkedException:<init>	()V
    //   121: athrow
    //   122: astore_0
    //   123: aconst_null
    //   124: astore_2
    //   125: aload_2
    //   126: astore_3
    //   127: new 132	com/dropbox/client2/exception/DropboxIOException
    //   130: dup
    //   131: aload_0
    //   132: invokespecial 155	com/dropbox/client2/exception/DropboxIOException:<init>	(Ljava/io/IOException;)V
    //   135: athrow
    //   136: astore_0
    //   137: aload_3
    //   138: ifnull +7 -> 145
    //   141: aload_3
    //   142: invokevirtual 219	java/io/BufferedReader:close	()V
    //   145: aload_0
    //   146: athrow
    //   147: astore_2
    //   148: aload 6
    //   150: astore_2
    //   151: aload_2
    //   152: astore_3
    //   153: aload_0
    //   154: invokestatic 228	com/dropbox/client2/exception/DropboxServerException:isValidWithNullBody	(Lorg/apache/http/HttpResponse;)Z
    //   157: ifeq +14 -> 171
    //   160: aload_2
    //   161: astore_3
    //   162: new 224	com/dropbox/client2/exception/DropboxServerException
    //   165: dup
    //   166: aload_0
    //   167: invokespecial 231	com/dropbox/client2/exception/DropboxServerException:<init>	(Lorg/apache/http/HttpResponse;)V
    //   170: athrow
    //   171: aload_2
    //   172: astore_3
    //   173: new 233	com/dropbox/client2/exception/DropboxParseException
    //   176: dup
    //   177: aload_2
    //   178: invokespecial 236	com/dropbox/client2/exception/DropboxParseException:<init>	(Ljava/io/BufferedReader;)V
    //   181: athrow
    //   182: new 173	com/dropbox/client2/exception/DropboxException
    //   185: dup
    //   186: aload_0
    //   187: invokespecial 176	com/dropbox/client2/exception/DropboxException:<init>	(Ljava/lang/Throwable;)V
    //   190: athrow
    //   191: new 224	com/dropbox/client2/exception/DropboxServerException
    //   194: dup
    //   195: aload_0
    //   196: aload_3
    //   197: invokespecial 239	com/dropbox/client2/exception/DropboxServerException:<init>	(Lorg/apache/http/HttpResponse;Ljava/lang/Object;)V
    //   200: athrow
    //   201: astore_2
    //   202: goto -57 -> 145
    //   205: astore_2
    //   206: goto -118 -> 88
    //   209: aload_3
    //   210: areturn
    //   211: astore_0
    //   212: aload_2
    //   213: astore_3
    //   214: goto -32 -> 182
    //   217: astore_3
    //   218: goto -67 -> 151
    //   221: astore_0
    //   222: goto -97 -> 125
    //   225: aconst_null
    //   226: astore_2
    //   227: aload 5
    //   229: astore_3
    //   230: goto -150 -> 80
    //   233: astore_0
    //   234: goto -97 -> 137
    //   237: astore_0
    //   238: aload 4
    //   240: astore_3
    //   241: goto -59 -> 182
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	244	0	paramHttpResponse	HttpResponse
    //   99	13	1	i	int
    //   7	119	2	localBufferedReader	java.io.BufferedReader
    //   147	1	2	localParseException1	org.json.simple.parser.ParseException
    //   150	28	2	localObject1	Object
    //   201	1	2	localIOException1	IOException
    //   205	8	2	localIOException2	IOException
    //   226	1	2	localObject2	Object
    //   12	202	3	localObject3	Object
    //   217	1	3	localParseException2	org.json.simple.parser.ParseException
    //   229	12	3	localObject4	Object
    //   4	235	4	localObject5	Object
    //   9	219	5	localObject6	Object
    //   1	148	6	localObject7	Object
    //   19	18	7	localHttpEntity	HttpEntity
    // Exception table:
    //   from	to	target	type
    //   13	21	122	java/io/IOException
    //   28	53	122	java/io/IOException
    //   55	62	136	finally
    //   64	77	136	finally
    //   127	136	136	finally
    //   13	21	147	org/json/simple/parser/ParseException
    //   28	53	147	org/json/simple/parser/ParseException
    //   141	145	201	java/io/IOException
    //   84	88	205	java/io/IOException
    //   55	62	211	java/lang/OutOfMemoryError
    //   64	77	211	java/lang/OutOfMemoryError
    //   55	62	217	org/json/simple/parser/ParseException
    //   64	77	217	org/json/simple/parser/ParseException
    //   55	62	221	java/io/IOException
    //   64	77	221	java/io/IOException
    //   13	21	233	finally
    //   28	53	233	finally
    //   153	160	233	finally
    //   162	171	233	finally
    //   173	182	233	finally
    //   182	191	233	finally
    //   13	21	237	java/lang/OutOfMemoryError
    //   28	53	237	java/lang/OutOfMemoryError
  }
  
  public static Map<String, String> parseAsQueryString(HttpResponse paramHttpResponse)
  {
    paramHttpResponse = paramHttpResponse.getEntity();
    if (paramHttpResponse == null) {
      throw new DropboxParseException("Bad response from Dropbox.");
    }
    for (;;)
    {
      HashMap localHashMap;
      try
      {
        paramHttpResponse = new Scanner(paramHttpResponse.getContent()).useDelimiter("&");
        localHashMap = new HashMap();
        if (!paramHttpResponse.hasNext()) {
          return localHashMap;
        }
      }
      catch (IOException paramHttpResponse)
      {
        throw new DropboxIOException(paramHttpResponse);
      }
      String[] arrayOfString = paramHttpResponse.next().split("=");
      if (arrayOfString.length != 2) {
        throw new DropboxParseException("Bad query string from Dropbox.");
      }
      localHashMap.put(arrayOfString[0], arrayOfString[1]);
    }
  }
  
  public static Date parseDate(String paramString)
  {
    try
    {
      paramString = dateFormat.parse(paramString);
      return paramString;
    }
    catch (ParseException paramString) {}
    return null;
  }
  
  public static Object request(RESTUtility.RequestMethod paramRequestMethod, String paramString1, String paramString2, int paramInt, String[] paramArrayOfString, Session paramSession)
  {
    return parseAsJSON(streamRequestresponse);
  }
  
  public static DropboxAPI.RequestAndResponse streamRequest(RESTUtility.RequestMethod paramRequestMethod, String paramString1, String paramString2, int paramInt, String[] paramArrayOfString, Session paramSession)
  {
    if (paramRequestMethod == RESTUtility.RequestMethod.GET)
    {
      paramRequestMethod = new HttpGet(buildURL(paramString1, paramInt, paramString2, paramArrayOfString));
      paramSession.sign(paramRequestMethod);
      return new DropboxAPI.RequestAndResponse(paramRequestMethod, execute(paramSession, paramRequestMethod));
    }
    paramRequestMethod = new HttpPost(buildURL(paramString1, paramInt, paramString2, null));
    if ((paramArrayOfString != null) && (paramArrayOfString.length >= 2))
    {
      if (paramArrayOfString.length % 2 != 0) {
        throw new IllegalArgumentException("Params must have an even number of elements.");
      }
      paramString1 = new ArrayList();
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt >= paramArrayOfString.length) {}
      try
      {
        paramRequestMethod.setEntity(new UrlEncodedFormEntity(paramString1, "UTF-8"));
      }
      catch (UnsupportedEncodingException paramRequestMethod)
      {
        throw new DropboxException(paramRequestMethod);
      }
      if (paramArrayOfString[(paramInt + 1)] != null) {
        paramString1.add(new BasicNameValuePair(paramArrayOfString[paramInt], paramArrayOfString[(paramInt + 1)]));
      }
      paramInt += 2;
    }
  }
  
  private static void updateClientProxy(HttpClient paramHttpClient, Session paramSession)
  {
    paramSession = paramSession.getProxyInfo();
    if ((paramSession != null) && (host != null) && (!host.equals("")))
    {
      if (port < 0) {}
      for (paramSession = new HttpHost(host);; paramSession = new HttpHost(host, port))
      {
        paramHttpClient.getParams().setParameter("http.route.default-proxy", paramSession);
        return;
      }
    }
    paramHttpClient.getParams().removeParameter("http.route.default-proxy");
  }
  
  private static HttpClient updatedHttpClient(Session paramSession)
  {
    try
    {
      HttpClient localHttpClient = paramSession.getHttpClient();
      updateClientProxy(localHttpClient, paramSession);
      return localHttpClient;
    }
    finally
    {
      paramSession = finally;
      throw paramSession;
    }
  }
  
  private static String urlencode(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length % 2 != 0) {
      throw new IllegalArgumentException("Params must have an even number of elements.");
    }
    Object localObject1 = "";
    int i = 1;
    int j = 0;
    for (;;)
    {
      try
      {
        if (j < paramArrayOfString.length) {
          break label116;
        }
        return (String)localObject1;
      }
      catch (UnsupportedEncodingException paramArrayOfString)
      {
        return null;
      }
      Object localObject2 = localObject1 + URLEncoder.encode(paramArrayOfString[j], "UTF-8") + "=" + URLEncoder.encode(paramArrayOfString[(j + 1)], "UTF-8");
      int k = i;
      break label139;
      localObject1 = localObject1 + "&";
      continue;
      label116:
      k = i;
      localObject2 = localObject1;
      if (paramArrayOfString[(j + 1)] != null)
      {
        if (i != 0) {
          i = 0;
        }
      }
      else
      {
        label139:
        j += 2;
        i = k;
        localObject1 = localObject2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.RESTUtility
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */