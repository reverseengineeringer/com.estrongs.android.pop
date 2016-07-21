package com.estrongs.android.pop.spfs.facebook;

import com.estrongs.android.util.bk;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import org.json.JSONException;
import org.json.JSONObject;

final class FacebookFileSystem$1
  extends BufferedOutputStream
{
  FacebookFileSystem$1(OutputStream paramOutputStream, HttpURLConnection paramHttpURLConnection)
  {
    super(paramOutputStream);
  }
  
  public void close()
  {
    write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
    super.close();
    try
    {
      String str1 = FacebookFileSystem.access$000(val$conn.getInputStream());
      try
      {
        if (bk.a(new JSONObject(str1).getString("id"))) {
          throw new IOException("Failed to upload");
        }
      }
      catch (JSONException localJSONException)
      {
        throw new IOException("Failed to upload");
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      for (;;)
      {
        String str2 = FacebookFileSystem.access$000(val$conn.getErrorStream());
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.facebook.FacebookFileSystem.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */