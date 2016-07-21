package com.estrongs.fs;

public abstract interface h
{
  public abstract long createdTime();
  
  public abstract boolean exists();
  
  public abstract String getAbsolutePath();
  
  public abstract int getESFileType();
  
  public abstract Object getExtra(String paramString);
  
  public abstract w getFileType();
  
  public abstract String getName();
  
  public abstract String getPath();
  
  public abstract boolean hasPermission(int paramInt);
  
  public abstract boolean isLink();
  
  public abstract long lastAccessed();
  
  public abstract long lastModified();
  
  public abstract long length();
  
  public abstract Object putExtra(String paramString, Object paramObject);
  
  public abstract void setESFileType(int paramInt);
  
  public abstract void setFileType(w paramw);
  
  public abstract void setName(String paramString);
  
  public abstract void setShouldTryLoadThumbnail(boolean paramBoolean);
  
  public abstract boolean shouldTryLoadThumbnail();
}

/* Location:
 * Qualified Name:     com.estrongs.fs.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */