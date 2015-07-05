package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.Iterator;

class ModelList
  extends ArrayList<Model>
{
  public ModelList build()
  {
    ModelList localModelList = new ModelList();
    Iterator localIterator = iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localModelList;
      }
      localModelList.register((Model)localIterator.next());
    }
  }
  
  public boolean isEmpty()
  {
    Iterator localIterator = iterator();
    Model localModel;
    do
    {
      if (!localIterator.hasNext()) {
        return true;
      }
      localModel = (Model)localIterator.next();
    } while ((localModel == null) || (localModel.isEmpty()));
    return false;
  }
  
  public Model lookup(int paramInt)
  {
    if (paramInt <= size()) {
      return (Model)get(paramInt - 1);
    }
    return null;
  }
  
  public void register(Model paramModel)
  {
    int j = paramModel.getIndex();
    int k = size();
    int i = 0;
    for (;;)
    {
      if (i >= j) {
        return;
      }
      if (i >= k) {
        add(null);
      }
      if (i == j - 1) {
        set(j - 1, paramModel);
      }
      i += 1;
    }
  }
  
  public Model take()
  {
    Model localModel;
    do
    {
      if (isEmpty()) {
        return null;
      }
      localModel = (Model)remove(0);
    } while (localModel.isEmpty());
    return localModel;
  }
}

/* Location:
 * Qualified Name:     org.simpleframework.xml.core.ModelList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */