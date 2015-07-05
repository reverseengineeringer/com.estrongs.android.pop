package com.dropbox.client2;

import com.dropbox.client2.jsonextract.JsonExtractor;
import com.dropbox.client2.jsonextract.JsonMap;
import com.dropbox.client2.jsonextract.JsonThing;
import java.util.Map;

class DropboxAPI$Entry$1
  extends JsonExtractor<DropboxAPI.Entry>
{
  public DropboxAPI.Entry extract(JsonThing paramJsonThing)
  {
    return new DropboxAPI.Entry((Map)expectMapinternal);
  }
}

/* Location:
 * Qualified Name:     com.dropbox.client2.DropboxAPI.Entry.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */