package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

@me
public class kc
  extends Handler
{
  private final kb a;
  
  public kc(Context paramContext)
  {
    this(new kd(paramContext));
  }
  
  public kc(kb paramkb)
  {
    a = paramkb;
  }
  
  private void a(JSONObject paramJSONObject)
  {
    try
    {
      a.a(paramJSONObject.getString("request_id"), paramJSONObject.getString("base_url"), paramJSONObject.getString("html"));
      return;
    }
    catch (Exception paramJSONObject) {}
  }
  
  public void handleMessage(Message paramMessage)
  {
    try
    {
      paramMessage = paramMessage.getData();
      if (paramMessage == null) {
        return;
      }
      paramMessage = new JSONObject(paramMessage.getString("data"));
      if ("fetch_html".equals(paramMessage.getString("message_name")))
      {
        a(paramMessage);
        return;
      }
    }
    catch (Exception paramMessage) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */