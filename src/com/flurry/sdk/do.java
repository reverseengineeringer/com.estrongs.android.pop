package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class do
  implements lb<dg>
{
  private static final String a = do.class.getSimpleName();
  
  public dg a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject = new String(lt.a(paramInputStream));
    kg.a(5, a, "SDK Log response string: " + (String)localObject);
    paramInputStream = new dg();
    try
    {
      localObject = new JSONObject((String)localObject);
      a = dm.b((JSONObject)localObject, "result");
      b = dm.a((JSONObject)localObject, "errors");
      return paramInputStream;
    }
    catch (JSONException paramInputStream)
    {
      throw new IOException("Exception while deserialize:", paramInputStream);
    }
  }
  
  public void a(OutputStream paramOutputStream, dg paramdg)
  {
    throw new IOException(a + " Serialize not supported for response");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */