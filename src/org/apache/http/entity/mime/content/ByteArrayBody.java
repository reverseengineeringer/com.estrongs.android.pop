package org.apache.http.entity.mime.content;

import java.io.OutputStream;

public class ByteArrayBody
  extends AbstractContentBody
{
  private final byte[] data;
  private final String filename;
  
  public ByteArrayBody(byte[] paramArrayOfByte, String paramString)
  {
    this(paramArrayOfByte, "application/octet-stream", paramString);
  }
  
  public ByteArrayBody(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    super(paramString1);
    if (paramArrayOfByte == null) {
      throw new IllegalArgumentException("byte[] may not be null");
    }
    data = paramArrayOfByte;
    filename = paramString2;
  }
  
  public String getCharset()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return data.length;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public String getTransferEncoding()
  {
    return "binary";
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(data);
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.ByteArrayBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */