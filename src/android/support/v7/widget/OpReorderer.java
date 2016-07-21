package android.support.v7.widget;

import java.util.List;

class OpReorderer
{
  final OpReorderer.Callback mCallback;
  
  public OpReorderer(OpReorderer.Callback paramCallback)
  {
    mCallback = paramCallback;
  }
  
  private int getLastMoveOutOfOrder(List<AdapterHelper.UpdateOp> paramList)
  {
    int i = 0;
    int j = paramList.size() - 1;
    if (j >= 0)
    {
      if (getcmd == 8)
      {
        if (i == 0) {
          break label50;
        }
        return j;
      }
      i = 1;
    }
    label50:
    for (;;)
    {
      j -= 1;
      break;
      return -1;
    }
  }
  
  private void swapMoveAdd(List<AdapterHelper.UpdateOp> paramList, int paramInt1, AdapterHelper.UpdateOp paramUpdateOp1, int paramInt2, AdapterHelper.UpdateOp paramUpdateOp2)
  {
    int i = 0;
    if (itemCount < positionStart) {
      i = -1;
    }
    int j = i;
    if (positionStart < positionStart) {
      j = i + 1;
    }
    if (positionStart <= positionStart) {
      positionStart += itemCount;
    }
    if (positionStart <= itemCount) {
      itemCount += itemCount;
    }
    positionStart = (j + positionStart);
    paramList.set(paramInt1, paramUpdateOp2);
    paramList.set(paramInt2, paramUpdateOp1);
  }
  
  private void swapMoveOp(List<AdapterHelper.UpdateOp> paramList, int paramInt1, int paramInt2)
  {
    AdapterHelper.UpdateOp localUpdateOp1 = (AdapterHelper.UpdateOp)paramList.get(paramInt1);
    AdapterHelper.UpdateOp localUpdateOp2 = (AdapterHelper.UpdateOp)paramList.get(paramInt2);
    switch (cmd)
    {
    case 3: 
    default: 
      return;
    case 2: 
      swapMoveRemove(paramList, paramInt1, localUpdateOp1, paramInt2, localUpdateOp2);
      return;
    case 1: 
      swapMoveAdd(paramList, paramInt1, localUpdateOp1, paramInt2, localUpdateOp2);
      return;
    }
    swapMoveUpdate(paramList, paramInt1, localUpdateOp1, paramInt2, localUpdateOp2);
  }
  
  void reorderOps(List<AdapterHelper.UpdateOp> paramList)
  {
    for (;;)
    {
      int i = getLastMoveOutOfOrder(paramList);
      if (i == -1) {
        break;
      }
      swapMoveOp(paramList, i, i + 1);
    }
  }
  
  void swapMoveRemove(List<AdapterHelper.UpdateOp> paramList, int paramInt1, AdapterHelper.UpdateOp paramUpdateOp1, int paramInt2, AdapterHelper.UpdateOp paramUpdateOp2)
  {
    int j = 0;
    int i;
    if (positionStart < itemCount)
    {
      if ((positionStart != positionStart) || (itemCount != itemCount - positionStart)) {
        break label623;
      }
      i = 1;
    }
    for (;;)
    {
      label70:
      AdapterHelper.UpdateOp localUpdateOp;
      if (itemCount < positionStart)
      {
        positionStart -= 1;
        if (positionStart > positionStart) {
          break label241;
        }
        positionStart += 1;
        localUpdateOp = null;
      }
      for (;;)
      {
        label97:
        if (i != 0)
        {
          paramList.set(paramInt1, paramUpdateOp2);
          paramList.remove(paramInt2);
          mCallback.recycleUpdateOp(paramUpdateOp1);
        }
        label241:
        label596:
        label606:
        for (;;)
        {
          return;
          if ((positionStart != itemCount + 1) || (itemCount != positionStart - itemCount)) {
            break label614;
          }
          j = 1;
          i = 1;
          break;
          if (itemCount >= positionStart + itemCount) {
            break label70;
          }
          itemCount -= 1;
          cmd = 2;
          itemCount = 1;
          if (itemCount == 0)
          {
            paramList.remove(paramInt2);
            mCallback.recycleUpdateOp(paramUpdateOp2);
            return;
            if (positionStart >= positionStart + itemCount) {
              break label608;
            }
            int k = positionStart;
            int m = itemCount;
            int n = positionStart;
            localUpdateOp = mCallback.obtainUpdateOp(2, positionStart + 1, k + m - n, null);
            itemCount = (positionStart - positionStart);
            break label97;
            if (j != 0)
            {
              if (localUpdateOp != null)
              {
                if (positionStart > positionStart) {
                  positionStart -= itemCount;
                }
                if (itemCount > positionStart) {
                  itemCount -= itemCount;
                }
              }
              if (positionStart > positionStart) {
                positionStart -= itemCount;
              }
              if (itemCount > positionStart) {
                itemCount -= itemCount;
              }
              paramList.set(paramInt1, paramUpdateOp2);
              if (positionStart == itemCount) {
                break label596;
              }
              paramList.set(paramInt2, paramUpdateOp1);
            }
            for (;;)
            {
              if (localUpdateOp == null) {
                break label606;
              }
              paramList.add(paramInt1, localUpdateOp);
              return;
              if (localUpdateOp != null)
              {
                if (positionStart >= positionStart) {
                  positionStart -= itemCount;
                }
                if (itemCount >= positionStart) {
                  itemCount -= itemCount;
                }
              }
              if (positionStart >= positionStart) {
                positionStart -= itemCount;
              }
              if (itemCount < positionStart) {
                break;
              }
              itemCount -= itemCount;
              break;
              paramList.remove(paramInt2);
            }
          }
        }
        label608:
        localUpdateOp = null;
      }
      label614:
      i = 0;
      j = 1;
      continue;
      label623:
      i = 0;
    }
  }
  
  void swapMoveUpdate(List<AdapterHelper.UpdateOp> paramList, int paramInt1, AdapterHelper.UpdateOp paramUpdateOp1, int paramInt2, AdapterHelper.UpdateOp paramUpdateOp2)
  {
    Object localObject2 = null;
    Object localObject1;
    if (itemCount < positionStart)
    {
      positionStart -= 1;
      localObject1 = null;
    }
    for (;;)
    {
      if (positionStart <= positionStart)
      {
        positionStart += 1;
        label54:
        paramList.set(paramInt2, paramUpdateOp1);
        if (itemCount <= 0) {
          break label243;
        }
        paramList.set(paramInt1, paramUpdateOp2);
      }
      for (;;)
      {
        if (localObject1 != null) {
          paramList.add(paramInt1, localObject1);
        }
        if (localObject2 != null) {
          paramList.add(paramInt1, localObject2);
        }
        return;
        if (itemCount >= positionStart + itemCount) {
          break label265;
        }
        itemCount -= 1;
        localObject1 = mCallback.obtainUpdateOp(4, positionStart, 1, payload);
        break;
        if (positionStart >= positionStart + itemCount) {
          break label54;
        }
        int i = positionStart + itemCount - positionStart;
        localObject2 = mCallback.obtainUpdateOp(4, positionStart + 1, i, payload);
        itemCount -= i;
        break label54;
        label243:
        paramList.remove(paramInt1);
        mCallback.recycleUpdateOp(paramUpdateOp2);
      }
      label265:
      localObject1 = null;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.OpReorderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */