package com.baidu.mobstat;

import android.content.Context;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public class l
{
  public static JSONObject a(Context paramContext, String paramString)
  {
    StringBuffer localStringBuffer;
    try
    {
      paramContext = paramContext.openFileInput(paramString);
      if (paramContext == null)
      {
        n.c("Invalid jsonobject file " + paramString);
        return null;
      }
      localStringBuffer = new StringBuffer();
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        i = paramContext.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localStringBuffer.append(new String(arrayOfByte, 0, i));
      }
      paramContext.close();
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
      return null;
    }
    int i = localStringBuffer.length();
    if (i != 0) {
      try
      {
        paramContext = new JSONObject(localStringBuffer.toString());
        return paramContext;
      }
      catch (JSONException paramContext)
      {
        paramContext.printStackTrace();
        return null;
      }
    }
    n.a(paramString + " is empty! return null!");
    return null;
  }
  
  public static void a(Context paramContext, String paramString, JSONObject paramJSONObject)
  {
    n.a("File is: " + paramString + "; Content is: " + paramJSONObject.toString());
    paramContext = paramContext.openFileOutput(paramString, 0);
    paramContext.write(paramJSONObject.toString().getBytes());
    paramContext.flush();
    paramContext.close();
  }
}

/* Location:
 * Qualified Name:     com.baidu.mobstat.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */