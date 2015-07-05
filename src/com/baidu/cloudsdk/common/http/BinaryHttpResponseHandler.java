package com.baidu.cloudsdk.common.http;

import android.os.Message;
import java.io.IOException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpResponseException;
import org.apache.http.util.EntityUtils;

public class BinaryHttpResponseHandler
  extends HttpResponseHandler
{
  private String[] mAllowedContentTypes = { "image/jpeg", "image/png" };
  
  public BinaryHttpResponseHandler() {}
  
  public BinaryHttpResponseHandler(String[] paramArrayOfString)
  {
    mAllowedContentTypes = paramArrayOfString;
  }
  
  protected void handleFailureMessage(Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    onFailure(paramThrowable, paramArrayOfByte);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    for (;;)
    {
      super.handleMessage(paramMessage);
      return;
      paramMessage = (Object[])obj;
      handleSuccessMessage(((Integer)paramMessage[0]).intValue(), (byte[])paramMessage[1]);
      return;
      Object[] arrayOfObject = (Object[])obj;
      handleFailureMessage((Throwable)arrayOfObject[0], (byte[])arrayOfObject[1]);
    }
  }
  
  protected void handleSuccessMessage(int paramInt, byte[] paramArrayOfByte)
  {
    onSuccess(paramInt, paramArrayOfByte);
  }
  
  protected void onFailure(Throwable paramThrowable, byte[] paramArrayOfByte) {}
  
  protected void onSuccess(int paramInt, byte[] paramArrayOfByte)
  {
    onSuccess(paramArrayOfByte);
  }
  
  protected void onSuccess(byte[] paramArrayOfByte) {}
  
  protected void sendResponseMessage(HttpResponse paramHttpResponse)
  {
    int j = 1;
    Object localObject1 = null;
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    Object localObject2 = paramHttpResponse.getHeaders("Content-Type");
    if (localObject2.length != 1)
    {
      sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "None or more than one Content-Type Header found!"), (byte[])null);
      return;
    }
    localObject2 = localObject2[0];
    String[] arrayOfString = mAllowedContentTypes;
    int k = arrayOfString.length;
    int i = 0;
    if (i < k) {
      if (!arrayOfString[i].equalsIgnoreCase(((Header)localObject2).getValue())) {}
    }
    for (i = j;; i = 0)
    {
      if (i == 0)
      {
        sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), "Content-Type not allowed!"), (byte[])null);
        return;
        i += 1;
        break;
      }
      localObject2 = paramHttpResponse.getEntity();
      paramHttpResponse = (HttpResponse)localObject1;
      if (localObject2 != null) {}
      try
      {
        paramHttpResponse = EntityUtils.toByteArray((HttpEntity)localObject2);
        if (localStatusLine.getStatusCode() >= 300)
        {
          sendFailureMessage(new HttpResponseException(localStatusLine.getStatusCode(), localStatusLine.getReasonPhrase()), paramHttpResponse);
          return;
        }
      }
      catch (IOException paramHttpResponse)
      {
        sendFailureMessage(paramHttpResponse, (byte[])null);
        return;
      }
      sendSuccessMessage(localStatusLine.getStatusCode(), paramHttpResponse);
      return;
    }
  }
  
  protected void sendSuccessMessage(int paramInt, byte[] paramArrayOfByte)
  {
    sendMessage(obtainMessage(0, new Object[] { Integer.valueOf(paramInt), paramArrayOfByte }));
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.BinaryHttpResponseHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */