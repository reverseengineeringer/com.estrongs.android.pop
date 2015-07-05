package de.aflx.sardine.impl;

import android.util.Log;
import java.util.HashMap;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.impl.auth.BasicScheme;
import org.apache.http.impl.auth.DigestScheme;
import org.apache.http.impl.auth.NTLMScheme;
import org.apache.http.protocol.HttpContext;

class SardineImpl$1
  implements HttpRequestInterceptor
{
  SardineImpl$1(SardineImpl paramSardineImpl) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    AuthState localAuthState = (AuthState)paramHttpContext.getAttribute("http.auth.target-scope");
    paramHttpRequest = (CredentialsProvider)paramHttpContext.getAttribute("http.auth.credentials-provider");
    Object localObject = (HttpHost)paramHttpContext.getAttribute("http.target_host");
    if (localAuthState.getAuthScheme() == null)
    {
      paramHttpContext = paramHttpRequest.getCredentials(new AuthScope(((HttpHost)localObject).getHostName(), ((HttpHost)localObject).getPort()));
      localObject = ((HttpHost)localObject).getHostName();
      paramHttpRequest = (Integer)SardineImpl.authTypes.get(localObject);
      if (paramHttpRequest == null) {
        break label202;
      }
    }
    label127:
    label202:
    for (int i = paramHttpRequest.intValue();; i = 0)
    {
      if (paramHttpContext != null)
      {
        if (i != 0) {
          break label127;
        }
        paramHttpRequest = new BasicScheme();
      }
      for (;;)
      {
        localAuthState.setAuthScheme(paramHttpRequest);
        localAuthState.setCredentials(paramHttpContext);
        return;
        if (i == 1)
        {
          paramHttpRequest = new DigestScheme();
          localObject = (Header)SardineImpl.digest_resp_header.get(localObject);
          if (localObject != null) {
            paramHttpRequest.processChallenge((Header)localObject);
          } else {
            Log.e("EEE", "resp_auth_head is null");
          }
        }
        else
        {
          paramHttpRequest = new NTLMScheme(new SardineImpl.JCIFSEngine(this$0));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     de.aflx.sardine.impl.SardineImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */