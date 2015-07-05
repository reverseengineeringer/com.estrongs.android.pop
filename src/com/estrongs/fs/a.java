package com.estrongs.fs;

import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.am;

public abstract class a
  implements h
{
  protected String absolutePath;
  protected int esType = -2;
  protected TypedMap extras = null;
  protected boolean isLink = false;
  protected boolean isShouldTryLoadThumbnail = true;
  protected long lastModified = -1L;
  protected String linkTarget = null;
  protected String name;
  protected String path;
  protected long size = -1L;
  protected m type = m.M;
  
  public a() {}
  
  public a(String paramString)
  {
    path = paramString;
    absolutePath = paramString;
  }
  
  public a(String paramString, m paramm)
  {
    this(paramString);
  }
  
  public a(String paramString1, String paramString2)
  {
    path = paramString1;
    absolutePath = paramString2;
  }
  
  public a(String paramString1, String paramString2, m paramm)
  {
    this(paramString1, paramString2);
  }
  
  protected boolean canDelete()
  {
    return true;
  }
  
  protected boolean canRead()
  {
    return true;
  }
  
  protected boolean canWrite()
  {
    return true;
  }
  
  public long createdTime()
  {
    return lastModified();
  }
  
  protected m doGetFileType()
  {
    return type;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject != null) && ((paramObject instanceof h)))
    {
      paramObject = (h)paramObject;
      if (absolutePath != null) {
        return absolutePath.equalsIgnoreCase(((h)paramObject).getAbsolutePath());
      }
    }
    return false;
  }
  
  public boolean exists()
  {
    return false;
  }
  
  public String getAbsolutePath()
  {
    return absolutePath;
  }
  
  public int getESFileType()
  {
    return esType;
  }
  
  public Object getExtra(String paramString)
  {
    if (extras != null) {
      return extras.get(paramString);
    }
    return null;
  }
  
  public m getFileType()
  {
    if (type == m.M) {
      type = doGetFileType();
    }
    return type;
  }
  
  public String getLinkTarget()
  {
    return linkTarget;
  }
  
  public String getName()
  {
    if (name == null) {
      name = am.d(absolutePath);
    }
    if (name == null) {
      name = "";
    }
    return name;
  }
  
  public String getPath()
  {
    return am.bx(path);
  }
  
  public boolean hasPermission(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return canRead();
    case 1: 
      return canWrite();
    }
    return canDelete();
  }
  
  public boolean isLink()
  {
    return isLink;
  }
  
  public long lastAccessed()
  {
    return lastModified();
  }
  
  public long lastModified()
  {
    return lastModified;
  }
  
  public long length()
  {
    return size;
  }
  
  public Object putExtra(String paramString, Object paramObject)
  {
    if (extras == null) {
      extras = new TypedMap();
    }
    return extras.put(paramString, paramObject);
  }
  
  public void setESFileType(int paramInt)
  {
    esType = paramInt;
  }
  
  public void setFileType(m paramm)
  {
    type = paramm;
  }
  
  public void setName(String paramString)
  {
    if (((name == null) && (paramString == null)) || ((name != null) && (name.equals(paramString)))) {
      return;
    }
    if (name != null)
    {
      String str = name;
      path = (path.substring(0, path.lastIndexOf(str)) + paramString);
      absolutePath = (absolutePath.substring(0, absolutePath.lastIndexOf(str)) + paramString);
    }
    name = paramString;
    esType = -2;
  }
  
  public void setShouldTryLoadThumbnail(boolean paramBoolean)
  {
    isShouldTryLoadThumbnail = paramBoolean;
  }
  
  public boolean shouldTryLoadThumbnail()
  {
    return isShouldTryLoadThumbnail;
  }
  
  public String toString()
  {
    return getAbsolutePath();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */