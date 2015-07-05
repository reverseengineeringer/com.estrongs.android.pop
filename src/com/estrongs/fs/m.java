package com.estrongs.fs;

import com.estrongs.android.util.am;
import com.estrongs.android.util.bd;

public class m
{
  public static m A = new m("netdisk_server_megacloud", true);
  public static m B = new m("netdisk_server_yandex", true);
  public static m C = new m("netdisk_server_mediafire", true);
  public static m D = new m("netdisk_folder", true);
  public static m E = new m("pcs_folder", true);
  public static m F = new m("netdisk_folder_photo", true);
  public static m G = new m("netdisk_folder_other", true);
  public static m H = new m("sp_server_flickr", true);
  public static m I = new m("sp_server_instagram", true);
  public static m J = new m("sp_server_facebook", true);
  public static m K = new m("sp_server_pcs", true);
  public static m L = new m("create_site", true);
  public static m M = new m("unknown", false);
  public static m N = new m("flashair-server", true);
  public static m O = new m("adb_server", true);
  public static m P = new m("adb_folder", true);
  public static m Q = new m("pcs_formal_folder", true);
  public static m R = new m("pcs_provisional_folder", true);
  public static m S = new m("pcs_provisional_active_folder", true);
  public static m T = new m("pcs_res_folder", true);
  public static m a = new m("folder", true);
  public static m b = new m("file", false);
  public static m c = new m("smb_server", true);
  public static m d = new m("ftp_server", true);
  public static m e = new m("sftp_server", true);
  public static m f = new m("ftps_server", true);
  public static m g = new m("webdav_server", true);
  public static m h = new m("webdavs_server", true);
  public static m i = new m("bt_server_bonded_pc", true);
  public static m j = new m("bt_server_pc", true);
  public static m k = new m("bt_server_bonded_phone", true);
  public static m l = new m("bt_server_phone", true);
  public static m m = new m("bt_server_bonded_other", true);
  public static m n = new m("bt_server_other", true);
  public static m o = new m("folder_shared", true);
  public static m p = new m("netdisk_server", true);
  public static m q = new m("netdisk_server_pcs", true);
  public static m r = new m("netdisk_server_sugarsync", true);
  public static m s = new m("netdisk_server_dropbox", true);
  public static m t = new m("netdisk_server_boxnet", true);
  public static m u = new m("netdisk_server_kanbox", true);
  public static m v = new m("netdisk_server_kuaipan", true);
  public static m w = new m("netdisk_server_vdisk", true);
  public static m x = new m("netdisk_server_skydrv", true);
  public static m y = new m("netdisk_server_gdrive", true);
  public static m z = new m("netdisk_server_s3", true);
  private final String U;
  private boolean V;
  
  public m(String paramString, boolean paramBoolean)
  {
    U = paramString;
    V = paramBoolean;
  }
  
  public static m a(String paramString)
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
    if ("kanbox".equals(paramString)) {
      return u;
    }
    if ("kuaipan".equals(paramString)) {
      return v;
    }
    if ("vdisk".equals(paramString)) {
      return w;
    }
    if ("onedrive".equals(paramString)) {
      return x;
    }
    if ("gdrive".equals(paramString)) {
      return y;
    }
    if ("s3".equals(paramString)) {
      return z;
    }
    if ("yandex".equals(paramString)) {
      return B;
    }
    if ("megacloud".equals(paramString)) {
      return A;
    }
    if ("mediafire".equals(paramString)) {
      return C;
    }
    return null;
  }
  
  public static m b(String paramString)
  {
    if ("Flickr".equals(paramString)) {
      return H;
    }
    if ("Instagram".equals(paramString)) {
      return I;
    }
    if ("Facebook".equals(paramString)) {
      return J;
    }
    return null;
  }
  
  public static m c(String paramString)
  {
    if ((bd.a(paramString)) || (!paramString.endsWith("/"))) {
      return M;
    }
    m localm = a;
    if ((am.aB(paramString)) || (am.az(paramString))) {
      return E;
    }
    return D;
  }
  
  public boolean a()
  {
    return V;
  }
  
  public boolean b()
  {
    return !V;
  }
  
  public String c()
  {
    return U;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof m)) {}
    do
    {
      return false;
      paramObject = (m)paramObject;
    } while ((U == null) || (!U.equals(((m)paramObject).c())));
    return true;
  }
  
  public int hashCode()
  {
    if (U != null) {
      return U.hashCode();
    }
    return super.hashCode();
  }
  
  public String toString()
  {
    return U;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.fs.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */