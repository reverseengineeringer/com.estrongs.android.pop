package com.baidu.android.common.net;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.android.common.logging.Log;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public class ProxyHttpClient
  extends DefaultHttpClient
{
  private static final boolean DEBUG = false;
  private static final int HTTP_TIMEOUT_MS = 30000;
  private static final String TAG = ProxyHttpClient.class.getSimpleName();
  private RuntimeException mLeakedException = new IllegalStateException("ProxyHttpClient created and never closed");
  private String mPort;
  private String mProxy;
  private boolean mUseWap;
  
  public ProxyHttpClient(Context paramContext)
  {
    this(paramContext, null, null);
  }
  
  public ProxyHttpClient(Context paramContext, ConnectManager paramConnectManager)
  {
    this(paramContext, null, paramConnectManager);
  }
  
  public ProxyHttpClient(Context paramContext, String paramString)
  {
    this(paramContext, paramString, null);
  }
  
  public ProxyHttpClient(Context paramContext, String paramString, ConnectManager paramConnectManager)
  {
    ConnectManager localConnectManager = paramConnectManager;
    if (paramConnectManager == null) {
      localConnectManager = new ConnectManager(paramContext);
    }
    mUseWap = localConnectManager.isWapNetwork();
    mProxy = localConnectManager.getProxy();
    mPort = localConnectManager.getProxyPort();
    if ((mProxy != null) && (mProxy.length() > 0))
    {
      paramContext = new HttpHost(mProxy, Integer.valueOf(mPort).intValue());
      getParams().setParameter("http.route.default-proxy", paramContext);
    }
    HttpConnectionParams.setConnectionTimeout(getParams(), 30000);
    HttpConnectionParams.setSoTimeout(getParams(), 30000);
    HttpConnectionParams.setSocketBufferSize(getParams(), 8192);
    if (!TextUtils.isEmpty(paramString)) {
      HttpProtocolParams.setUserAgent(getParams(), paramString);
    }
  }
  
  public void close()
  {
    if (mLeakedException != null)
    {
      getConnectionManager().shutdown();
      mLeakedException = null;
    }
  }
  
  protected HttpParams createHttpParams()
  {
    HttpParams localHttpParams = super.createHttpParams();
    HttpProtocolParams.setUseExpectContinue(localHttpParams, false);
    return localHttpParams;
  }
  
  public HttpResponse executeSafely(HttpUriRequest paramHttpUriRequest)
  {
    try
    {
      paramHttpUriRequest = execute(paramHttpUriRequest);
      return paramHttpUriRequest;
    }
    catch (NullPointerException paramHttpUriRequest)
    {
      throw new ClientProtocolException(paramHttpUriRequest);
    }
  }
  
  protected void finalize()
  {
    super.finalize();
    if (mLeakedException != null) {
      Log.e(TAG, "Leak found", mLeakedException);
    }
  }
  
  public boolean isWap()
  {
    return mUseWap;
  }
}

/* Location:
 * Qualified Name:     com.baidu.android.common.net.ProxyHttpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */