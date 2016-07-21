.class public Lcom/estrongs/android/pop/view/ESRootView;
.super Lcom/estrongs/android/ui/guesture/ESGestureCtrl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/view/View;ILandroid/view/View;)Landroid/view/View;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {v2, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x11

    if-ne p2, v0, :cond_1

    iget-boolean v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_a

    iget-boolean v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Z

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/ui/navigation/r;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/ui/navigation/r;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/r;->d()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object p3, v0

    :cond_0
    :goto_1
    return-object p3

    :cond_1
    const/16 v0, 0x21

    if-ne p2, v0, :cond_3

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getCurrentChildIndex()I

    move-result v0

    iget-object v3, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x82

    if-ne p2, v0, :cond_5

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ap()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getCurrentChildIndex()I

    move-result v0

    iget-object v3, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x42

    if-ne p2, v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getCurrentChildIndex()I

    move-result v0

    iget-object v3, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez p3, :cond_0

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object p3

    goto :goto_1

    :cond_7
    iget-boolean v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->u:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Z

    if-nez v0, :cond_8

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/ui/navigation/r;

    if-eqz v0, :cond_9

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y:Lcom/estrongs/android/ui/navigation/r;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/navigation/r;->d()Landroid/view/View;

    move-result-object p3

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :cond_9
    move-object p3, v1

    goto/16 :goto_1

    :cond_a
    move-object v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/gesture/Gesture;)V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(Landroid/gesture/Gesture;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->ak()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/ESRootView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "ESRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ESRootView.draw() catchs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/util/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/estrongs/android/pop/view/ESRootView;->a(Landroid/view/View;ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/ui/guesture/ESGestureCtrl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1}, Lcom/estrongs/android/pop/view/ESRootView;->a(Landroid/view/View;ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
