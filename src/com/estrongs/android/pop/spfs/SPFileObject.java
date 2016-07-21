package com.estrongs.android.pop.spfs;

import com.estrongs.android.util.ap;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.w;
import java.util.List;

public class SPFileObject
  extends com.estrongs.fs.a
{
  public String description;
  private boolean familyFlag;
  private boolean friendFlag;
  private boolean isDirectory;
  private List<com.gmail.yuyang226.flickr.a.a> notes;
  public String ownerId;
  public String ownerUsername;
  private boolean publicFlag;
  
  public SPFileObject(SPFileInfo paramSPFileInfo)
  {
    super(path);
    setName(name);
    isDirectory = isDirectory;
    size = size;
    lastModified = lastModifiedTime;
    publicFlag = publicFlag;
    friendFlag = friendFlag;
    familyFlag = familyFlag;
    notes = notes;
    description = description;
    ownerId = ownerId;
    ownerUsername = ownerUsername;
  }
  
  protected w doGetFileType()
  {
    if (isDirectory) {
      return w.a;
    }
    return w.b;
  }
  
  public boolean exists()
  {
    try
    {
      boolean bool = SPFileSystem.exists(path);
      return bool;
    }
    catch (Exception localException)
    {
      throw new FileSystemException(localException);
    }
  }
  
  public String getDescription()
  {
    return description;
  }
  
  public List<com.gmail.yuyang226.flickr.a.a> getNotes()
  {
    return notes;
  }
  
  public String getOwnerId()
  {
    return ownerId;
  }
  
  public String getOwnerUsername()
  {
    return ownerUsername;
  }
  
  public boolean isFamilyFlag()
  {
    return familyFlag;
  }
  
  public boolean isFriendFlag()
  {
    return friendFlag;
  }
  
  public boolean isPublicFlag()
  {
    return publicFlag;
  }
  
  public void setDescription(String paramString)
  {
    description = paramString;
  }
  
  public void setFamilyFlag(boolean paramBoolean)
  {
    familyFlag = paramBoolean;
  }
  
  public void setFriendFlag(boolean paramBoolean)
  {
    friendFlag = paramBoolean;
  }
  
  public void setName(String paramString)
  {
    if (ap.aC(path))
    {
      String str = paramString;
      if (name != null)
      {
        str = paramString;
        if (!ap.ar(path).startsWith("/files")) {
          str = paramString.substring(paramString.lastIndexOf(">") + 1);
        }
      }
      super.setName(str);
      return;
    }
    name = paramString;
  }
  
  public void setOwnerId(String paramString)
  {
    ownerId = paramString;
  }
  
  public void setOwnerUsername(String paramString)
  {
    ownerUsername = paramString;
  }
  
  public void setPublicFlag(boolean paramBoolean)
  {
    publicFlag = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.SPFileObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */