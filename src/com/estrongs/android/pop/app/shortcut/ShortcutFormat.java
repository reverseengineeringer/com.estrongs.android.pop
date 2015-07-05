package com.estrongs.android.pop.app.shortcut;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class ShortcutFormat
  implements Serializable
{
  private static final long serialVersionUID = 7052862220747674236L;
  public Map<String, Object> attribute = new HashMap();
  private Map<String, String> atts = new HashMap(5);
  private String bffVersion = "1.0";
  public boolean deleteAble = true;
  public String host;
  public boolean needAuth;
  public String path;
  public int port;
  public String schema;
  public String shortcutName;
  public String targetLocation;
  protected String type;
  
  public String getAttribute(String paramString)
  {
    return (String)atts.get(paramString);
  }
  
  public String getFormatVersion()
  {
    return bffVersion;
  }
  
  public void putAttribute(String paramString1, String paramString2)
  {
    atts.put(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.shortcut.ShortcutFormat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */