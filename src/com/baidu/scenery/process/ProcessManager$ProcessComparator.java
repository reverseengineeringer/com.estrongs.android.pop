package com.baidu.scenery.process;

import java.util.Comparator;

public final class ProcessManager$ProcessComparator
  implements Comparator<AndroidProcess>
{
  public int compare(AndroidProcess paramAndroidProcess1, AndroidProcess paramAndroidProcess2)
  {
    return name.compareToIgnoreCase(name);
  }
}

/* Location:
 * Qualified Name:     com.baidu.scenery.process.ProcessManager.ProcessComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */