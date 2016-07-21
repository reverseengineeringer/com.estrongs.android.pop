package com.estrongs.fs;

import com.estrongs.android.util.ap;
import com.estrongs.android.util.bk;

public class w
{
  public static w A = new w("netdisk_server_yandex", true);
  public static w B = new w("netdisk_server_mediafire", true);
  public static w C = new w("netdisk_folder", true);
  public static w D = new w("pcs_folder", true);
  public static w E = new w("netdisk_folder_photo", true);
  public static w F = new w("netdisk_folder_other", true);
  public static w G = new w("sp_server_flickr", true);
  public static w H = new w("sp_server_instagram", true);
  public static w I = new w("sp_server_facebook", true);
  public static w J = new w("sp_server_pcs", true);
  public static w K = new w("create_site", true);
  public static w L = new w("unknown", false);
  public static w M = new w("flashair-server", true);
  public static w N = new w("adb_server", true);
  public static w O = new w("adb_folder", true);
  public static w P = new w("pcs_formal_folder", true);
  public static w Q = new w("pcs_provisional_folder", true);
  public static w R = new w("pcs_provisional_active_folder", true);
  public static w S = new w("pcs_res_folder", true);
  public static w a = new w("folder", true);
  public static w b = new w("file", false);
  public static w c = new w("smb_server", true);
  public static w d = new w("ftp_server", true);
  public static w e = new w("sftp_server", true);
  public static w f = new w("ftps_server", true);
  public static w g = new w("webdav_server", true);
  public static w h = new w("webdavs_server", true);
  public static w i = new w("bt_server_bonded_pc", true);
  public static w j = new w("bt_server_pc", true);
  public static w k = new w("bt_server_bonded_phone", true);
  public static w l = new w("bt_server_phone", true);
  public static w m = new w("bt_server_bonded_other", true);
  public static w n = new w("bt_server_other", true);
  public static w o = new w("folder_shared", true);
  public static w p = new w("netdisk_server", true);
  public static w q = new w("netdisk_server_pcs", true);
  public static w r = new w("netdisk_server_sugarsync", true);
  public static w s = new w("netdisk_server_dropbox", true);
  public static w t = new w("netdisk_server_boxnet", true);
  public static w u = new w("netdisk_server_kuaipan", true);
  public static w v = new w("netdisk_server_vdisk", true);
  public static w w = new w("netdisk_server_skydrv", true);
  public static w x = new w("netdisk_server_gdrive", true);
  public static w y = new w("netdisk_server_s3", true);
  public static w z = new w("netdisk_server_megacloud", true);
  private final String T;
  private boolean U;
  
  public w(String paramString, boolean paramBoolean)
  {
    T = paramString;
    U = paramBoolean;
  }
  
  public static w a(String paramString)
  {
    if ("pcs".equals(paramString)) {
      return q;
    }
    if ("sugarsync".equals(paramString)) {
      return r;
    }
    if ("dropbox".equals(paramString)) {
      return s;
    }
    if ("box".equals(paramString)) {
      return t;
    }
    if ("kuaipan".equals(paramString)) {
      return u;
    }
    if ("vdisk".equals(paramString)) {
      return v;
    }
    if ("onedrive".equals(paramString)) {
      return w;
    }
    if ("gdrive".equals(paramString)) {
      return x;
    }
    if ("s3".equals(paramString)) {
      return y;
    }
    if ("yandex".equals(paramString)) {
      return A;
    }
    if ("megacloud".equals(paramString)) {
      return z;
    }
    if ("mediafire".equals(paramString)) {
      return B;
    }
    return null;
  }
  
  public static w b(String paramString)
  {
    if ("Flickr".equals(paramString)) {
      return G;
    }
    if ("Instagram".equals(paramString)) {
      return H;
    }
    if ("Facebook".equals(paramString)) {
      return I;
    }
    return null;
  }
  
  public static w c(String paramString)
  {
    if ((bk.a(paramString)) || (!paramString.endsWith("/"))) {
      return L;
    }
    w localw = a;
    if ((ap.aL(paramString)) || (ap.aJ(paramString))) {
      return D;
    }
    return C;
  }
  
  public boolean a()
  {
    return U;
  }
  
  public boolean b()
  {
    return !U;
  }
  
  public String c()
  {
    return T;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof w)) {}
    do
    {
      return false;
      paramObject = (w)paramObject;
    } while ((T == null) || (!T.equals(((w)paramObject).c())));
    return true;
  }
  
  public int hashCode()
  {
    if (T != null) {
      return T.hashCode();
    }
    return super.hashCode();
  }
  
  public String toString()
  {
    return T;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */