package com.dropbox.client2;

import com.dropbox.client2.jsonextract.JsonMap;
import com.dropbox.client2.jsonextract.JsonThing;

public final class DropboxAPI$CreatedCopyRef
{
  public final String copyRef;
  public final String expiration;
  
  public DropboxAPI$CreatedCopyRef(String paramString1, String paramString2)
  {
    copyRef = paramString1;
    expiration = paramString2;
  }
  
  public static CreatedCopyRef extractFromJson(JsonThing paramJsonThing)
  {
    paramJsonThing = paramJsonThing.expectMap();
    return new CreatedCopyRef(paramJsonThing.get("copy_ref").expectString(), paramJsonThing.get("expires").expectString());
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.CreatedCopyRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */