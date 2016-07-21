package com.estrongs.android.pop.spfs.flickr;

import com.estrongs.android.pop.netfs.utils.FastPipedInputStream;
import com.estrongs.android.pop.netfs.utils.UploadOutputStream;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.util.ap;
import com.estrongs.fs.z;
import java.util.List;

class FlickrFileSystem$2
  extends Thread
{
  FlickrFileSystem$2(FlickrFileSystem paramFlickrFileSystem, List paramList, String paramString1, UploadOutputStream paramUploadOutputStream, TypedMap paramTypedMap, String paramString2, FastPipedInputStream paramFastPipedInputStream) {}
  
  public void run()
  {
    for (;;)
    {
      int i;
      try
      {
        com.gmail.yuyang226.flickr.c.b localb = (com.gmail.yuyang226.flickr.c.b)FlickrFileSystem.access$000(this$0, "be578355f122df0a", val$parameters, val$username);
        if (localb.b())
        {
          val$out.setResult(false);
          return;
        }
        val$out.setResult(true);
        if (val$options.get("sets") != null)
        {
          List localList = (List)val$options.get("sets");
          i = 0;
          if (i < localList.size()) {
            if (getid != null)
            {
              FlickrFileSystem.access$100(this$0, val$username, getid, localb.e());
              if (getpath != null) {
                com.estrongs.fs.a.b.a().a(new z(getpath + "/" + localb.e()));
              }
            }
            else
            {
              Album localAlbum = this$0.createAlbum(val$username, getname, getdescription, localb.e());
              getid = id;
              getpath = path;
              getname = name;
              getdescription = description;
              com.estrongs.fs.a.b.a().a(new z(ap.b("Flickr", val$username, val$passwd, "/album/" + getid)));
            }
          }
        }
      }
      catch (Exception localException1)
      {
        try
        {
          localException1.printStackTrace();
          val$out.setResult(false);
          val$out.setErrorMessage(localException1.getMessage());
          val$in.close();
          return;
        }
        catch (Exception localException2) {}
      }
      return;
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.flickr.FlickrFileSystem.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */