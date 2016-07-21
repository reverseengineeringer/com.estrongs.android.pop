.class public Lcom/estrongs/android/pop/app/imageviewer/ch;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field a:F

.field b:I

.field c:I

.field final synthetic d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;


# direct methods
.method protected constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->a:F

    const/16 v0, 0x78

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->b:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->c:I

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getMaxZoom()F

    move-result v0

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScale()F

    move-result v0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(F)V

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b(FFF)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getScale()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    neg-float v2, p3

    neg-float v3, p4

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b(FF)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v2, v2, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/esclasses/ESScrollMenuView;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e()V

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ch;->d:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
