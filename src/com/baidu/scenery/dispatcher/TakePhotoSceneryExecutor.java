package com.baidu.scenery.dispatcher;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.baidu.scenery.SceneryLibrary;
import com.baidu.scenery.dispatcher.commondialog.DialogActivity;
import com.baidu.scenery.utils.DevicesUtils;
import com.baidu.scenery.utils.LogHelper;
import java.io.File;

class TakePhotoSceneryExecutor
  extends AbstractSceneryExecutor
{
  private static final boolean DEBUG = ;
  public static final boolean DEF_CHECK_FACE = true;
  public static final boolean DEF_NOT_SUPPORT_CHECK_DESKTOP_FUN_ON = false;
  public static final long MINI_IMAGE_SIZE = 307200L;
  private static final String TAG = "scenery";
  boolean mCheckFace = true;
  boolean mSwitch4Android51 = false;
  
  public TakePhotoSceneryExecutor()
  {
    mCloudRecommendPkg = "cn.jingling.motu.photowonder";
  }
  
  private boolean checkPhotoFile(Bundle paramBundle)
  {
    boolean bool2 = false;
    Context localContext = SceneryLibrary.getAppContext();
    paramBundle = paramBundle.getString("scenery_extra_uri");
    boolean bool1;
    if (TextUtils.isEmpty(paramBundle))
    {
      bool1 = bool2;
      if (DEBUG)
      {
        LogHelper.i("scenery", getName() + ": file url is empty");
        bool1 = bool2;
      }
    }
    do
    {
      do
      {
        long l;
        do
        {
          File localFile;
          do
          {
            do
            {
              return bool1;
              paramBundle = RuleUtils.getRealFilePath(localContext, Uri.parse(paramBundle));
              if (!TextUtils.isEmpty(paramBundle)) {
                break;
              }
              bool1 = bool2;
            } while (!DEBUG);
            LogHelper.i("scenery", getName() + ": file path is empty");
            return false;
            localFile = new File(paramBundle);
            if (localFile.exists()) {
              break;
            }
            bool1 = bool2;
          } while (!DEBUG);
          LogHelper.i("scenery", getName() + ": file not exist, file path: " + paramBundle);
          return false;
          l = localFile.length();
          if (l >= 307200L) {
            break;
          }
          bool1 = bool2;
        } while (!DEBUG);
        LogHelper.i("scenery", getName() + ": file is too small, file size: " + l + ", we need " + 307200L);
        return false;
        if (!mCheckFace) {
          break;
        }
        bool2 = RuleUtils.isFaceImage(localContext, paramBundle);
        bool1 = bool2;
      } while (bool2);
      bool1 = bool2;
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": check face failed");
    return bool2;
    if (DEBUG) {
      LogHelper.i("scenery", getName() + ": not need check face");
    }
    return true;
  }
  
  public boolean checkConfigRules(Bundle paramBundle)
  {
    long l1 = paramBundle.getLong("scenery_extra_start_time");
    long l2 = SystemClock.elapsedRealtime();
    if (l2 - l1 >= 300000L) {
      if (DEBUG) {
        LogHelper.i("scenery", "task start time: " + l1 + ", now: " + l2);
      }
    }
    Context localContext;
    do
    {
      do
      {
        return false;
      } while (!super.checkConfigRules(paramBundle));
      localContext = SceneryLibrary.getAppContext();
      if ((Build.VERSION.SDK_INT < 22) && (!DevicesUtils.isGalaxyNoteEdge())) {
        break label136;
      }
      if (mSwitch4Android51) {
        break;
      }
    } while (!DEBUG);
    LogHelper.i("scenery", getName() + ": switch for android5.1 off");
    return false;
    return true;
    label136:
    if (RuleUtils.isGalleryFirst(localContext))
    {
      paramBundle.putString("scenery_extra_source", "extra_source_gallery");
      return true;
    }
    if (DEBUG) {
      LogHelper.i("scenery", getName() + ": gallery is not at the top of screen");
    }
    if (RuleUtils.isHomeFirst(localContext))
    {
      paramBundle.putString("scenery_extra_source", "extra_source_home");
      return true;
    }
    if (DEBUG) {
      LogHelper.i("scenery", getName() + ": home is not at the top of screen");
    }
    SceneryDispatcher.getInstance().onSceneryOccurDelay(getName(), paramBundle, 3000L);
    return false;
  }
  
  protected boolean childHandleScenery(Bundle paramBundle)
  {
    if (!checkPhotoFile(paramBundle)) {}
    do
    {
      return false;
      Context localContext = SceneryLibrary.getAppContext();
      Intent localIntent = new Intent(localContext, DialogActivity.class);
      localIntent.addFlags(268435456);
      localIntent.putExtra("scenery_extra_name", getName());
      localIntent.putExtra("scenery_extra_recommend_package", getRecommendPkgName());
      localIntent.setPackage(localContext.getPackageName());
      if (Build.VERSION.SDK_INT < 22)
      {
        paramBundle = paramBundle.getString("scenery_extra_source");
        localIntent.putExtra("scenery_extra_source", paramBundle);
        if (DEBUG) {
          LogHelper.i("scenery", getName() + " source " + paramBundle);
        }
      }
      try
      {
        SceneryLibrary.getAppContext().startActivity(localIntent);
        return true;
      }
      catch (Throwable paramBundle) {}
    } while (!DEBUG);
    LogHelper.d("scenery", getName() + ": childHandleScenery:Exception=" + paramBundle.getMessage());
    return false;
  }
  
  public String getName()
  {
    return "scenery_take_photo";
  }
  
  protected String getRecommendPkgName()
  {
    if (!TextUtils.isEmpty(mCloudRecommendPkg)) {
      return mCloudRecommendPkg;
    }
    return "cn.jingling.motu.photowonder";
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.dispatcher.TakePhotoSceneryExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */