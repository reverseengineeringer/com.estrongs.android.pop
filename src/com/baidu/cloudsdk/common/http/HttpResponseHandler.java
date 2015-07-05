package com.baidu.cloudsdk.common.http;

import android.os.Handler;
import android.os.Message;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.util.EntityUtils;

public class HttpResponseHandler
  extends Handler
{
  protected static final String DEFAULT_CHARSET = "UTF-8";
  protected static final int FAILURE_MESSAGE = 1;
  protected static final int FINISH_MESSAGE = 3;
  protected static final int START_MESSAGE = 2;
  protected static final int SUCCESS_MESSAGE = 0;
  protected String mDefaultCharset;
  
  public HttpResponseHandler()
  {
    this("UTF-8");
  }
  
  public HttpResponseHandler(String paramString)
  {
    mDefaultCharset = paramString;
  }
  
  protected void handleFailureMessage(Throwable paramThrowable, String paramString)
  {
    onFailure(paramThrowable, paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    case 2: 
      onStart();
      return;
    case 3: 
      onFinish();
      return;
    case 1: 
      paramMessage = (Object[])obj;
      handleFailureMessage((Throwable)paramMessage[0], (String)paramMessage[1]);
      return;
    }
    paramMessage = (Object[])obj;
    handleSuccessMessage(((Integer)paramMessage[0]).intValue(), (String)paramMessage[1]);
  }
  
  protected void handleSuccessMessage(int paramInt, String paramString)
  {
    onSuccess(paramInt, paramString);
  }
  
  protected void onFailure(Throwable paramThrowable, String paramString) {}
  
  protected void onFinish() {}
  
  protected void onStart() {}
  
  protected void onSuccess(int paramInt, String paramString)
  {
    onSuccess(paramString);
  }
  
  protected void onSuccess(String paramString) {}
  
  protected void sendFailureMessage(Throwable paramThrowable, String paramString)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramString }));
  }
  
  protected void sendFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(1, new Object[] { paramThrowable, paramArrayOfByte }));
  }
  
  protected void sendFinishMessage()
  {
    sendMessage(obtainMessage(3));
  }
  
  protected void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    String str = null;
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity != null) {}
    try
    {
      str = EntityUtils.toString(localHttpEntity, mDefaultCharset);
      paramHttpResponse = paramHttpResponse.getStatusLine();
      if (paramHttpResponse.getStatusCode() >= 300)
      {
        sendFailureMessage(new HttpResponseException(paramHttpResponse.getStatusCode(), paramHttpResponse.getReasonPhrase()), str);
        return;
      }
    }
    catch (Exception paramHttpResponse)
    {
      sendFailureMessage(paramHttpResponse, (String)null);
      return;
    }
    sendSuccessMessage(paramHttpResponse.getStatusCode(), str);
  }
  
  protected void sendStartMessage()
  {
    sendMessage(obtainMessage(2));
  }
  
  protected void sendSuccessMessage(int paramInt, String paramString)
  {
    sendMessage(obtainMessage(0, new Object[] { Integer.valueOf(paramInt), paramString }));
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.HttpResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */