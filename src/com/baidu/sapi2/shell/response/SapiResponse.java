package com.baidu.sapi2.shell.response;

public class SapiResponse
{
  public int errorCode;
  public String errorMsg;
  
  public SapiResponse()
  {
    errorCode = -100;
    errorMsg = "";
  }
  
  public SapiResponse(int paramInt, String paramString)
  {
    errorCode = paramInt;
    errorMsg = paramString;
  }
}

/* Location:
 * Qualified Name:     com.baidu.sapi2.shell.response.SapiResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */