package org.apache.http.entity.mime.content;

import java.io.OutputStream;

public abstract interface ContentBody
  extends ContentDescriptor
{
  public abstract String getFilename();
  
  public abstract void writeTo(OutputStream paramOutputStream);
}

/* Location:
 * Qualified Name:     org.apache.http.entity.mime.content.ContentBody
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */