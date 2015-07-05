package com.estrongs.fs.impl.h;

import android.util.Log;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ac;
import com.estrongs.android.util.am;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.h;
import com.estrongs.fs.l;
import java.io.InputStream;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public class b
  extends l
{
  private static HttpParams c = new BasicHttpParams();
  public final int a = 0;
  public final int b = 1;
  
  static
  {
    HttpConnectionParams.setConnectionTimeout(c, 20000);
    HttpConnectionParams.setSoTimeout(c, 60000);
  }
  
  public static String g(String paramString)
  {
    String str = paramString;
    if (!paramString.contains("%")) {
      str = am.bC(paramString);
    }
    return str;
  }
  
  /* Error */
  public static boolean h(String paramString)
  {
    // Byte code:
    //   0: new 55	org/apache/http/client/methods/HttpGet
    //   3: dup
    //   4: aload_0
    //   5: invokestatic 57	com/estrongs/fs/impl/h/b:g	(Ljava/lang/String;)Ljava/lang/String;
    //   8: invokespecial 60	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   11: astore_0
    //   12: aload_0
    //   13: ldc 62
    //   15: ldc 64
    //   17: invokevirtual 68	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   20: aload_0
    //   21: ldc 70
    //   23: ldc 72
    //   25: invokevirtual 68	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   28: getstatic 18	com/estrongs/fs/impl/h/b:c	Lorg/apache/http/params/HttpParams;
    //   31: invokestatic 77	com/estrongs/android/util/ac:a	(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;
    //   34: aload_0
    //   35: invokeinterface 83 2 0
    //   40: invokeinterface 89 1 0
    //   45: invokeinterface 95 1 0
    //   50: istore_1
    //   51: iload_1
    //   52: sipush 206
    //   55: if_icmpeq +9 -> 64
    //   58: aload_0
    //   59: invokevirtual 98	org/apache/http/client/methods/HttpGet:abort	()V
    //   62: iconst_0
    //   63: ireturn
    //   64: aload_0
    //   65: invokevirtual 98	org/apache/http/client/methods/HttpGet:abort	()V
    //   68: iconst_1
    //   69: ireturn
    //   70: astore_2
    //   71: aload_0
    //   72: invokevirtual 98	org/apache/http/client/methods/HttpGet:abort	()V
    //   75: iconst_0
    //   76: ireturn
    //   77: astore_0
    //   78: iconst_0
    //   79: ireturn
    //   80: astore_2
    //   81: aload_0
    //   82: invokevirtual 98	org/apache/http/client/methods/HttpGet:abort	()V
    //   85: aload_2
    //   86: athrow
    //   87: astore_0
    //   88: iconst_0
    //   89: ireturn
    //   90: astore_0
    //   91: goto -23 -> 68
    //   94: astore_0
    //   95: goto -10 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	paramString	String
    //   50	6	1	i	int
    //   70	1	2	localException	Exception
    //   80	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   20	51	70	java/lang/Exception
    //   71	75	77	java/lang/Exception
    //   20	51	80	finally
    //   58	62	87	java/lang/Exception
    //   64	68	90	java/lang/Exception
    //   81	85	94	java/lang/Exception
  }
  
  public h a(String paramString)
  {
    return b(paramString, null);
  }
  
  public InputStream a(String paramString, long paramLong)
  {
    return a(paramString, paramLong, null);
  }
  
  public InputStream a(String paramString, long paramLong, TypedMap paramTypedMap)
  {
    HttpGet localHttpGet = new HttpGet(g(paramString));
    localHttpGet.addHeader("User-Agent", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)");
    if (paramTypedMap != null) {}
    for (;;)
    {
      int i;
      try
      {
        if (!paramTypedMap.containsKey("end_offset")) {
          break label421;
        }
        paramString = paramTypedMap.getString("end_offset");
      }
      catch (Exception paramString)
      {
        localHttpGet.abort();
        throw new FileSystemException(paramString.getMessage(), paramString);
      }
      Object localObject2 = new StringBuilder().append("bytes=").append(paramLong).append("-");
      Object localObject1 = paramString;
      if (paramString == null) {
        localObject1 = "";
      }
      localHttpGet.addHeader("Range", (String)localObject1);
      localObject1 = ac.a(c);
      if ((paramTypedMap == null) || (paramTypedMap.isEmpty()) || (!(localObject1 instanceof AbstractHttpClient)))
      {
        paramString = ((HttpClient)localObject1).execute(localHttpGet);
        localObject2 = paramString.getEntity();
        i = paramString.getStatusLine().getStatusCode();
        if (i != 401) {
          break label279;
        }
        if (paramLong > 0L)
        {
          localHttpGet.removeHeaders("Range");
          if (((HttpClient)localObject1).execute(localHttpGet).getStatusLine().getStatusCode() == 200) {
            throw new FileSystemException("UnsupportResume");
          }
        }
      }
      else
      {
        paramString = new com.estrongs.android.c.c((AbstractHttpClient)localObject1, paramTypedMap.getString("NEW_USERNAME"), paramTypedMap.getString("NEW_PASSWORD")).a(localHttpGet);
        continue;
      }
      throw new FileSystemException("File is unauthorized");
      label279:
      if ((i != 200) && (i != 206)) {
        try
        {
          localHttpGet.abort();
          throw new FileSystemException(paramString.getStatusLine().getReasonPhrase());
        }
        catch (Exception paramTypedMap)
        {
          for (;;)
          {
            Log.e("HttpFileSystem", "Error when HttpGet.abort()" + paramTypedMap);
          }
        }
      }
      if ((paramLong > 0L) && (paramTypedMap != null))
      {
        if (i != 206) {
          break label404;
        }
        paramTypedMap.put("RBT", Boolean.valueOf(true));
      }
      while (localObject2 != null)
      {
        return new c(this, ((HttpEntity)localObject2).getContent(), localHttpGet);
        label404:
        paramTypedMap.put("RBT", Boolean.valueOf(false));
      }
      return null;
      label421:
      paramString = null;
      if (paramLong <= 0L) {
        if (paramString == null) {}
      }
    }
  }
  
  public h b(String paramString, TypedMap paramTypedMap)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localObject2 = new HttpGet(g(paramString));
        ((HttpGet)localObject2).addHeader("User-Agent", "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1)");
        localHttpClient = ac.a(c);
        if ((paramTypedMap != null) && (paramTypedMap.size() != 0)) {
          continue;
        }
        localObject1 = new BasicHttpContext();
        paramTypedMap = localHttpClient.execute((HttpUriRequest)localObject2, (HttpContext)localObject1);
      }
      catch (FileSystemException paramString)
      {
        HttpClient localHttpClient;
        throw paramString;
        if (!(localHttpClient instanceof AbstractHttpClient)) {
          break label296;
        }
        localObject1 = new com.estrongs.android.c.c((AbstractHttpClient)localHttpClient, paramTypedMap.getString("NEW_USERNAME"), paramTypedMap.getString("NEW_PASSWORD"));
        paramTypedMap = ((com.estrongs.android.c.c)localObject1).a((HttpRequestBase)localObject2);
        localObject1 = ((com.estrongs.android.c.c)localObject1).a();
        continue;
        if (i != 403) {
          break label180;
        }
        throw new FileSystemException("File is forbidden");
      }
      catch (Throwable paramString)
      {
        throw new FileSystemException(paramString.getMessage(), paramString);
      }
      int i = paramTypedMap.getStatusLine().getStatusCode();
      if (i == 404) {
        throw new FileSystemException("File is not found");
      }
      label180:
      if (i == 401) {
        throw new FileSystemException("File is unauthorized");
      }
      Object localObject2 = (HttpUriRequest)((HttpContext)localObject1).getAttribute("http.request");
      if (localObject2 != null) {
        if (!((HttpUriRequest)localObject2).getURI().isAbsolute()) {
          break label250;
        }
      }
      label250:
      for (paramString = ((HttpUriRequest)localObject2).getURI().toString();; paramString = ((HttpHost)((HttpContext)localObject1).getAttribute("http.target_host")).toURI() + ((HttpUriRequest)localObject2).getURI().toString()) {
        return new a(paramString, paramTypedMap);
      }
      label296:
      paramTypedMap = null;
    }
  }
  
  public InputStream d(String paramString)
  {
    return a(paramString, 0L);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.impl.h.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */