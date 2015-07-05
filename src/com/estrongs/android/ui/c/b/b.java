package com.estrongs.android.ui.c.b;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.drawable.Drawable;
import android.widget.LinearLayout;
import com.estrongs.android.pop.ad;
import com.estrongs.android.pop.app.shortcut.ShortcutFormat;
import com.estrongs.android.pop.utils.cu;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.dialog.ct;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.util.am;
import com.estrongs.android.util.ay;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class b
  extends a
{
  public static final String i = com.estrongs.android.pop.a.k;
  private List<ShortcutFormat> j;
  private List<String> k;
  
  public b(FileExplorerActivity paramFileExplorerActivity, LinearLayout paramLinearLayout, boolean paramBoolean)
  {
    super(paramFileExplorerActivity, paramLinearLayout, paramBoolean);
  }
  
  private Drawable a(String paramString1, String paramString2)
  {
    Object localObject = null;
    if (paramString1.equals("all")) {
      if (paramString2.contains("baidu")) {
        paramString2 = al.a(a).a(2130838107);
      }
    }
    do
    {
      return paramString2;
      return al.a(a).a(2130838105);
      if (paramString1.equals("apk")) {
        return al.a(a).a(2130838106);
      }
      if (paramString1.equals("document")) {
        return al.a(a).a(2130838108);
      }
      if (paramString1.equals("download")) {
        return al.a(a).a(2130838079);
      }
      if (paramString1.equals("facebook")) {
        return al.a(a).a(2130838105);
      }
      if (paramString1.equals("image")) {
        return al.a(a).a(2130838111);
      }
      if (paramString1.equals("music")) {
        return al.a(a).a(2130838109);
      }
      if (paramString1.equals("news")) {
        return al.a(a).a(2130838110);
      }
      if (paramString1.equals("video")) {
        return al.a(a).a(2130838112);
      }
      paramString2 = (String)localObject;
    } while (!paramString1.equals("weather"));
    return al.a(a).a(2130838113);
  }
  
  private void a(ShortcutFormat paramShortcutFormat)
  {
    if ((paramShortcutFormat == null) || (shortcutName == null) || (shortcutName.length() == 0)) {
      return;
    }
    String str;
    if ((paramShortcutFormat.getAttribute("isSearchEngine") != null) && (paramShortcutFormat.getAttribute("isSearchEngine").equalsIgnoreCase("true")))
    {
      str = "Home_NetSearch";
      paramShortcutFormat = "Home_NetSearch_UV";
    }
    for (;;)
    {
      com.estrongs.android.util.a.a(str, str);
      com.estrongs.android.util.a.b(paramShortcutFormat, paramShortcutFormat);
      return;
      if (shortcutName.equalsIgnoreCase(a.getString(2131428442)))
      {
        str = "Home_News";
        paramShortcutFormat = "Home_News_UV";
      }
      else
      {
        if (!shortcutName.equalsIgnoreCase(a.getString(2131428441))) {
          break;
        }
        str = "Home_Weather";
        paramShortcutFormat = "Home_Weather_UV";
      }
    }
  }
  
  private void b(ShortcutFormat paramShortcutFormat)
  {
    File localFile = new File(i, shortcutName);
    if (localFile.exists()) {
      ay.c(localFile);
    }
    do
    {
      return;
      paramShortcutFormat = new File(com.estrongs.android.pop.a.l, shortcutName);
    } while (!paramShortcutFormat.exists());
    ay.c(paramShortcutFormat);
  }
  
  private void c(ShortcutFormat paramShortcutFormat)
  {
    String str = paramShortcutFormat.getAttribute("virtualKey");
    boolean bool;
    String[] arrayOfString;
    if (str != null)
    {
      bool = true;
      if (!bool) {
        break label95;
      }
      arrayOfString = new String[2];
      arrayOfString[0] = a.getString(2131428438);
      arrayOfString[1] = a.getString(2131427347);
    }
    for (;;)
    {
      new ct(a).a(2131428042).a(arrayOfString, -1, new e(this, bool, str, paramShortcutFormat)).d(false).c();
      return;
      bool = false;
      break;
      label95:
      arrayOfString = new String[3];
      arrayOfString[0] = a.getString(2131428438);
      arrayOfString[1] = a.getString(2131427355);
      arrayOfString[2] = a.getString(2131427347);
    }
  }
  
  private String m()
  {
    return f() + "_count";
  }
  
  protected void b() {}
  
  protected String f()
  {
    return "collection_block";
  }
  
  protected List<String> g()
  {
    return k;
  }
  
  protected void h()
  {
    e = new HashMap();
    ad.a(a);
    j = new ArrayList();
    j.addAll(cu.a());
    ay.a(com.estrongs.android.pop.a.k, false, j);
    k = new ArrayList();
    int m = 0;
    if (m < j.size())
    {
      ShortcutFormat localShortcutFormat = (ShortcutFormat)j.get(m);
      localObject = targetLocation;
      k.add(targetLocation + shortcutName);
      com.estrongs.android.ui.c.a.b localb = new com.estrongs.android.ui.c.a.b(a);
      localb.a(shortcutName);
      String str = localShortcutFormat.getAttribute("virtualKey");
      if (str != null) {
        localObject = a(str, (String)localObject);
      }
      for (;;)
      {
        localb.a((Drawable)localObject);
        localb.a(new c(this, str, localShortcutFormat));
        localb.a(new d(this, localShortcutFormat));
        e.put(targetLocation + shortcutName, localb);
        m += 1;
        break;
        if (am.t((String)localObject)) {
          localObject = al.a(a).a(2130838105);
        } else {
          localObject = ay.a(a, (String)localObject);
        }
      }
    }
    Object localObject = g.edit();
    ((SharedPreferences.Editor)localObject).putInt(m(), j.size());
    ((SharedPreferences.Editor)localObject).commit();
  }
  
  protected int i()
  {
    return 2130903063;
  }
  
  protected int j()
  {
    return 3;
  }
  
  protected int k()
  {
    int n = g.getInt(m(), -1);
    int m = n;
    if (n == -1)
    {
      if (c) {
        m = 3;
      }
    }
    else {
      return m;
    }
    return 4;
  }
  
  public void l()
  {
    h();
    super.l();
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.ui.c.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */