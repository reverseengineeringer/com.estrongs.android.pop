package com.dropbox.client2.exception;

import java.io.BufferedReader;
import java.io.IOException;

public class DropboxParseException
  extends DropboxException
{
  private static final long serialVersionUID = 1L;
  
  public DropboxParseException(BufferedReader paramBufferedReader)
  {
    super("failed to parse: " + stringifyBody(paramBufferedReader));
  }
  
  public DropboxParseException(String paramString)
  {
    super(paramString);
  }
  
  public static String stringifyBody(BufferedReader paramBufferedReader)
  {
    if (paramBufferedReader != null) {}
    try
    {
      paramBufferedReader.reset();
      StringBuffer localStringBuffer = new StringBuffer();
      for (;;)
      {
        try
        {
          str = paramBufferedReader.readLine();
          if (str != null) {
            continue;
          }
        }
        catch (IOException paramBufferedReader)
        {
          String str;
          continue;
        }
        return localStringBuffer.toString();
        localStringBuffer.append(str);
      }
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.exception.DropboxParseException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */