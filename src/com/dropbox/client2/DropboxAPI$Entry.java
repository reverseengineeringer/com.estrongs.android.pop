package com.dropbox.client2;

import com.dropbox.client2.jsonextract.JsonExtractor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.simple.JSONArray;

public class DropboxAPI$Entry
{
  public static final JsonExtractor<Entry> JsonExtractor = new DropboxAPI.Entry.1();
  public long bytes;
  public String clientMtime;
  public List<Entry> contents;
  public String hash;
  public String icon;
  public boolean isDeleted;
  public boolean isDir;
  public String mimeType;
  public String modified;
  public String path;
  public String rev;
  public String root;
  public String size;
  public boolean thumbExists;
  
  public DropboxAPI$Entry() {}
  
  public DropboxAPI$Entry(Map<String, Object> paramMap)
  {
    bytes = DropboxAPI.getFromMapAsLong(paramMap, "bytes");
    hash = ((String)paramMap.get("hash"));
    icon = ((String)paramMap.get("icon"));
    isDir = DropboxAPI.getFromMapAsBoolean(paramMap, "is_dir");
    modified = ((String)paramMap.get("modified"));
    clientMtime = ((String)paramMap.get("client_mtime"));
    path = ((String)paramMap.get("path"));
    root = ((String)paramMap.get("root"));
    size = ((String)paramMap.get("size"));
    mimeType = ((String)paramMap.get("mime_type"));
    rev = ((String)paramMap.get("rev"));
    thumbExists = DropboxAPI.getFromMapAsBoolean(paramMap, "thumb_exists");
    isDeleted = DropboxAPI.getFromMapAsBoolean(paramMap, "is_deleted");
    paramMap = paramMap.get("contents");
    if ((paramMap != null) && ((paramMap instanceof JSONArray)))
    {
      contents = new ArrayList();
      paramMap = ((JSONArray)paramMap).iterator();
      for (;;)
      {
        if (!paramMap.hasNext()) {
          return;
        }
        Object localObject = paramMap.next();
        if ((localObject instanceof Map)) {
          contents.add(new Entry((Map)localObject));
        }
      }
    }
    contents = null;
  }
  
  public String fileName()
  {
    int i = path.lastIndexOf('/');
    return path.substring(i + 1, path.length());
  }
  
  public String parentPath()
  {
    if (path.equals("/")) {
      return "";
    }
    int i = path.lastIndexOf('/');
    return path.substring(0, i + 1);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.Entry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */