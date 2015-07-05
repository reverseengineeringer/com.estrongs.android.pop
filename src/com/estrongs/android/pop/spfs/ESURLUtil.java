package com.estrongs.android.pop.spfs;

import java.net.HttpURLConnection;
import java.net.URL;

public class ESURLUtil
{
  public static int getLength(String paramString)
  {
    paramString = (HttpURLConnection)new URL(paramString).openConnection();
    int i = paramString.getContentLength();
    paramString.disconnect();
    return i;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.ESURLUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */