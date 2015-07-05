.class public Lcom/estrongs/android/ui/drag/DragPanel;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/estrongs/android/ui/drag/k;
.implements Lcom/estrongs/android/ui/drag/l;


# instance fields
.field a:Lcom/estrongs/android/ui/drag/d;

.field protected b:Lcom/estrongs/android/view/aw;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->b:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->C()Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/drag/DragPanel;->c:I

    neg-int v1, v1

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public c_()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->b:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->C()Landroid/widget/AbsListView;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/android/ui/drag/DragPanel;->c:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/view/View;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/drag/DragPanel;->getLocationOnScreen([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragPanel;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p0}, Lcom/estrongs/android/ui/drag/DragPanel;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/drag/d;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/drag/DragPanel;->a:Lcom/estrongs/android/ui/drag/d;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/drag/d;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
