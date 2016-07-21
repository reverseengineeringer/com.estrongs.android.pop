package com.flurry.sdk;

import android.text.TextUtils;
import android.util.Base64;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class eb
{
  private static Map<String, String> a = new HashMap();
  private static Map<String, String> b = new HashMap();
  private static Map<String, String> c = new HashMap();
  
  static
  {
    try
    {
      b = lv.a(d("ewogICJlbiI6ICJQb3N0IiwKICAiZGUiOiAiUG9zdGVuIiwKICAiZXMiOiAiUHVibGljYXIiLAogICJmciI6ICJQdWJsaWVyIiwKICAiaXQiOiAiUHViYmxpY2EiLAogICJqYSI6ICLmipXnqL8iLAogICJrbyI6ICLtj6zsiqTtjIUiLAogICJubCI6ICJQbGFhdHNlbiIsCiAgInBsIjogIld5xZtsaWoiLAogICJwdF9QVCI6ICJQdWJsaWNhciIsCiAgInB0X0JSIjogIlB1YmxpY2FyIiwKICAicnUiOiAi0J7Qv9GD0LHQu9C40LouIiwKICAidHIiOiAiR8O2bmRlciIsCiAgInpoX0NOIjogIuWPkeW4liIsCiAgInpoX1RXIjogIuiyvOaWhyIKfQ=="));
      a = lv.a(d("ewogICJlbiI6ICJBZGQgYSBjYXB0aW9uLCBpZiB5b3UgbGlrZSIsCiAgImRlIjogIkbDvGdlIGVpbmUgQmlsZHVudGVyc2NocmlmdCBoaW56dSwgd2VubiBkdSBtYWdzdCIsCiAgImVzIjogIlNpIHF1aWVyZXMsIHB1ZWRlcyBhw7FhZGlyIHVuYSBkZXNjcmlwY2nDs24iLAogICJmciI6ICJBam91dGV6IHVuZSBsw6lnZW5kZSBzaSB2b3VzIHZvdWxleiIsCiAgIml0IjogIkFnZ2l1bmdpIHVuIHRpdG9sbywgc2UgdnVvaSIsCiAgImphIjogIuOCreODo+ODl+OCt+ODp+ODs+OBrui/veWKoCjjgqrjg5fjgrfjg6fjg7MpIiwKICAia28iOiAi7IKs7KeEIOyEpOuqhSDstpTqsIAgKOyYteyFmCkiLAogICJubCI6ICJWb2VnIGVlbiBiaWpzY2hyaWZ0IHRvZSwgYWxzIGplIHdpbCIsCiAgInBsIjogIkplxZtsaSBjaGNlc3osIGRvZGFqIHBvZHBpcyIsCiAgInB0X1BUIjogIkFkaWNpb25lIHVtYSBsZWdlbmRhLCBzZSB2b2PDqiBxdWlzZXIiLAogICJwdF9CUiI6ICJBZGljaW9uYSBsZWdlbmRhLCBzZSBxdWlzZXJlcyIsCiAgInJ1IjogItCV0YHQu9C4INGF0L7RgtC40YLQtSwg0LTQvtCx0LDQstGM0YLQtSDQv9C+0LTQv9C40YHRjCIsCiAgInRyIjogIkRpbGVyc2VuIHJlc2ltIHlhesSxc8SxIGVrbGUiLAogICJ6aF9DTiI6ICLkvaDlj6/ku6XlnKjmraTmt7vliqDor7TmmI4iLAogICJ6aF9UVyI6ICLkvaDkuZ/lj6/ku6XliqDkuIrnhafniYfoqqrmmI4iCn0="));
      c = lv.a(d("ewogICJlbiI6ICJUaXRsZSIsCiAgImRlIjogIlRpdGVsIiwKICAiZXMiOiAiVMOtdHVsbyIsCiAgImZyIjogIlRpdHJlIiwKICAiaXQiOiAiVGl0b2xvIiwKICAiamEiOiAi44K/44Kk44OI44OrIiwKICAia28iOiAi7KCc66qpIiwKICAibmwiOiAiVGl0ZWwiLAogICJwbCI6ICJXecWbbGlqIiwKICAicHRfUFQiOiAiVMOtdHVsbyIsCiAgInB0X0JSIjogIlTDrXR1bG8iLAogICJydSI6ICLQl9Cw0LPQvtC70L7QstC+0LouIiwKICAidHIiOiAiQmHFn2zEsWsiLAogICJ6aF9DTiI6ICLmoIfpopgiLAogICJ6aF9UVyI6ICLmqJnpoYwiCn0="));
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public static int a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return -1;
    }
    try
    {
      int i = new JSONObject(paramString).getJSONObject("meta").getInt("status");
      return i;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
    return -1;
  }
  
  public static String a()
  {
    Locale localLocale = Locale.getDefault();
    String str = localLocale.getLanguage();
    if ((str.equals("zh")) || (str.equals("pt"))) {
      return (String)b.get(localLocale.toString());
    }
    if (b.containsKey(str)) {
      return (String)b.get(str);
    }
    return "Post";
  }
  
  public static String b()
  {
    return "Cancel";
  }
  
  public static List<String> b(String paramString)
  {
    localArrayList = new ArrayList();
    try
    {
      paramString = new JSONObject(paramString).getJSONObject("response").getJSONObject("user").getJSONArray("blogs");
      int i = 0;
      while (i < paramString.length())
      {
        localArrayList.add(paramString.getJSONObject(i).getString("name"));
        i += 1;
      }
      return localArrayList;
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public static Long c(String paramString)
  {
    try
    {
      long l = new JSONObject(paramString).getJSONObject("response").getLong("id");
      return Long.valueOf(l);
    }
    catch (JSONException paramString)
    {
      paramString.printStackTrace();
    }
    return Long.valueOf(Long.MIN_VALUE);
  }
  
  public static String c()
  {
    return "Edit";
  }
  
  public static String d()
  {
    Locale localLocale = Locale.getDefault();
    String str = localLocale.getLanguage();
    if ((str.equals("zh")) || (str.equals("pt"))) {
      return (String)a.get(localLocale.toString());
    }
    if (a.containsKey(str)) {
      return (String)a.get(str);
    }
    return "Add a caption, if you like";
  }
  
  private static JSONObject d(String paramString)
  {
    return new JSONObject(new String(Base64.decode(paramString, 0)));
  }
  
  public static String e()
  {
    Locale localLocale = Locale.getDefault();
    String str = localLocale.getLanguage();
    if ((str.equals("zh")) || (str.equals("pt"))) {
      return (String)c.get(localLocale.toString());
    }
    if (c.containsKey(str)) {
      return (String)c.get(str);
    }
    return "Title";
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */