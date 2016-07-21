package com.flurry.sdk;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class du
  implements lb<cm>
{
  private static final String a = du.class.getSimpleName();
  
  public cm a(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return null;
    }
    Object localObject = new String(lt.a(paramInputStream));
    kg.a(5, a, "Ad response string: " + (String)localObject);
    paramInputStream = new cm();
    try
    {
      localObject = new JSONObject((String)localObject);
      a = dv.a((JSONObject)localObject);
      b = dv.b((JSONObject)localObject);
      d = dv.c((JSONObject)localObject);
      c = dv.d((JSONObject)localObject);
      return paramInputStream;
    }
    catch (JSONException paramInputStream)
    {
      throw new IOException("Exception while deserialize:", paramInputStream);
    }
  }
  
  public void a(OutputStream paramOutputStream, cm paramcm)
  {
    throw new IOException("Serialize not supported for response");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */