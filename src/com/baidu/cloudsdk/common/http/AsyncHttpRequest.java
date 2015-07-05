package com.baidu.cloudsdk.common.http;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.protocol.HttpContext;

class AsyncHttpRequest
  implements Runnable
{
  private AbstractHttpClient mHttpClient;
  private HttpContext mHttpContext;
  private boolean mIsBinaryRequest;
  private HttpUriRequest mRequest;
  private HttpResponseHandler mResponseHandler;
  
  public AsyncHttpRequest(AbstractHttpClient paramAbstractHttpClient, HttpContext paramHttpContext, HttpUriRequest paramHttpUriRequest, HttpResponseHandler paramHttpResponseHandler)
  {
    mHttpClient = paramAbstractHttpClient;
    mHttpContext = paramHttpContext;
    mRequest = paramHttpUriRequest;
    mResponseHandler = paramHttpResponseHandler;
    if ((paramHttpResponseHandler instanceof BinaryHttpResponseHandler))
    {
      mIsBinaryRequest = true;
      return;
    }
    mIsBinaryRequest = false;
  }
  
  private void makeRequest()
  {
    if (!Thread.currentThread().isInterrupted())
    {
      HttpResponse localHttpResponse = mHttpClient.execute(mRequest, mHttpContext);
      if (Thread.currentThread().isInterrupted()) {
        break label50;
      }
      if (mResponseHandler != null) {
        mResponseHandler.sendResponseMessage(localHttpResponse);
      }
    }
    return;
    label50:
    throw new InterruptedException("the request has been cancelled");
  }
  
  public void run()
  {
    try
    {
      if (mResponseHandler != null) {
        mResponseHandler.sendStartMessage();
      }
      makeRequest();
      if (mResponseHandler != null) {
        mResponseHandler.sendFinishMessage();
      }
      return;
    }
    catch (Exception localException)
    {
      while (mResponseHandler == null) {}
      mResponseHandler.sendFinishMessage();
      if (mIsBinaryRequest)
      {
        mResponseHandler.sendFailureMessage(localException, (byte[])null);
        return;
      }
      mResponseHandler.sendFailureMessage(localException, (String)null);
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.AsyncHttpRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */