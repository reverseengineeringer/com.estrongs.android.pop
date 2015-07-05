package com.baidu.cloudsdk.common.http;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams
{
  protected static final String ENCODING = "UTF-8";
  protected HashMap<String, String> mParams = new HashMap();
  protected HashMap<String, ArrayList<String>> mParamsWithArray = new HashMap();
  
  public RequestParams() {}
  
  public RequestParams(String paramString1, String paramString2)
  {
    this();
    put(paramString1, paramString2);
  }
  
  public RequestParams(Map<String, String> paramMap)
  {
    this();
    if (paramMap != null)
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        put((String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
  }
  
  public RequestParams(Object... paramVarArgs)
  {
    this();
    int j = paramVarArgs.length;
    if (j % 2 != 0) {
      throw new IllegalArgumentException("Supplied arguments must be even");
    }
    int i = 0;
    if (i < j)
    {
      if ((paramVarArgs[i] == null) || (paramVarArgs[(i + 1)] == null)) {}
      for (;;)
      {
        i += 2;
        break;
        put(String.valueOf(paramVarArgs[i]), String.valueOf(paramVarArgs[(i + 1)]));
      }
    }
  }
  
  private List<BasicNameValuePair> getParamsList()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = mParams.entrySet().iterator();
    Object localObject1;
    while (localIterator.hasNext())
    {
      localObject1 = (Map.Entry)localIterator.next();
      localLinkedList.add(new BasicNameValuePair((String)((Map.Entry)localObject1).getKey(), (String)((Map.Entry)localObject1).getValue()));
    }
    localIterator = mParamsWithArray.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      localObject1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = ((ArrayList)((Map.Entry)localObject2).getValue()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        if (!TextUtils.isEmpty(str)) {
          localLinkedList.add(new BasicNameValuePair((String)localObject1, str));
        }
      }
    }
    return localLinkedList;
  }
  
  public HttpEntity getHttpEntity()
  {
    try
    {
      UrlEncodedFormEntity localUrlEncodedFormEntity = new UrlEncodedFormEntity(getParamsList(), "UTF-8");
      return localUrlEncodedFormEntity;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return null;
  }
  
  public final String getQueryString()
  {
    return URLEncodedUtils.format(getParamsList(), "UTF-8");
  }
  
  protected StringBuilder getStringBuilder()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = mParams.entrySet().iterator();
    Object localObject1;
    while (localIterator.hasNext())
    {
      localObject1 = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      localStringBuilder.append((String)((Map.Entry)localObject1).getKey()).append("=").append((String)((Map.Entry)localObject1).getValue());
    }
    localIterator = mParamsWithArray.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      if (localStringBuilder.length() > 0) {
        localStringBuilder.append("&");
      }
      int i = 1;
      localObject1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = ((ArrayList)((Map.Entry)localObject2).getValue()).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        String str = (String)((Iterator)localObject2).next();
        if (!TextUtils.isEmpty(str))
        {
          if (i == 0) {
            localStringBuilder.append("&");
          }
          i = 0;
          localStringBuilder.append((String)localObject1).append("=").append(str);
        }
      }
    }
    return localStringBuilder;
  }
  
  public void put(String paramString1, String paramString2)
  {
    if ((!TextUtils.isEmpty(paramString1)) && (!TextUtils.isEmpty(paramString2))) {
      mParams.put(paramString1, paramString2);
    }
  }
  
  public void put(String paramString, ArrayList<String> paramArrayList)
  {
    if ((!TextUtils.isEmpty(paramString)) && (paramArrayList != null) && (paramArrayList.size() > 0)) {
      mParamsWithArray.put(paramString, paramArrayList);
    }
  }
  
  public void remove(String paramString)
  {
    if (paramString != null)
    {
      mParams.remove(paramString);
      mParamsWithArray.remove(paramString);
    }
  }
  
  public final String toString()
  {
    return getStringBuilder().toString();
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.RequestParams
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */