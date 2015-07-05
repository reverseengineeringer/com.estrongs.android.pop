package com.estrongs.android.pop.spfs.task;

import com.estrongs.a.a.m;
import com.estrongs.a.q;
import com.estrongs.android.pop.spfs.Album;
import com.estrongs.android.pop.spfs.AlbumException;
import com.estrongs.android.pop.spfs.PhotoInfoException;
import com.estrongs.android.pop.spfs.PhotoInfoManager;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.util.TypedMap;
import java.util.List;

public class FlickrEditTask
  extends com.estrongs.a.a
{
  SPFileObject fo;
  TypedMap privacies;
  
  public FlickrEditTask(SPFileObject paramSPFileObject, TypedMap paramTypedMap)
  {
    fo = paramSPFileObject;
    privacies = paramTypedMap;
  }
  
  public void handleMessage(int paramInt, Object... paramVarArgs)
  {
    switch (paramInt)
    {
    default: 
      super.handleMessage(paramInt, paramVarArgs);
      return;
    }
    m localm = processData;
    d += ((Long)paramVarArgs[0]).longValue();
    processData.a = ((String)paramVarArgs[1]);
  }
  
  public boolean task()
  {
    for (;;)
    {
      int i;
      try
      {
        if (privacies.getString("title") != null)
        {
          PhotoInfoManager.setMeta(fo.getPath(), privacies.getString("title"), privacies.getString("description"));
          fo.setName(privacies.getString("title"));
          fo.setDescription(privacies.getString("description"));
        }
        if (privacies.getString("tags") != null) {
          PhotoInfoManager.setTags(fo.getPath(), privacies.getString("tags"));
        }
        if (privacies.get("sets") != null)
        {
          List localList1 = (List)privacies.get("sets");
          i = 0;
          if (i < localList1.size())
          {
            Album localAlbum = (Album)localList1.get(i);
            if (id != null)
            {
              PhotoInfoManager.addPhoto(path, com.estrongs.fs.a.a.b(fo.getPath()));
              break label433;
            }
            PhotoInfoManager.createAlbum(name, description, fo.getPath());
            break label433;
          }
        }
      }
      catch (PhotoInfoException localPhotoInfoException)
      {
        localPhotoInfoException = localPhotoInfoException;
        localPhotoInfoException.printStackTrace();
        setTaskResult(10000, new q(localPhotoInfoException.toString(), localPhotoInfoException));
        return false;
        if (privacies.get("sets_delete") != null)
        {
          List localList2 = (List)privacies.get("sets_delete");
          i = 0;
          if (i < localList2.size())
          {
            PhotoInfoManager.removePhoto(getpath, com.estrongs.fs.a.a.b(fo.getPath()));
            i += 1;
            continue;
          }
        }
        if (privacies.get("is_public") != null)
        {
          PhotoInfoManager.setPerms(fo.getPath(), privacies);
          fo.setPublicFlag(privacies.getBoolean("is_public"));
          fo.setFriendFlag(privacies.getBoolean("is_friend"));
          fo.setFamilyFlag(privacies.getBoolean("is_family"));
        }
        setTaskResult(0, null);
        return true;
      }
      catch (AlbumException localAlbumException)
      {
        localAlbumException = localAlbumException;
        localAlbumException.printStackTrace();
        setTaskResult(10000, new q(localAlbumException.toString(), localAlbumException));
        return false;
      }
      catch (Exception localException)
      {
        localException = localException;
        localException.printStackTrace();
        setTaskResult(10000, new q(localException.toString(), localException));
        return false;
      }
      finally {}
      label433:
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.spfs.task.FlickrEditTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */