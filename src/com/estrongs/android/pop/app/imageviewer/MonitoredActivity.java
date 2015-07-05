package com.estrongs.android.pop.app.imageviewer;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;

public class MonitoredActivity
  extends NoSearchActivity
{
  private final ArrayList<al> a = new ArrayList();
  
  public void a(al paramal)
  {
    if (a.contains(paramal)) {
      return;
    }
    a.add(paramal);
  }
  
  public void b(al paramal)
  {
    a.remove(paramal);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = a.iterator();
    while (paramBundle.hasNext()) {
      ((al)paramBundle.next()).a(this);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((al)localIterator.next()).b(this);
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((al)localIterator.next()).c(this);
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((al)localIterator.next()).d(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.estrongs.android.pop.app.imageviewer.MonitoredActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */