package com.estrongs.android.g;

import com.estrongs.android.util.l;
import java.util.HashMap;
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

class d
  implements HttpRequestInterceptor
{
  d(c paramc) {}
  
  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    AuthState localAuthState = (AuthState)paramHttpContext.getAttribute("http.auth.target-scope");
    paramHttpRequest = (CredentialsProvider)paramHttpContext.getAttribute("http.auth.credentials-provider");
    HttpHost localHttpHost = (HttpHost)paramHttpContext.getAttribute("http.target_host");
    if (localAuthState.getAuthScheme() == null)
    {
      paramHttpContext = paramHttpRequest.getCredentials(new AuthScope(localHttpHost.getHostName(), localHttpHost.getPort()));
      paramHttpRequest = localHttpHost.getHostName();
      paramHttpRequest = (Integer)c.b.get(paramHttpRequest);
      if (paramHttpRequest == null) {
        break label229;
      }
    }
    label125:
    label229:
    for (int i = paramHttpRequest.intValue();; i = 0)
    {
      if (paramHttpContext != null)
      {
        if (i != 0) {
          break label125;
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
          if (c.a(a) != null)
          {
            l.e("EEE", "resp_auth_head is:" + c.a(a).toString());
            paramHttpRequest.processChallenge(c.a(a));
          }
          else
          {
            l.e("EEE", "resp_auth_head is null");
          }
        }
        else
        {
          paramHttpRequest = new NTLMScheme(new e(a));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.g.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */