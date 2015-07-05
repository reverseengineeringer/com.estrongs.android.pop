package com.estrongs.android.appinfo;

import java.util.Comparator;

class b
  implements Comparator<AppFolderInfoManager.RemnantFolder>
{
  b(AppFolderInfoManager paramAppFolderInfoManager) {}
  
  public int a(AppFolderInfoManager.RemnantFolder paramRemnantFolder1, AppFolderInfoManager.RemnantFolder paramRemnantFolder2)
  {
    int j = -1;
    int i;
    if ((paramRemnantFolder1 == null) && (paramRemnantFolder2 == null)) {
      i = 0;
    }
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
      if ((b) && (!b)) {
        return 1;
      }
      if (b) {
        break;
      }
      i = j;
    } while (b);
    return a.compareTo(a);
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.appinfo.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */