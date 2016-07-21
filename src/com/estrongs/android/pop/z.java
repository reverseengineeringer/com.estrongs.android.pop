package com.estrongs.android.pop;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.os.Build;
import com.estrongs.android.pop.app.AudioPlayerProxyActivity;
import com.estrongs.android.pop.app.BrowserDownloaderActivity;
import com.estrongs.android.pop.app.ESContentChooserActivity;
import com.estrongs.android.pop.app.ESFileSharingActivity;
import com.estrongs.android.pop.app.ESRingtoneChooserActivity;
import com.estrongs.android.pop.app.ESWallPaperChooserActivity;
import com.estrongs.android.pop.app.PopRemoteImageBrowser;
import com.estrongs.android.pop.app.PopVideoPlayerProxyActivity;
import com.estrongs.android.pop.app.SaveToESActivity;
import com.estrongs.android.pop.app.compress.CompressionProxyActivity;
import com.estrongs.android.pop.esclasses.i;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.a;
import com.estrongs.android.pop.view.utils.u;
import com.estrongs.android.util.ap;
import com.estrongs.android.util.l;
import com.estrongs.fs.util.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

public class z
{
  public static String A = null;
  public static boolean B = false;
  public static boolean C = false;
  public static boolean D = false;
  public static boolean E = false;
  public static boolean F = false;
  public static boolean G = false;
  public static boolean H = false;
  public static String I = null;
  public static boolean J = false;
  public static boolean K = false;
  public static boolean L = false;
  public static boolean M = true;
  public static boolean N = true;
  public static boolean O = false;
  public static boolean P = false;
  public static boolean Q = false;
  public static boolean R = false;
  public static boolean S = false;
  public static boolean T = false;
  public static boolean U = false;
  public static boolean V = false;
  public static boolean W = false;
  public static ArrayList<aa> X = null;
  public static boolean Y = false;
  public static boolean Z = false;
  public static final String a = z.class.getSimpleName();
  public static boolean aa = false;
  public static boolean ab = false;
  public static boolean ac = false;
  public static boolean ad = false;
  public static boolean ae = false;
  public static boolean af = false;
  public static boolean ag = false;
  public static boolean ah = false;
  public static boolean ai = false;
  public static boolean aj = true;
  public static List<String> ak = null;
  public static boolean al = false;
  public static boolean am = false;
  public static boolean an = false;
  public static boolean ao = false;
  public static boolean ap = false;
  public static boolean aq = false;
  public static boolean ar = false;
  public static boolean as = false;
  public static boolean at = false;
  public static boolean au = false;
  public static boolean av = false;
  public static String b = null;
  public static String c = null;
  public static boolean d = false;
  public static boolean e = true;
  public static boolean f = true;
  public static boolean g = true;
  public static boolean h = true;
  public static boolean i = true;
  public static boolean j = true;
  public static boolean k = false;
  public static List<String> l = null;
  public static boolean m = false;
  public static boolean n = false;
  public static List<String> o = null;
  public static List<ab> p = null;
  public static List<String> q = null;
  public static boolean r = false;
  public static boolean s = false;
  public static boolean t = false;
  public static boolean u = false;
  public static boolean v = false;
  public static boolean w = false;
  public static boolean x = false;
  public static boolean y = false;
  public static boolean z = false;
  
  public static String a(String paramString)
  {
    String str = null;
    if (paramString.equals("homepage")) {
      str = "#home_page#";
    }
    if (paramString.equals("home")) {
      str = "#home#";
    }
    do
    {
      return str;
      if (paramString.equals("device")) {
        return "/";
      }
      if (paramString.equals("sdcard")) {
        return "/sdcard";
      }
      if (paramString.equals("picture")) {
        return "pic://";
      }
      if (paramString.equals("music")) {
        return "music://";
      }
      if (paramString.equals("movie")) {
        return "video://";
      }
      if (paramString.equals("book")) {
        return "book://";
      }
      if (paramString.equals("download")) {
        return "Download";
      }
      if (paramString.equals("lan")) {
        return "smb://";
      }
      if (paramString.equals("cloud")) {
        return "net://";
      }
      if (paramString.equals("pcs")) {
        return "pcs://";
      }
      if (paramString.equals("ftp")) {
        return "ftp://";
      }
      if (paramString.equals("bluetooth")) {
        return "bt://";
      }
      if (paramString.equals("appManager")) {
        return "app://";
      }
      if (paramString.equals("sdcardAnalyst"))
      {
        str = b.b();
        paramString = str;
        if (!str.endsWith("/")) {
          paramString = str + "/";
        }
        return "du://" + paramString;
      }
      if (paramString.equals("remoteManager")) {
        return "remote://";
      }
    } while (!paramString.equals("downloadManager"));
    return "download://";
  }
  
  private static ArrayList<aa> a(Object paramObject)
  {
    JSONArray localJSONArray = (JSONArray)paramObject;
    if ((localJSONArray == null) || (localJSONArray.size() == 0)) {
      return null;
    }
    paramObject = new ArrayList();
    int i1 = 0;
    try
    {
      while (i1 < localJSONArray.size())
      {
        String[] arrayOfString = ((String)localJSONArray.get(i1)).split(":");
        aa localaa = new aa();
        a = (arrayOfString[0].trim() + ",");
        arrayOfString = arrayOfString[1].split(",");
        b = arrayOfString[0].trim();
        c = arrayOfString[1].trim();
        ((ArrayList)paramObject).add(localaa);
        i1 += 1;
      }
      return (ArrayList<aa>)paramObject;
    }
    catch (Exception localException) {}
  }
  
  public static void a()
  {
    
    if ((Build.MODEL != null) && (Build.MODEL.contains("IdeaPad"))) {
      x = true;
    }
    if (a.b.equalsIgnoreCase("Amazon"))
    {
      f = false;
      P = true;
    }
    if (a.b.equalsIgnoreCase("工信部"))
    {
      m = true;
      w = true;
    }
    W = false;
    if ((a.b.equalsIgnoreCase("Anzhi")) || (a.b.equalsIgnoreCase("Zhihuiyun"))) {
      f = false;
    }
    if ((a.b.equalsIgnoreCase("TmallBox")) || (a.b.equalsIgnoreCase("Shafa")))
    {
      f = false;
      ai = true;
      R = true;
      P = true;
    }
    if (cu.d(FexApplication.a())) {
      P = true;
    }
  }
  
  public static String b(String paramString)
  {
    String str2 = c(paramString);
    String str1 = str2;
    if (str2 == null) {
      str1 = ap.d(paramString);
    }
    return str1;
  }
  
  private static void b()
  {
    label2471:
    label2494:
    label2517:
    label2540:
    label2563:
    label2586:
    label2609:
    label2632:
    label2675:
    label2676:
    String str2;
    for (Object localObject1 = "/system/etc/ESOemConfig";; str2 = "/sdcard/ESOemConfig")
    {
      Object localObject2;
      for (;;)
      {
        try
        {
          if (!new File("/system/etc/ESOemConfig").exists())
          {
            if (new File("/sdcard/ESOemConfig").exists()) {
              break label2676;
            }
            localObject1 = new File(FexApplication.a().getFilesDir(), "ESOemConfig");
            if (!((File)localObject1).exists())
            {
              if (!"Yingbang".equals(a.b)) {
                break label2675;
              }
              j.a((File)localObject1, "{\"oem\" : \"TV\",\"home_dir\" : \"/sdcard\",\"disable_audio_player\" : true,\"disable_video_player\" : true,\"disable_es_share\" : true,\"show_albumart\" : false,\"enable_recomm\" : false,\"disable_guide\" : true,\"large_layout\" : true,\"enable_bt\" : false,\"disable_send_on_homepage\" : true,\"enable_navi_recomm\" : false,\"enable_default_web_bookmarks\" : false,\"enable_hot_pcs_res\" : false}");
              localObject1 = ((File)localObject1).getAbsolutePath();
            }
          }
          else
          {
            localObject2 = new JSONParser();
            localObject1 = new FileReader((String)localObject1);
            localObject2 = (JSONObject)((JSONParser)localObject2).parse((Reader)localObject1);
            if (localObject2 != null) {
              continue;
            }
            return;
          }
          localObject1 = ((File)localObject1).getAbsolutePath();
          continue;
          if (((JSONObject)localObject2).containsKey("oem")) {
            b = (String)((JSONObject)localObject2).get("oem");
          }
          if (((JSONObject)localObject2).containsKey("home_dir")) {
            c = ((JSONObject)localObject2).get("home_dir").toString();
          }
          if (((JSONObject)localObject2).containsKey("disable_smb")) {
            d = ((Boolean)((JSONObject)localObject2).get("disable_smb")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_bt")) {
            e = ((Boolean)((JSONObject)localObject2).get("enable_bt")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_recomm")) {
            f = ((Boolean)((JSONObject)localObject2).get("enable_recomm")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_navi_recomm")) {
            g = ((Boolean)((JSONObject)localObject2).get("enable_navi_recomm")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_default_web_bookmarks")) {
            h = ((Boolean)((JSONObject)localObject2).get("enable_default_web_bookmarks")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_hot_pcs_res")) {
            i = ((Boolean)((JSONObject)localObject2).get("enable_hot_pcs_res")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_help")) {
            k = ((Boolean)((JSONObject)localObject2).get("disable_help")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_appmgr")) {
            j = ((Boolean)((JSONObject)localObject2).get("enable_appmgr")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("oem_about")) {
            m = ((Boolean)((JSONObject)localObject2).get("oem_about")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_root_dir")) {
            n = ((Boolean)((JSONObject)localObject2).get("disable_root_dir")).booleanValue();
          }
          JSONArray localJSONArray;
          if (((JSONObject)localObject2).containsKey("hide_paths"))
          {
            localJSONArray = (JSONArray)((JSONObject)localObject2).get("hide_paths");
            if (localJSONArray.size() > 0) {
              l = localJSONArray;
            }
          }
          if (((JSONObject)localObject2).containsKey("storage_patterns"))
          {
            localJSONArray = (JSONArray)((JSONObject)localObject2).get("storage_patterns");
            if (localJSONArray.size() > 0) {
              o = localJSONArray;
            }
          }
          if (((JSONObject)localObject2).containsKey("storage_names"))
          {
            localJSONArray = (JSONArray)((JSONObject)localObject2).get("storage_names");
            if (localJSONArray.size() > 0)
            {
              p = new ArrayList();
              int i1 = 0;
              if (i1 < localJSONArray.size())
              {
                JSONObject localJSONObject = (JSONObject)localJSONArray.get(i1);
                ab localab = new ab();
                a = localJSONObject.get("storage_path").toString();
                b = localJSONObject.get("storage_show_name").toString();
                try
                {
                  c = localJSONObject.get("lang").toString();
                  p.add(localab);
                  i1 += 1;
                }
                catch (Exception localException)
                {
                  c = null;
                  continue;
                }
              }
            }
          }
          String str1;
          ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, AudioPlayerProxyActivity.class.getName()), 1, 1);
        }
        catch (FileNotFoundException localFileNotFoundException)
        {
          l.b(a, "OEC Config file not found");
          return;
          if (((JSONObject)localObject2).containsKey("init_windows"))
          {
            localJSONArray = (JSONArray)((JSONObject)localObject2).get("init_windows");
            if (localJSONArray.size() > 0) {
              q = localJSONArray;
            }
          }
          if (((JSONObject)localObject2).containsKey("disable_audio_player")) {
            r = ((Boolean)((JSONObject)localObject2).get("disable_audio_player")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_video_player")) {
            s = ((Boolean)((JSONObject)localObject2).get("disable_video_player")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_decompress")) {
            t = ((Boolean)((JSONObject)localObject2).get("disable_decompress")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_drag")) {
            v = ((Boolean)((JSONObject)localObject2).get("disable_drag")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_compress")) {
            u = ((Boolean)((JSONObject)localObject2).get("disable_compress")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("data_notify")) {
            w = ((Boolean)((JSONObject)localObject2).get("data_notify")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_bitmap_inPuragable")) {
            x = ((Boolean)((JSONObject)localObject2).get("disable_bitmap_inPuragable")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_autoUpdate_check")) {
            y = ((Boolean)((JSONObject)localObject2).get("disable_autoUpdate_check")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("show_statistics")) {
            z = ((Boolean)((JSONObject)localObject2).get("show_statistics")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("otg_name")) {
            A = (String)((JSONObject)localObject2).get("otg_name");
          }
          if (((JSONObject)localObject2).containsKey("disable_taskmgr")) {
            B = ((Boolean)((JSONObject)localObject2).get("disable_taskmgr")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_root_explorer")) {
            C = ((Boolean)((JSONObject)localObject2).get("disable_root_explorer")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_netmgr")) {
            D = ((Boolean)((JSONObject)localObject2).get("disable_netmgr")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_imgviewer")) {
            E = ((Boolean)((JSONObject)localObject2).get("disable_imgviewer")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_intent_getcontent")) {
            F = ((Boolean)((JSONObject)localObject2).get("disable_intent_getcontent")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_intent_setwallpaper")) {
            G = ((Boolean)((JSONObject)localObject2).get("disable_intent_setwallpaper")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_intent_setringtone")) {
            H = ((Boolean)((JSONObject)localObject2).get("disable_intent_setringtone")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("ftp_server_home_dir")) {
            I = (String)((JSONObject)localObject2).get("ftp_server_home_dir");
          }
          if (((JSONObject)localObject2).containsKey("disable_es_share")) {
            J = ((Boolean)((JSONObject)localObject2).get("disable_es_share")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("use_text_wifi")) {
            K = ((Boolean)((JSONObject)localObject2).get("use_text_wifi")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_player_setringtone")) {
            L = ((Boolean)((JSONObject)localObject2).get("disable_player_setringtone")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("show_albumart")) {
            M = ((Boolean)((JSONObject)localObject2).get("show_albumart")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_pcs_drive")) {
            N = ((Boolean)((JSONObject)localObject2).get("enable_pcs_drive")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_theme")) {
            P = ((Boolean)((JSONObject)localObject2).get("disable_theme")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("large_layout")) {
            O = ((Boolean)((JSONObject)localObject2).get("large_layout")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_lang_select")) {
            Q = ((Boolean)((JSONObject)localObject2).get("disable_lang_select")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_gesture")) {
            R = ((Boolean)((JSONObject)localObject2).get("disable_gesture")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_root_select")) {
            S = ((Boolean)((JSONObject)localObject2).get("disable_root_select")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_es_download")) {
            T = ((Boolean)((JSONObject)localObject2).get("disable_es_download")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_cloud")) {
            U = ((Boolean)((JSONObject)localObject2).get("disable_cloud")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_pcs_third")) {
            V = ((Boolean)((JSONObject)localObject2).get("disable_pcs_third")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_pcs")) {
            W = ((Boolean)((JSONObject)localObject2).get("disable_pcs")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_recycle")) {
            ag = ((Boolean)((JSONObject)localObject2).get("disable_recycle")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("default_apps")) {
            X = a(((JSONObject)localObject2).get("default_apps"));
          }
          if (((JSONObject)localObject2).containsKey("mount_smb")) {
            Y = ((Boolean)((JSONObject)localObject2).get("mount_smb")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_hide")) {
            Z = ((Boolean)((JSONObject)localObject2).get("disable_hide")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("spreadtrum_inmem")) {
            aa = ((Boolean)((JSONObject)localObject2).get("spreadtrum_inmem")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_ellipsized_text")) {
            ab = ((Boolean)((JSONObject)localObject2).get("enable_ellipsized_text")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("scan_oem_ext_columns")) {
            ac = ((Boolean)((JSONObject)localObject2).get("scan_oem_ext_columns")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_home_shortcut")) {
            ad = ((Boolean)((JSONObject)localObject2).get("disable_home_shortcut")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_remotemgr")) {
            ae = ((Boolean)((JSONObject)localObject2).get("disable_remotemgr")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_clipboard")) {
            af = ((Boolean)((JSONObject)localObject2).get("disable_clipboard")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_tdls")) {
            ah = ((Boolean)((JSONObject)localObject2).get("enable_tdls")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_guide")) {
            ai = ((Boolean)((JSONObject)localObject2).get("disable_guide")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_disk_remain_message")) {
            aj = ((Boolean)((JSONObject)localObject2).get("disable_disk_remain_message")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_send_on_homepage")) {
            al = ((Boolean)((JSONObject)localObject2).get("disable_send_on_homepage")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("unsupported_ringtone_format"))
          {
            localJSONArray = (JSONArray)((JSONObject)localObject2).get("unsupported_ringtone_format");
            if (localJSONArray.size() > 0) {
              ak = localJSONArray;
            }
          }
          if (((JSONObject)localObject2).containsKey("disable_category_movie")) {
            am = ((Boolean)((JSONObject)localObject2).get("disable_category_movie")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_install_notification")) {
            an = ((Boolean)((JSONObject)localObject2).get("disable_install_notification")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_history")) {
            ao = ((Boolean)((JSONObject)localObject2).get("disable_history")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_app_folder_module")) {
            ap = ((Boolean)((JSONObject)localObject2).get("disable_app_folder_module")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_virtual_bookmarks")) {
            aq = ((Boolean)((JSONObject)localObject2).get("disable_virtual_bookmarks")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_save_to_es")) {
            ar = ((Boolean)((JSONObject)localObject2).get("disable_save_to_es")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("always_android_way")) {
            as = ((Boolean)((JSONObject)localObject2).get("always_android_way")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("disable_chromecast")) {
            at = ((Boolean)((JSONObject)localObject2).get("disable_chromecast")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_share_audios_by_audiotype")) {
            au = ((Boolean)((JSONObject)localObject2).get("enable_share_audios_by_audiotype")).booleanValue();
          }
          if (((JSONObject)localObject2).containsKey("enable_use_wma_as_ringtone")) {
            av = ((Boolean)((JSONObject)localObject2).get("enable_use_wma_as_ringtone")).booleanValue();
          }
          ((JSONObject)localObject2).clear();
          localFileNotFoundException.close();
          str1 = FexApplication.a().getPackageName();
          localObject2 = FexApplication.a().getPackageManager();
          if (r)
          {
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, AudioPlayerProxyActivity.class.getName()), 2, 1);
            if (!s) {
              break label2471;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, PopVideoPlayerProxyActivity.class.getName()), 2, 1);
            if (!t) {
              break label2494;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, CompressionProxyActivity.class.getName()), 2, 1);
            if (!E) {
              break label2517;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, PopRemoteImageBrowser.class.getName()), 2, 1);
            if (!F) {
              break label2540;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, ESContentChooserActivity.class.getName()), 2, 1);
            if (!G) {
              break label2563;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, ESWallPaperChooserActivity.class.getName()), 2, 1);
            if (!H) {
              break label2586;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, ESRingtoneChooserActivity.class.getName()), 2, 1);
            if (!J) {
              break label2609;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, ESFileSharingActivity.class.getName()), 2, 1);
            if (!T) {
              break label2632;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, BrowserDownloaderActivity.class.getName()), 2, 1);
            if (!ar) {
              break;
            }
            ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(str1, SaveToESActivity.class.getName()), 2, 1);
            return;
          }
        }
        catch (Throwable localThrowable)
        {
          localThrowable.printStackTrace();
          return;
        }
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, PopVideoPlayerProxyActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, CompressionProxyActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, PopRemoteImageBrowser.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, ESContentChooserActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, ESWallPaperChooserActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, ESRingtoneChooserActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, ESFileSharingActivity.class.getName()), 1, 1);
        continue;
        ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, BrowserDownloaderActivity.class.getName()), 1, 1);
      }
      ((PackageManager)localObject2).setComponentEnabledSetting(new ComponentName(localThrowable, SaveToESActivity.class.getName()), 1, 1);
      return;
    }
  }
  
  public static String c(String paramString)
  {
    if (p != null)
    {
      Iterator localIterator = p.iterator();
      while (localIterator.hasNext())
      {
        Object localObject = (ab)localIterator.next();
        if (a != null)
        {
          String str = a;
          if (str != null) {
            try
            {
              if ((str.equals(paramString)) && ((c == null) || (c.length() == 0) || (c.equals(i.a))))
              {
                localObject = b;
                return (String)localObject;
              }
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
            }
          }
        }
      }
    }
    return null;
  }
  
  public static u d(String paramString)
  {
    try
    {
      if (X == null) {
        return null;
      }
      paramString = paramString + ",";
      int i1 = 0;
      while (i1 < X.size())
      {
        aa localaa = (aa)X.get(i1);
        if (a.contains(paramString))
        {
          paramString = new u(b, c, null);
          return paramString;
        }
        i1 += 1;
      }
      return null;
    }
    catch (Exception paramString) {}
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */