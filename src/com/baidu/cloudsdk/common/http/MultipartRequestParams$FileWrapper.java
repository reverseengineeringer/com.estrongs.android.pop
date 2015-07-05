package com.baidu.cloudsdk.common.http;

import java.io.InputStream;

class MultipartRequestParams$FileWrapper
{
  public String mContentType;
  public String mFileName;
  public InputStream mIn;
  
  public MultipartRequestParams$FileWrapper(InputStream paramInputStream, String paramString1, String paramString2)
  {
    mIn = paramInputStream;
    mFileName = paramString1;
    mContentType = paramString2;
  }
  
  public String getFileName()
  {
    if (mFileName != null) {
      return mFileName;
    }
    return "nofilename";
  }
}

/* Location:
 * Qualified Name:     com.baidu.cloudsdk.common.http.MultipartRequestParams.FileWrapper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */