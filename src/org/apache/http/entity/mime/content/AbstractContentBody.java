package org.apache.http.entity.mime.content;

public abstract class AbstractContentBody
  implements ContentBody
{
  private final String mediaType;
  private final String mimeType;
  private final String subType;
  
  public AbstractContentBody(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("MIME type may not be null");
    }
    mimeType = paramString;
    int i = paramString.indexOf('/');
    if (i != -1)
    {
      mediaType = paramString.substring(0, i);
      subType = paramString.substring(i + 1);
      return;
    }
    mediaType = paramString;
    subType = null;
  }
  
  public String getMediaType()
  {
    return mediaType;
  }
  
  public String getMimeType()
  {
    return mimeType;
  }
  
  public String getSubType()
  {
    return subType;
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.AbstractContentBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */