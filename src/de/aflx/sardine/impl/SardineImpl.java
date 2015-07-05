package de.aflx.sardine.impl;

import android.util.Log;
import de.aflx.sardine.DavResource;
import de.aflx.sardine.Sardine;
import de.aflx.sardine.Version;
import de.aflx.sardine.impl.handler.ExistsResponseHandler;
import de.aflx.sardine.impl.handler.LockResponseHandler;
import de.aflx.sardine.impl.handler.MultiStatusResponseHandler;
import de.aflx.sardine.impl.handler.ValidatingResponseHandler;
import de.aflx.sardine.impl.handler.VoidResponseHandler;
import de.aflx.sardine.impl.io.ConsumingInputStream;
import de.aflx.sardine.impl.methods.HttpCopy;
import de.aflx.sardine.impl.methods.HttpLock;
import de.aflx.sardine.impl.methods.HttpMkCol;
import de.aflx.sardine.impl.methods.HttpMove;
import de.aflx.sardine.impl.methods.HttpPropFind;
import de.aflx.sardine.impl.methods.HttpUnlock;
import de.aflx.sardine.model.Allprop;
import de.aflx.sardine.model.Exclusive;
import de.aflx.sardine.model.Lockinfo;
import de.aflx.sardine.model.Lockscope;
import de.aflx.sardine.model.Locktype;
import de.aflx.sardine.model.Multistatus;
import de.aflx.sardine.model.Propfind;
import de.aflx.sardine.model.Response;
import de.aflx.sardine.model.Write;
import de.aflx.sardine.util.Logger;
import de.aflx.sardine.util.QName;
import de.aflx.sardine.util.SardineUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.ProxySelector;
import java.net.URISyntaxException;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.NTCredentials;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpResponseException;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.ProxySelectorRoutePlanner;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

public class SardineImpl
  implements Sardine
{
  private static final String UTF_8 = "UTF-8";
  public static HashMap<String, Integer> authTypes = new HashMap();
  public static HashMap<String, Header> digest_resp_header = new HashMap();
  private static Logger log = new Logger();
  protected HttpRequestBase _currentRequest;
  protected boolean _isAborted = false;
  private AbstractHttpClient client;
  private HttpContext context = new BasicHttpContext();
  HttpRequestInterceptor preemptiveAuth = new SardineImpl.1(this);
  
  public SardineImpl()
  {
    this(null, null);
  }
  
  public SardineImpl(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, null);
  }
  
  public SardineImpl(String paramString1, String paramString2, ProxySelector paramProxySelector)
  {
    init(createDefaultClient(paramProxySelector), paramString1, paramString2);
  }
  
  public SardineImpl(AbstractHttpClient paramAbstractHttpClient)
  {
    this(paramAbstractHttpClient, null, null);
  }
  
  public SardineImpl(AbstractHttpClient paramAbstractHttpClient, String paramString1, String paramString2)
  {
    init(paramAbstractHttpClient, paramString1, paramString2);
  }
  
  private void init(AbstractHttpClient paramAbstractHttpClient, String paramString1, String paramString2)
  {
    client = paramAbstractHttpClient;
    client.addRequestInterceptor(preemptiveAuth, 0);
    setCredentials(paramString1, paramString2);
    log.warn("init");
  }
  
  public void abort()
  {
    _isAborted = true;
    _currentRequest.abort();
  }
  
  public void copy(String paramString1, String paramString2)
  {
    execute(new HttpCopy(paramString1, paramString2), new VoidResponseHandler());
  }
  
  protected AbstractHttpClient createDefaultClient(ProxySelector paramProxySelector)
  {
    SchemeRegistry localSchemeRegistry = createDefaultSchemeRegistry();
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(createDefaultConnectionManager(localSchemeRegistry), createDefaultHttpParams());
    localDefaultHttpClient.setRoutePlanner(createDefaultRoutePlanner(localSchemeRegistry, paramProxySelector));
    return localDefaultHttpClient;
  }
  
  protected ClientConnectionManager createDefaultConnectionManager(SchemeRegistry paramSchemeRegistry)
  {
    return new ThreadSafeClientConnManager(createDefaultHttpParams(), paramSchemeRegistry);
  }
  
  protected HttpParams createDefaultHttpParams()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    String str2 = Version.getSpecification();
    String str1 = str2;
    if (str2 == null) {
      str1 = "UNAVAILABLE";
    }
    HttpProtocolParams.setUserAgent(localBasicHttpParams, "Sardine/" + str1);
    HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "ISO-8859-1");
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    return localBasicHttpParams;
  }
  
  protected HttpRoutePlanner createDefaultRoutePlanner(SchemeRegistry paramSchemeRegistry, ProxySelector paramProxySelector)
  {
    return new ProxySelectorRoutePlanner(paramSchemeRegistry, paramProxySelector);
  }
  
  protected SchemeRegistry createDefaultSchemeRegistry()
  {
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", createDefaultSocketFactory(), 80));
    try
    {
      Object localObject = KeyStore.getInstance(KeyStore.getDefaultType());
      ((KeyStore)localObject).load(null, null);
      localObject = new SardineImpl.MySSLSocketFactory(this, (KeyStore)localObject);
      ((SSLSocketFactory)localObject).setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localSchemeRegistry.register(new Scheme("https", (SocketFactory)localObject, 443));
      return localSchemeRegistry;
    }
    catch (Exception localException) {}
    return localSchemeRegistry;
  }
  
  protected SSLSocketFactory createDefaultSecureSocketFactory()
  {
    return SSLSocketFactory.getSocketFactory();
  }
  
  protected PlainSocketFactory createDefaultSocketFactory()
  {
    return PlainSocketFactory.getSocketFactory();
  }
  
  public void createDirectory(String paramString)
  {
    execute(new HttpMkCol(paramString), new VoidResponseHandler());
  }
  
  public void delete(String paramString)
  {
    execute(new HttpDelete(paramString), new VoidResponseHandler());
  }
  
  public void destroy()
  {
    ClientConnectionManager localClientConnectionManager = client.getConnectionManager();
    if (localClientConnectionManager != null) {
      localClientConnectionManager.shutdown();
    }
    client = null;
  }
  
  public void disableCompression() {}
  
  public void disablePreemptiveAuthentication() {}
  
  public void enableCompression() {}
  
  public void enablePreemptiveAuthentication(String paramString) {}
  
  protected <T> T execute(HttpRequestBase paramHttpRequestBase, ResponseHandler<T> paramResponseHandler)
  {
    int j = 0;
    try
    {
      localObject1 = client.execute(paramHttpRequestBase, paramResponseHandler, context);
      return (T)localObject1;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      if (!(paramResponseHandler instanceof ValidatingResponseHandler)) {
        break label371;
      }
    }
    Object localObject1 = resp;
    String str = ((HttpHost)context.getAttribute("http.target_host")).getHostName();
    Object localObject2 = (Integer)authTypes.get(str);
    int i;
    if (localObject2 != null)
    {
      i = ((Integer)localObject2).intValue();
      if ((i == 0) && (((HttpResponse)localObject1).getStatusLine().getStatusCode() == 401))
      {
        Log.e("EEE", "basic auth failed, try get digest auth header");
        localObject2 = ((HttpResponse)localObject1).getHeaders("WWW-Authenticate");
        if ((localObject2 == null) || (localObject2.length <= 0)) {
          break label371;
        }
        int k = localObject2.length;
        label148:
        if (j >= k) {
          localObject1 = null;
        }
      }
    }
    for (;;)
    {
      if (localObject1 != null)
      {
        authTypes.put(str, new Integer(i));
        if (i == 1) {
          digest_resp_header.put(str, localObject1);
        }
        if (!(paramHttpRequestBase instanceof HttpPut))
        {
          try
          {
            Log.e("EEE", "execute request again");
            paramResponseHandler = client.execute(paramHttpRequestBase, paramResponseHandler, context);
            return paramResponseHandler;
          }
          catch (IOException paramResponseHandler)
          {
            authTypes.remove(str);
            digest_resp_header.remove(str);
            paramHttpRequestBase.abort();
            throw paramResponseHandler;
          }
          localObject1 = localObject2[j];
          try
          {
            if ((((Header)localObject1).getValue().contains("NTLM")) || (((Header)localObject1).getValue().contains("ntlm"))) {
              break label393;
            }
            if (!((Header)localObject1).getValue().contains("Digest"))
            {
              boolean bool = ((Header)localObject1).getValue().contains("digest");
              if (!bool) {}
            }
            else
            {
              i = 1;
            }
          }
          catch (Exception localException)
          {
            j += 1;
          }
          break label148;
          if (i == 1)
          {
            authTypes.remove(str);
            digest_resp_header.remove(str);
          }
        }
      }
      label371:
      paramHttpRequestBase.abort();
      Log.e("EEE", "request abort, throw e");
      throw localIOException;
      i = 0;
      break;
      label393:
      i = 2;
    }
  }
  
  protected HttpResponse execute(HttpRequestBase paramHttpRequestBase)
  {
    try
    {
      HttpResponse localHttpResponse = client.execute(paramHttpRequestBase, context);
      return localHttpResponse;
    }
    catch (IOException localIOException)
    {
      paramHttpRequestBase.abort();
      throw localIOException;
    }
  }
  
  public boolean exists(String paramString)
  {
    return ((Boolean)execute(new HttpHead(paramString), new ExistsResponseHandler())).booleanValue();
  }
  
  public ConsumingInputStream get(String paramString)
  {
    return get(paramString, Collections.emptyMap());
  }
  
  public ConsumingInputStream get(String paramString, Map<String, String> paramMap)
  {
    paramString = new HttpGet(paramString);
    _currentRequest = paramString;
    Object localObject = paramMap.keySet().iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext())
      {
        paramMap = execute(paramString);
        localObject = new VoidResponseHandler();
      }
      try
      {
        ((VoidResponseHandler)localObject).handleResponse(paramMap);
        paramMap = new ConsumingInputStream(paramMap, paramString);
        return paramMap;
      }
      catch (IOException paramMap)
      {
        String str;
        paramString.abort();
        throw paramMap;
      }
      str = (String)((Iterator)localObject).next();
      paramString.addHeader(str, (String)paramMap.get(str));
    }
  }
  
  public HttpRequestBase getCurrentRequest()
  {
    return _currentRequest;
  }
  
  public List<DavResource> getResources(String paramString)
  {
    return list(paramString);
  }
  
  public boolean isAborted()
  {
    return _isAborted;
  }
  
  public List<DavResource> list(String paramString)
  {
    return list(paramString, 1);
  }
  
  public List<DavResource> list(String paramString, int paramInt)
  {
    paramString = new HttpPropFind(paramString);
    paramString.setDepth(Integer.toString(paramInt));
    new Propfind().setAllprop(new Allprop());
    paramString.setEntity(new StringEntity("<?xml version=\"1.0\" encoding=\"utf-8\" ?><D:propfind xmlns:D=\"DAV:\">  <D:allprop/></D:propfind>", "UTF-8"));
    paramString = (Multistatus)execute(paramString, new MultiStatusResponseHandler());
    if (paramString == null) {
      return null;
    }
    Object localObject = paramString.getResponse();
    paramString = new ArrayList(((List)localObject).size());
    localObject = ((List)localObject).iterator();
    for (;;)
    {
      if (!((Iterator)localObject).hasNext()) {
        return paramString;
      }
      Response localResponse = (Response)((Iterator)localObject).next();
      try
      {
        paramString.add(new DavResource(localResponse));
      }
      catch (URISyntaxException localURISyntaxException)
      {
        log.warn(String.format("Ignore resource with invalid URI %s", new Object[] { localResponse.getHref() }));
      }
    }
  }
  
  public String lock(String paramString)
  {
    paramString = new HttpLock(paramString);
    Lockinfo localLockinfo = new Lockinfo();
    Object localObject = new Lockscope();
    ((Lockscope)localObject).setExclusive(new Exclusive());
    localLockinfo.setLockscope((Lockscope)localObject);
    localObject = new Locktype();
    ((Locktype)localObject).setWrite(new Write());
    localLockinfo.setLocktype((Locktype)localObject);
    return (String)execute(paramString, new LockResponseHandler());
  }
  
  public void move(String paramString1, String paramString2)
  {
    execute(new HttpMove(paramString1, paramString2), new VoidResponseHandler());
  }
  
  public List<DavResource> patch(String paramString, Map<QName, String> paramMap)
  {
    return patch(paramString, paramMap, Collections.emptyList());
  }
  
  public List<DavResource> patch(String paramString, Map<QName, String> paramMap, List<QName> paramList)
  {
    return null;
  }
  
  public void put(String paramString, InputStream paramInputStream)
  {
    put(paramString, paramInputStream, null);
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2)
  {
    put(paramString1, paramInputStream, paramString2, true);
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2, boolean paramBoolean)
  {
    put(paramString1, new InputStreamEntity(paramInputStream, -1L), paramString2, paramBoolean);
  }
  
  public void put(String paramString, InputStream paramInputStream, Map<String, String> paramMap)
  {
    put(paramString, new InputStreamEntity(paramInputStream, -1L), paramMap);
  }
  
  public void put(String paramString1, HttpEntity paramHttpEntity, String paramString2, boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramString2 != null) {
      localHashMap.put("Content-Type", paramString2);
    }
    if (paramBoolean) {
      localHashMap.put("Expect", "100-continue");
    }
    put(paramString1, paramHttpEntity, localHashMap);
  }
  
  public void put(String paramString, HttpEntity paramHttpEntity, Map<String, String> paramMap)
  {
    paramString = new HttpPut(paramString);
    _currentRequest = paramString;
    _isAborted = false;
    paramString.setEntity(paramHttpEntity);
    Iterator localIterator = paramMap.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        if (!paramString.containsHeader("Content-Type")) {
          paramString.addHeader("Content-Type", "application/octet-stream");
        }
      }
      try
      {
        execute(paramString, new VoidResponseHandler());
        return;
      }
      catch (HttpResponseException paramMap)
      {
        String str;
        if (paramMap.getStatusCode() != 417) {
          break;
        }
        paramString.removeHeaders("Expect");
        if (!paramHttpEntity.isRepeatable()) {
          break;
        }
        execute(paramString, new VoidResponseHandler());
        return;
        throw paramMap;
      }
      catch (IOException paramString)
      {
        paramString.getCause().printStackTrace();
        throw paramString;
      }
      str = (String)localIterator.next();
      paramString.addHeader(str, (String)paramMap.get(str));
    }
  }
  
  public void put(String paramString, byte[] paramArrayOfByte)
  {
    put(paramString, paramArrayOfByte, null);
  }
  
  public void put(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    put(paramString1, new ByteArrayEntity(paramArrayOfByte), paramString2, true);
  }
  
  public void setCredentials(String paramString1, String paramString2)
  {
    setCredentials(paramString1, paramString2, "", "");
  }
  
  public void setCredentials(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString1 != null)
    {
      client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "NTLM"), new NTCredentials(paramString1, paramString2, paramString4, paramString3));
      client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Basic"), new UsernamePasswordCredentials(paramString1, paramString2));
      client.getCredentialsProvider().setCredentials(new AuthScope(AuthScope.ANY_HOST, -1, AuthScope.ANY_REALM, "Digest"), new UsernamePasswordCredentials(paramString1, paramString2));
    }
  }
  
  public void setCustomProps(String paramString, Map<String, String> paramMap, List<String> paramList)
  {
    patch(paramString, SardineUtil.toQName(paramMap), SardineUtil.toQName(paramList));
  }
  
  public void unlock(String paramString1, String paramString2)
  {
    paramString1 = new HttpUnlock(paramString1, paramString2);
    paramString2 = new Lockinfo();
    Object localObject = new Lockscope();
    ((Lockscope)localObject).setExclusive(new Exclusive());
    paramString2.setLockscope((Lockscope)localObject);
    localObject = new Locktype();
    ((Locktype)localObject).setWrite(new Write());
    paramString2.setLocktype((Locktype)localObject);
    execute(paramString1, new VoidResponseHandler());
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.SardineImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */