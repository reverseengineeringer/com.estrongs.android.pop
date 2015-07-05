package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.spfs.OAuthUtil;
import com.estrongs.android.pop.spfs.SPFileSystem;
import java.net.ConnectException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.UnknownHostException;
import java.util.Map;

class x
  extends Thread
{
  x(CreateOAuthServiceProvider paramCreateOAuthServiceProvider) {}
  
  public void run()
  {
    CreateOAuthServiceProvider.a(a, SPFileSystem.getOAuthVersion(CreateOAuthServiceProvider.a(a)));
    if ("1.0a".equals(CreateOAuthServiceProvider.b(a)))
    {
      Object localObject1 = SPFileSystem.getRequestTokenUrl(CreateOAuthServiceProvider.a(a));
      if (localObject1 == null)
      {
        localObject1 = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.a);
        obj = null;
        CreateOAuthServiceProvider.c(a).sendMessage((Message)localObject1);
        return;
      }
      String str;
      try
      {
        localObject1 = OAuthUtil.getDataAsMap(URLDecoder.decode(OAuthUtil.getLine((URL)localObject1, null), "UTF-8"));
        if (!((Map)localObject1).isEmpty()) {
          break label204;
        }
        throw new Exception("Empty Response");
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localObject3 = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.d);
        str = localException.getMessage();
        if ((localException instanceof UnknownHostException)) {
          break label162;
        }
      }
      label162:
      int i;
      if (((localException instanceof ConnectException)) || (str.contains("timed out")))
      {
        i = 1;
        if ((i == 0) || (CreateOAuthServiceProvider.d(a))) {
          break label342;
        }
      }
      label204:
      label342:
      for (obj = a.getString(2131427916);; obj = null)
      {
        CreateOAuthServiceProvider.c(a).sendMessage((Message)localObject3);
        return;
        if ((!localException.containsKey("oauth_callback_confirmed")) || (!Boolean.valueOf((String)localException.get("oauth_callback_confirmed")).booleanValue())) {
          throw new Exception("Invalid response: " + localException);
        }
        localObject3 = (String)localException.get("oauth_token");
        CreateOAuthServiceProvider.b(a, (String)localException.get("oauth_token_secret"));
        localObject2 = SPFileSystem.getOAuthLoginUrl(CreateOAuthServiceProvider.a(a), (String)localObject3);
        localObject3 = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.b);
        obj = localObject2;
        CreateOAuthServiceProvider.c(a).sendMessage((Message)localObject3);
        return;
        i = 0;
        break;
      }
    }
    Object localObject2 = SPFileSystem.getOAuthLoginUrl(CreateOAuthServiceProvider.a(a), null);
    if (localObject2 == null)
    {
      localObject2 = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.a);
      obj = null;
      CreateOAuthServiceProvider.c(a).sendMessage((Message)localObject2);
      return;
    }
    Object localObject3 = CreateOAuthServiceProvider.c(a).obtainMessage(CreateOAuthServiceProvider.b);
    obj = localObject2;
    CreateOAuthServiceProvider.c(a).sendMessage((Message)localObject3);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.view.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */