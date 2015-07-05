.class public Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;
.super Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;


# instance fields
.field private final a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

.field private b:Z

.field private c:Lcom/estrongs/android/pop/app/imageviewer/am;

.field private d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    check-cast p1, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->k:F

    return v0
.end method

.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public a(Lcom/estrongs/android/pop/app/imageviewer/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:Lcom/estrongs/android/pop/app/imageviewer/am;

    return-void
.end method

.method public bridge synthetic a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Z)V

    return-void
.end method

.method public bridge synthetic b()F
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->b()F

    move-result v0

    return v0
.end method

.method protected b(FF)V
    .locals 6

    const/high16 v5, 0x41a00000    # 20.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->a(FF)V

    invoke-virtual {p0, v3, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->h:Lcom/estrongs/android/pop/app/imageviewer/an;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/imageviewer/an;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->g()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:Lcom/estrongs/android/pop/app/imageviewer/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:Lcom/estrongs/android/pop/app/imageviewer/am;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/estrongs/android/pop/app/imageviewer/am;->a(IF)V

    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:Lcom/estrongs/android/pop/app/imageviewer/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c:Lcom/estrongs/android/pop/app/imageviewer/am;

    invoke-interface {v0, v3, p1}, Lcom/estrongs/android/pop/app/imageviewer/am;->a(IF)V

    :cond_1
    return-void
.end method

.method public bridge synthetic c()I
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->c()I

    move-result v0

    return v0
.end method

.method public bridge synthetic d()I
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->d()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v1, -0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-boolean v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v3, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b:Z

    if-nez v0, :cond_1

    const/16 v0, 0x13

    if-lt p1, v0, :cond_1

    const/16 v0, 0x16

    if-gt p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->f()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move v3, v1

    :goto_2
    if-ltz v3, :cond_a

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v4, v4, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v4}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v4

    if-ge v3, v4, :cond_a

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_3
    :goto_3
    throw v0

    :sswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->f()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_5

    add-int/lit8 v0, v0, -0x1

    :try_start_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :goto_4
    if-ltz v0, :cond_6

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v3

    if-ge v0, v3, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    monitor-enter v1

    :try_start_4
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_5
    move v0, v2

    goto/16 :goto_0

    :cond_5
    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :cond_6
    if-eq v0, v1, :cond_4

    invoke-virtual {p0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    goto :goto_5

    :sswitch_2
    :try_start_7
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->f()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    :try_start_8
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->d:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_6
    if-ltz v0, :cond_9

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v3

    if-ge v0, v3, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    monitor-enter v1

    :try_start_9
    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_7
    :goto_7
    move v0, v2

    goto/16 :goto_0

    :cond_8
    const/high16 v0, -0x3e600000    # -20.0f

    const/4 v3, 0x0

    :try_start_a
    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    :cond_9
    if-eq v0, v1, :cond_7

    invoke-virtual {p0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    goto :goto_7

    :sswitch_3
    const/4 v0, 0x0

    const/high16 v3, 0x41a00000    # 20.0f

    :try_start_c
    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    move v0, v2

    goto/16 :goto_0

    :sswitch_4
    const/4 v0, 0x0

    const/high16 v3, -0x3e600000    # -20.0f

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->c(FF)V

    const/4 v0, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    move v0, v2

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    iget-object v3, v3, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a:Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;

    invoke-virtual {v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c()Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/estrongs/android/pop/app/imageviewer/ae;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :cond_a
    if-eq v3, v1, :cond_3

    invoke-virtual {p0, v2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(ZZ)V

    goto/16 :goto_3

    :catchall_4
    move-exception v3

    move-object v8, v3

    move v3, v0

    move-object v0, v8

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x43 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
