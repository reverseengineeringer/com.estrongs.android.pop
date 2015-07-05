package org.apache.http.entity.mime;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.entity.mime.content.ContentBody;
import org.apache.http.message.BasicHeader;

public class MultipartEntity
  implements HttpEntity
{
  private static final char[] MULTIPART_CHARS = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private final Header contentType;
  private volatile boolean dirty;
  private long length;
  private final HttpMultipart multipart;
  
  public MultipartEntity()
  {
    this(HttpMultipartMode.STRICT, null, null);
  }
  
  public MultipartEntity(HttpMultipartMode paramHttpMultipartMode)
  {
    this(paramHttpMultipartMode, null, null);
  }
  
  public MultipartEntity(HttpMultipartMode paramHttpMultipartMode, String paramString, Charset paramCharset)
  {
    String str = paramString;
    if (paramString == null) {
      str = generateBoundary();
    }
    paramString = paramHttpMultipartMode;
    if (paramHttpMultipartMode == null) {
      paramString = HttpMultipartMode.STRICT;
    }
    multipart = new HttpMultipart("form-data", paramCharset, str, paramString);
    contentType = new BasicHeader("Content-Type", generateContentType(str, paramCharset));
    dirty = true;
  }
  
  public void addPart(String paramString, ContentBody paramContentBody)
  {
    addPart(new FormBodyPart(paramString, paramContentBody));
  }
  
  public void addPart(FormBodyPart paramFormBodyPart)
  {
    multipart.addBodyPart(paramFormBodyPart);
    dirty = true;
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  protected String generateBoundary()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int j = localRandom.nextInt(11);
    int i = 0;
    while (i < j + 30)
    {
      localStringBuilder.append(MULTIPART_CHARS[localRandom.nextInt(MULTIPART_CHARS.length)]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  protected String generateContentType(String paramString, Charset paramCharset)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("multipart/form-data; boundary=");
    localStringBuilder.append(paramString);
    if (paramCharset != null)
    {
      localStringBuilder.append("; charset=");
      localStringBuilder.append(paramCharset.name());
    }
    return localStringBuilder.toString();
  }
  
  public InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    if (dirty)
    {
      length = multipart.getTotalLength();
      dirty = false;
    }
    return length;
  }
  
  public Header getContentType()
  {
    return contentType;
  }
  
  public boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public boolean isRepeatable()
  {
    Iterator localIterator = multipart.getBodyParts().iterator();
    while (localIterator.hasNext()) {
      if (((FormBodyPart)localIterator.next()).getBody().getContentLength() < 0L) {
        return false;
      }
    }
    return true;
  }
  
  public boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    multipart.writeTo(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.MultipartEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */