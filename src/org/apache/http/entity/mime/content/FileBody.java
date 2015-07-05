package org.apache.http.entity.mime.content;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;

public class FileBody
  extends AbstractContentBody
{
  private final String charset;
  private final File file;
  private final String filename;
  
  public FileBody(File paramFile)
  {
    this(paramFile, "application/octet-stream");
  }
  
  public FileBody(File paramFile, String paramString)
  {
    this(paramFile, paramString, null);
  }
  
  public FileBody(File paramFile, String paramString1, String paramString2)
  {
    this(paramFile, null, paramString1, paramString2);
  }
  
  public FileBody(File paramFile, String paramString1, String paramString2, String paramString3)
  {
    super(paramString2);
    if (paramFile == null) {
      throw new IllegalArgumentException("File may not be null");
    }
    file = paramFile;
    if (paramString1 != null) {}
    for (filename = paramString1;; filename = paramFile.getName())
    {
      charset = paramString3;
      return;
    }
  }
  
  public String getCharset()
  {
    return charset;
  }
  
  public long getContentLength()
  {
    return file.length();
  }
  
  public File getFile()
  {
    return file;
  }
  
  public String getFilename()
  {
    return filename;
  }
  
  public InputStream getInputStream()
  {
    return new FileInputStream(file);
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
    FileInputStream localFileInputStream = new FileInputStream(file);
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = localFileInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localFileInputStream.close();
    }
    localFileInputStream.close();
  }
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.FileBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */