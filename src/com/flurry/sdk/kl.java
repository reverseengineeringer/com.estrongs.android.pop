package com.flurry.sdk;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class kl
{
  private final Pattern a = Pattern.compile(".*?(%\\{\\w+\\}).*?");
  
  public String a(String paramString)
  {
    paramString = a.matcher(paramString);
    if (paramString.matches()) {
      return paramString.group(1);
    }
    return null;
  }
  
  protected boolean a(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return false;
    }
    return paramString2.equals("%{" + paramString1 + "}");
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */