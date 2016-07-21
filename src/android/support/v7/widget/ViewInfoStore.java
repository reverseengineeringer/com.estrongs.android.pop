package android.support.v7.widget;

import android.support.v4.e.a;
import android.support.v4.e.f;

class ViewInfoStore
{
  private static final boolean DEBUG = false;
  final a<RecyclerView.ViewHolder, ViewInfoStore.InfoRecord> mLayoutHolderMap = new a();
  final f<RecyclerView.ViewHolder> mOldChangedHolders = new f();
  
  private RecyclerView.ItemAnimator.ItemHolderInfo popFromLayoutStep(RecyclerView.ViewHolder paramViewHolder, int paramInt)
  {
    Object localObject2 = null;
    int i = mLayoutHolderMap.a(paramViewHolder);
    Object localObject1;
    if (i < 0) {
      localObject1 = localObject2;
    }
    ViewInfoStore.InfoRecord localInfoRecord;
    do
    {
      do
      {
        return (RecyclerView.ItemAnimator.ItemHolderInfo)localObject1;
        localInfoRecord = (ViewInfoStore.InfoRecord)mLayoutHolderMap.c(i);
        localObject1 = localObject2;
      } while (localInfoRecord == null);
      localObject1 = localObject2;
    } while ((flags & paramInt) == 0);
    flags &= (paramInt ^ 0xFFFFFFFF);
    if (paramInt == 4) {}
    for (paramViewHolder = preInfo;; paramViewHolder = postInfo)
    {
      localObject1 = paramViewHolder;
      if ((flags & 0xC) != 0) {
        break;
      }
      mLayoutHolderMap.d(i);
      ViewInfoStore.InfoRecord.recycle(localInfoRecord);
      return paramViewHolder;
      if (paramInt != 8) {
        break label129;
      }
    }
    label129:
    throw new IllegalArgumentException("Must provide flag PRE or POST");
  }
  
  void addToAppearedInPreLayoutHolders(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    ViewInfoStore.InfoRecord localInfoRecord2 = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    ViewInfoStore.InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = ViewInfoStore.InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    flags |= 0x2;
    preInfo = paramItemHolderInfo;
  }
  
  void addToDisappearedInLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    ViewInfoStore.InfoRecord localInfoRecord2 = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    ViewInfoStore.InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = ViewInfoStore.InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    flags |= 0x1;
  }
  
  void addToOldChangeHolders(long paramLong, RecyclerView.ViewHolder paramViewHolder)
  {
    mOldChangedHolders.b(paramLong, paramViewHolder);
  }
  
  void addToPostLayout(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    ViewInfoStore.InfoRecord localInfoRecord2 = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    ViewInfoStore.InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = ViewInfoStore.InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    postInfo = paramItemHolderInfo;
    flags |= 0x8;
  }
  
  void addToPreLayout(RecyclerView.ViewHolder paramViewHolder, RecyclerView.ItemAnimator.ItemHolderInfo paramItemHolderInfo)
  {
    ViewInfoStore.InfoRecord localInfoRecord2 = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    ViewInfoStore.InfoRecord localInfoRecord1 = localInfoRecord2;
    if (localInfoRecord2 == null)
    {
      localInfoRecord1 = ViewInfoStore.InfoRecord.obtain();
      mLayoutHolderMap.put(paramViewHolder, localInfoRecord1);
    }
    preInfo = paramItemHolderInfo;
    flags |= 0x4;
  }
  
  void clear()
  {
    mLayoutHolderMap.clear();
    mOldChangedHolders.c();
  }
  
  RecyclerView.ViewHolder getFromOldChangeHolders(long paramLong)
  {
    return (RecyclerView.ViewHolder)mOldChangedHolders.a(paramLong);
  }
  
  boolean isDisappearing(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    return (paramViewHolder != null) && ((flags & 0x1) != 0);
  }
  
  boolean isInPreLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    return (paramViewHolder != null) && ((flags & 0x4) != 0);
  }
  
  void onDetach() {}
  
  public void onViewDetached(RecyclerView.ViewHolder paramViewHolder)
  {
    removeFromDisappearedInLayout(paramViewHolder);
  }
  
  RecyclerView.ItemAnimator.ItemHolderInfo popFromPostLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    return popFromLayoutStep(paramViewHolder, 8);
  }
  
  RecyclerView.ItemAnimator.ItemHolderInfo popFromPreLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    return popFromLayoutStep(paramViewHolder, 4);
  }
  
  void process(ViewInfoStore.ProcessCallback paramProcessCallback)
  {
    int i = mLayoutHolderMap.size() - 1;
    if (i >= 0)
    {
      RecyclerView.ViewHolder localViewHolder = (RecyclerView.ViewHolder)mLayoutHolderMap.b(i);
      ViewInfoStore.InfoRecord localInfoRecord = (ViewInfoStore.InfoRecord)mLayoutHolderMap.d(i);
      if ((flags & 0x3) == 3) {
        paramProcessCallback.unused(localViewHolder);
      }
      for (;;)
      {
        ViewInfoStore.InfoRecord.recycle(localInfoRecord);
        i -= 1;
        break;
        if ((flags & 0x1) != 0)
        {
          if (preInfo == null) {
            paramProcessCallback.unused(localViewHolder);
          } else {
            paramProcessCallback.processDisappeared(localViewHolder, preInfo, postInfo);
          }
        }
        else if ((flags & 0xE) == 14) {
          paramProcessCallback.processAppeared(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0xC) == 12) {
          paramProcessCallback.processPersistent(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0x4) != 0) {
          paramProcessCallback.processDisappeared(localViewHolder, preInfo, null);
        } else if ((flags & 0x8) != 0) {
          paramProcessCallback.processAppeared(localViewHolder, preInfo, postInfo);
        } else if ((flags & 0x2) == 0) {}
      }
    }
  }
  
  void removeFromDisappearedInLayout(RecyclerView.ViewHolder paramViewHolder)
  {
    paramViewHolder = (ViewInfoStore.InfoRecord)mLayoutHolderMap.get(paramViewHolder);
    if (paramViewHolder == null) {
      return;
    }
    flags &= 0xFFFFFFFE;
  }
  
  void removeViewHolder(RecyclerView.ViewHolder paramViewHolder)
  {
    int i = mOldChangedHolders.b() - 1;
    for (;;)
    {
      if (i >= 0)
      {
        if (paramViewHolder == mOldChangedHolders.c(i)) {
          mOldChangedHolders.a(i);
        }
      }
      else
      {
        paramViewHolder = (ViewInfoStore.InfoRecord)mLayoutHolderMap.remove(paramViewHolder);
        if (paramViewHolder != null) {
          ViewInfoStore.InfoRecord.recycle(paramViewHolder);
        }
        return;
      }
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ViewInfoStore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */