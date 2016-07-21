package com.facebook.ads.internal.http;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.util.EntityUtils;

public class c
{
  private Handler a;
  
  public c()
  {
    if (Looper.myLooper() != null) {
      a = new c.1(this);
    }
  }
  
  protected Message a(int paramInt, Object paramObject)
  {
    if (a != null) {
      return a.obtainMessage(paramInt, paramObject);
    }
    Message localMessage = Message.obtain();
    what = paramInt;
    obj = paramObject;
    return localMessage;
  }
  
  public void a() {}
  
  public void a(int paramInt, String paramString)
  {
    a(paramString);
  }
  
  protected void a(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 0: 
      paramMessage = (Object[])obj;
      c(((Integer)paramMessage[0]).intValue(), (String)paramMessage[1]);
      return;
    case 1: 
      paramMessage = (Object[])obj;
      c((Throwable)paramMessage[0], (String)paramMessage[1]);
      return;
    case 2: 
      a();
      return;
    }
    b();
  }
  
  public void a(String paramString) {}
  
  public void a(Throwable paramThrowable) {}
  
  public void a(Throwable paramThrowable, String paramString)
  {
    a(paramThrowable);
  }
  
  void a(HttpResponse paramHttpResponse)
  {
    Object localObject = null;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    try
    {
      HttpEntity localHttpEntity = paramHttpResponse.getEntity();
      paramHttpResponse = (HttpResponse)localObject;
      if (localHttpEntity != null) {
        paramHttpResponse = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
      }
    }
    catch (IOException paramHttpResponse)
    {
      for (;;)
      {
        b(paramHttpResponse, (String)null);
        paramHttpResponse = (HttpResponse)localObject;
      }
      b(localStatusLine.getStatusCode(), paramHttpResponse);
    }
    if (localStatusLine.getStatusCode() >= 300)
    {
      b(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
      return;
    }
  }
  
  public void b() {}
  
  protected void b(int paramInt, String paramString)
  {
    b(a(0, new Object[] { Integer.valueOf(paramInt), paramString }));
  }
  
  protected void b(Message paramMessage)
  {
    if (a != null)
    {
      a.sendMessage(paramMessage);
      return;
    }
    a(paramMessage);
  }
  
  protected void b(Throwable paramThrowable, String paramString)
  {
    b(a(1, new Object[] { paramThrowable, paramString }));
  }
  
  protected void c()
  {
    b(a(2, null));
  }
  
  protected void c(int paramInt, String paramString)
  {
    a(paramInt, paramString);
  }
  
  protected void c(Throwable paramThrowable, String paramString)
  {
    a(paramThrowable, paramString);
  }
  
  protected void d()
  {
    b(a(3, null));
  }
}

/* Location:
 * Qualified Name:     com.facebook.ads.internal.http.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */