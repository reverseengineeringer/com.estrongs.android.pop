package com.dropbox.client2;

import com.dropbox.client2.jsonextract.JsonExtractor;
import com.dropbox.client2.jsonextract.JsonList;
import com.dropbox.client2.jsonextract.JsonThing;

public final class DropboxAPI$DeltaEntry$JsonExtractor<MD>
  extends JsonExtractor<DropboxAPI.DeltaEntry<MD>>
{
  public final JsonExtractor<MD> mdExtractor;
  
  public DropboxAPI$DeltaEntry$JsonExtractor(JsonExtractor<MD> paramJsonExtractor)
  {
    mdExtractor = paramJsonExtractor;
  }
  
  public static <MD> DropboxAPI.DeltaEntry<MD> extract(JsonThing paramJsonThing, JsonExtractor<MD> paramJsonExtractor)
  {
    paramJsonThing = paramJsonThing.expectList();
    return new DropboxAPI.DeltaEntry(paramJsonThing.get(0).expectString(), paramJsonThing.get(1).optionalExtract(paramJsonExtractor));
  }
  
  public DropboxAPI.DeltaEntry<MD> extract(JsonThing paramJsonThing)
  {
    return extract(paramJsonThing, mdExtractor);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.DeltaEntry.JsonExtractor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */