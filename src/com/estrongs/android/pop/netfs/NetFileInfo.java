package com.estrongs.android.pop.netfs;

import java.util.HashMap;

public class NetFileInfo
{
  public static final int FOLDER_TYPE_DEVICE = 1;
  public static final int FOLDER_TYPE_FOLDER = 0;
  public static final int FOLDER_TYPE_RECV_SHARED = 8;
  public static final int FOLDER_TYPE_SHARED = 64;
  public static final int FOLDER_TYPE_VIRTUAL = 32;
  public static final int FOLDER_TYPE_VIRTUAL_ARCHIVE = 16;
  public static final int FOLDER_TYPE_VIRTUAL_BFCASE = 2;
  public static final int FOLDER_TYPE_VIRTUAL_PHOTO = 4;
  public static final String INTENT_FILE_URL = "intent_file_url";
  public static final String MIME_TYPE = "mime_type";
  public static final String PUBLIC_SHARE = "public_share_link";
  public static final String WEB_FILE_URL = "web_file_url";
  public long createdTime = 0L;
  private HashMap<String, Object> extras;
  public int folder_type = 0;
  public boolean hidden = false;
  public boolean isDirectory = false;
  public long lastAccessTime = 0L;
  public long lastModifiedTime = 0L;
  public int md5_block_size = -1;
  public String md5s = null;
  public String name = null;
  public String path = null;
  public boolean readable = true;
  public long size = 0L;
  public int version = 1;
  public boolean writable = true;
  
  public Object getExtra(String paramString)
  {
    if (extras != null) {
      return extras.get(paramString);
    }
    return null;
  }
  
  public Object putExtra(String paramString, Object paramObject)
  {
    if (extras == null) {
      extras = new HashMap();
    }
    return extras.put(paramString, paramObject);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.netfs.NetFileInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */