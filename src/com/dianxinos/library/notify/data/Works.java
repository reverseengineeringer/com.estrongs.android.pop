package com.dianxinos.library.notify.data;

import android.text.TextUtils;
import java.util.LinkedHashMap;
import org.json.JSONException;
import org.json.JSONObject;

public class Works
  extends LinkedHashMap<String, String>
{
  public String mCategory;
  private String mFileName;
  private String mFileUrl = null;
  private String mFirstWork = null;
  
  private String getFirstWork()
  {
    if (mFirstWork != null) {
      return mFirstWork;
    }
    if ("rcmapk".equals(mCategory)) {
      mFirstWork = ((String)get("download"));
    }
    for (;;)
    {
      return mFirstWork;
      if ("open".equals(mCategory))
      {
        mFirstWork = ((String)get("open"));
      }
      else if ("pandorajar".equals(mCategory))
      {
        mFirstWork = ((String)get("runjar"));
      }
      else if ("pandoraapk".equals(mCategory))
      {
        mFirstWork = ((String)get("runapk"));
      }
      else if ("splash".equals(mCategory))
      {
        mFirstWork = ((String)get("download"));
        if (TextUtils.isEmpty(mFirstWork)) {
          mFirstWork = ((String)get("open"));
        }
      }
      else if ("uninstall".equals(mCategory))
      {
        mFirstWork = ((String)get("uninstall"));
      }
    }
  }
  
  public String getDownloadFileName()
  {
    if (!TextUtils.isEmpty(mFileName)) {
      return mFileName;
    }
    if (!containsKey("download")) {
      return null;
    }
    String str = (String)get("download");
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    try
    {
      mFileName = new JSONObject(str).optString("fileName");
      str = mFileName;
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String getDownloadWorkUrl()
  {
    try
    {
      String str = (String)get("download");
      if (TextUtils.isEmpty(str)) {
        return null;
      }
      str = new JSONObject(str).optString("url");
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String getFileUrl()
  {
    if (mFileUrl != null) {
      return mFileUrl;
    }
    if (!containsKey("download")) {
      return null;
    }
    String str = (String)get("download");
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    try
    {
      mFileUrl = new JSONObject(str).optString("url");
      str = mFileUrl;
      return str;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  public String getNextWork(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return getFirstWork();
    }
    if ("rcmapk".equals(mCategory))
    {
      if ("download".equals(paramString)) {
        return (String)get("checksum");
      }
      if ("checksum".equals(paramString)) {
        return (String)get("install");
      }
      if ("install".equals(paramString)) {
        return (String)get("open");
      }
    }
    else if ("splash".equals(mCategory))
    {
      if ("download".equals(paramString)) {
        return (String)get("checksum");
      }
      if ("checksum".equals(paramString)) {
        return (String)get("install");
      }
      if ("install".equals(paramString)) {
        return (String)get("open");
      }
    }
    return null;
  }
  
  public String getTypeFromOpen(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    for (;;)
    {
      return null;
      try
      {
        paramString = new JSONObject(paramString);
        String str = paramString.getString("work");
        if ((!TextUtils.isEmpty(str)) && (str.equals("open")))
        {
          paramString = paramString.getString("type");
          return paramString;
        }
      }
      catch (JSONException paramString) {}
    }
    return null;
  }
  
  public String getWorkName(String paramString)
  {
    try
    {
      paramString = new JSONObject(paramString).getString("work");
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
  
  public String put(String paramString1, String paramString2)
  {
    String str = (String)super.put(paramString1, paramString2);
    if (!"download".equals(paramString1)) {
      return str;
    }
    try
    {
      paramString1 = new JSONObject(paramString2);
      paramString1.put("work", "checksum");
      super.put("checksum", paramString1.toString());
      return str;
    }
    catch (JSONException paramString1) {}
    return str;
  }
}

/* Location:
 * Qualified Name:     com.dianxinos.library.notify.data.Works
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */