package com.estrongs.android.pop.netfs.utils;

import android.util.Log;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;

public class HttpUploader
{
  private Object arg = null;
  public Object arg_1 = null;
  public Object arg_2 = null;
  private Thread d_thread = null;
  private boolean exit = false;
  private HttpUploader.HttpUploadListener l = null;
  private Object[] params = null;
  private String requestUrl = null;
  private HttpEntity uploadEntity = null;
  
  public HttpUploader(String paramString)
  {
    requestUrl = paramString;
  }
  
  private boolean isReponseSucc(HttpResponse paramHttpResponse)
  {
    return (paramHttpResponse.getStatusLine().getStatusCode() >= 200) && (paramHttpResponse.getStatusLine().getStatusCode() < 300);
  }
  
  private void upload()
  {
    int j = 0;
    try
    {
      localObject = new HttpPost(requestUrl);
      if (params != null) {
        i = 0;
      }
      for (;;)
      {
        if (i >= params.length)
        {
          ((HttpPost)localObject).setEntity(uploadEntity);
          localObject = HttpUtils.getClient().execute((HttpUriRequest)localObject);
          if (!exit) {
            break;
          }
          Log.e("Uploader", "upload failed, user cancel");
          if (l == null) {
            return;
          }
          l.uploadError(arg, null);
          return;
        }
        ((HttpPost)localObject).setHeader(params[i], params[(i + 1)]);
        i += 2;
      }
      if (isReponseSucc((HttpResponse)localObject)) {
        break label271;
      }
      Log.e("HttpUploader", "upload failed, server ret:" + ((HttpResponse)localObject).getStatusLine().getStatusCode());
      i = j;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject;
        localException.printStackTrace();
        if (l == null) {
          break;
        }
        l.uploadError(arg, localException);
        return;
        if (l == null) {
          break;
        }
        l.uploadError(arg, null);
        return;
        int i = 1;
      }
    }
    localObject = ((HttpResponse)localObject).getEntity();
    if (localObject != null) {
      ((HttpEntity)localObject).consumeContent();
    }
    if (i != 0)
    {
      if (l == null) {
        return;
      }
      l.uploadCompleted(arg);
    }
    label271:
  }
  
  public void setHttpParams(Object[] paramArrayOfObject)
  {
    params = paramArrayOfObject;
  }
  
  public void setNotifyListener(HttpUploader.HttpUploadListener paramHttpUploadListener)
  {
    l = paramHttpUploadListener;
  }
  
  public void setPrivateArg(Object paramObject)
  {
    arg = paramObject;
  }
  
  public void setUploadEntity(HttpEntity paramHttpEntity)
  {
    uploadEntity = paramHttpEntity;
  }
  
  public void startUpload()
  {
    d_thread = new HttpUploader.1(this);
    d_thread.start();
  }
  
  public void stopUpload()
  {
    exit = true;
    try
    {
      d_thread.interrupt();
      Thread.sleep(200L);
      d_thread.destroy();
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.utils.HttpUploader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */