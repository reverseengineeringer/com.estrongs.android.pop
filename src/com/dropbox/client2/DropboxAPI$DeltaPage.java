package com.dropbox.client2;

import com.dropbox.client2.jsonextract.JsonExtractor;
import com.dropbox.client2.jsonextract.JsonList;
import com.dropbox.client2.jsonextract.JsonMap;
import com.dropbox.client2.jsonextract.JsonThing;
import java.util.List;

public final class DropboxAPI$DeltaPage<MD>
{
  public final String cursor;
  public final List<DropboxAPI.DeltaEntry<MD>> entries;
  public final boolean hasMore;
  public final boolean reset;
  
  public DropboxAPI$DeltaPage(boolean paramBoolean1, List<DropboxAPI.DeltaEntry<MD>> paramList, String paramString, boolean paramBoolean2)
  {
    reset = paramBoolean1;
    entries = paramList;
    cursor = paramString;
    hasMore = paramBoolean2;
  }
  
  public static <MD> DeltaPage<MD> extractFromJson(JsonThing paramJsonThing, JsonExtractor<MD> paramJsonExtractor)
  {
    paramJsonThing = paramJsonThing.expectMap();
    boolean bool1 = paramJsonThing.get("reset").expectBoolean();
    String str = paramJsonThing.get("cursor").expectString();
    boolean bool2 = paramJsonThing.get("has_more").expectBoolean();
    return new DeltaPage(bool1, paramJsonThing.get("entries").expectList().extract(new DropboxAPI.DeltaEntry.JsonExtractor(paramJsonExtractor)), str, bool2);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.DeltaPage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */