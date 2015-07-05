package org.apache.http.entity.mime.content;

import java.io.InputStream;
import java.io.OutputStream;

public class InputStreamBody
  extends AbstractContentBody
{
  private final String filename;
  private final InputStream in;
  
  public InputStreamBody(InputStream paramInputStream, String paramString)
  {
    this(paramInputStream, "application/octet-stream", paramString);
  }
  
  public InputStreamBody(InputStream paramInputStream, String paramString1, String paramString2)
  {
    super(paramString1);
    if (paramInputStream == null) {
      throw new IllegalArgumentException("Input stream may not be null");
    }
    in = paramInputStream;
    filename = paramString2;
  }
  
  public String getCharset()
  {
    return null;
  }
  
  public long getContentLength()
  {
    return -1L;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public InputStream getInputStream()
  {
    return in;
  }
  
  public String getTransferEncoding()
  {
    return "binary";
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null) {
      throw new IllegalArgumentException("Output stream may not be null");
    }
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = in.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
      paramOutputStream.flush();
    }
    finally
    {
      in.close();
    }
    in.close();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.InputStreamBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */