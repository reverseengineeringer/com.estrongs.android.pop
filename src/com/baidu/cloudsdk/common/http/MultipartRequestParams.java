package com.baidu.cloudsdk.common.http;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;

public class MultipartRequestParams
  extends RequestParams
{
  protected HashMap<String, MultipartRequestParams.FileWrapper> mFileParams = new HashMap();
  
  public MultipartRequestParams() {}
  
  public MultipartRequestParams(String paramString1, String paramString2)
  {
    super(paramString1, paramString2);
  }
  
  public MultipartRequestParams(Map<String, String> paramMap)
  {
    super(paramMap);
  }
  
  public MultipartRequestParams(Object... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  public HttpEntity getHttpEntity()
  {
    if (mFileParams.isEmpty()) {
      localObject1 = super.getHttpEntity();
    }
    MultipartEntity localMultipartEntity;
    Object localObject2;
    int j;
    int i;
    do
    {
      return (HttpEntity)localObject1;
      localMultipartEntity = new MultipartEntity();
      localObject1 = mParams.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localMultipartEntity.addPart((String)((Map.Entry)localObject2).getKey(), (String)((Map.Entry)localObject2).getValue());
      }
      localObject1 = mParamsWithArray.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject1).next();
        localObject2 = (String)((Map.Entry)localObject3).getKey();
        localObject3 = ((ArrayList)((Map.Entry)localObject3).getValue()).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          str = (String)((Iterator)localObject3).next();
          if (!TextUtils.isEmpty(str)) {
            localMultipartEntity.addPart((String)localObject2, str);
          }
        }
      }
      j = mFileParams.entrySet().size();
      localObject2 = mFileParams.entrySet().iterator();
      i = 0;
      localObject1 = localMultipartEntity;
    } while (!((Iterator)localObject2).hasNext());
    Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
    Object localObject1 = (MultipartRequestParams.FileWrapper)((Map.Entry)localObject3).getValue();
    localObject3 = (String)((Map.Entry)localObject3).getKey();
    String str = ((MultipartRequestParams.FileWrapper)localObject1).getFileName();
    InputStream localInputStream = mIn;
    localObject1 = mContentType;
    if (i == j - 1) {}
    for (boolean bool = true;; bool = false)
    {
      localMultipartEntity.addPart((String)localObject3, str, localInputStream, (String)localObject1, bool);
      i += 1;
      break;
    }
  }
  
  protected StringBuilder getStringBuilder()
  {
    StringBuilder localStringBuilder = super.getStringBuilder();
    Iterator localIterator = mFileParams.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)localEntry.getKey()).append("=").append("FILE");
    }
    return localStringBuilder;
  }
  
  public void put(String paramString, File paramFile)
  {
    if (paramFile != null) {
      put(paramString, new FileInputStream(paramFile), paramFile.getName());
    }
  }
  
  public void put(String paramString, InputStream paramInputStream)
  {
    put(paramString, paramInputStream, null);
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2))
    {
      put(paramString1, paramInputStream, paramString2, "png");
      return;
    }
    put(paramString1, paramInputStream, paramString2, URLConnection.getFileNameMap().getContentTypeFor(paramString2));
  }
  
  public void put(String paramString1, InputStream paramInputStream, String paramString2, String paramString3)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (paramInputStream != null)) {
      mFileParams.put(paramString1, new MultipartRequestParams.FileWrapper(paramInputStream, paramString2, paramString3));
    }
  }
  
  public void remove(String paramString)
  {
    super.remove(paramString);
    if (paramString != null) {
      mFileParams.remove(paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.MultipartRequestParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */