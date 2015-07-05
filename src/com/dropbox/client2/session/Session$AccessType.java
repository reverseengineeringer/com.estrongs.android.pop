package com.dropbox.client2.session;

public enum Session$AccessType
{
  DROPBOX("dropbox"),  APP_FOLDER("sandbox"),  AUTO("auto");
  
  private final String urlPart;
  
  private Session$AccessType(String paramString1)
  {
    urlPart = paramString1;
  }
  
  public String toString()
  {
    return urlPart;
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.session.Session.AccessType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */