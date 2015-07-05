package com.estrongs.android.appinfo;

import java.util.Comparator;

class l
  implements Comparator<AppFolderInfoManager.RemnantFolder>
{
  l(AppFolderInfoManager paramAppFolderInfoManager) {}
  
  public int a(AppFolderInfoManager.RemnantFolder paramRemnantFolder1, AppFolderInfoManager.RemnantFolder paramRemnantFolder2)
  {
    int j = -1;
    int i;
    if ((paramRemnantFolder1 == null) && (paramRemnantFolder2 == null)) {
      i = 0;
    }
    int k;
    do
    {
      do
      {
        return i;
        if (paramRemnantFolder1 == null) {
          break;
        }
        i = j;
      } while (paramRemnantFolder2 == null);
      if ((paramRemnantFolder1 == null) && (paramRemnantFolder2 != null)) {
        return 1;
      }
      k = a.length() - a.length();
      if (k == 0) {
        return 0;
      }
      i = j;
    } while (k < 0);
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */