.class public Lcom/estrongs/android/pop/app/cleaner/r;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/app/Activity;Lcom/estrongs/android/view/w;Ljava/lang/Runnable;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/estrongs/android/view/w;->w()Lcom/estrongs/android/ui/view/ScanProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->c()V

    const v1, 0x7f0e00b1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0e00ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v3, 0x7f0e00bb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0e00bc

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v5

    const/16 v6, 0xe

    if-ge v5, v6, :cond_0

    invoke-static {v0, v2, v1, p2}, Lcom/estrongs/android/pop/app/cleaner/r;->a(Lcom/estrongs/android/ui/view/ScanProgressView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->b()V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    invoke-static {v1, v7}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    invoke-static {v3, v7}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    invoke-static {v4, v7}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-static {v2, v5}, Landroid/support/v4/view/cn;->g(Landroid/view/View;F)V

    const/high16 v5, 0x43340000    # 180.0f

    invoke-static {v0, v5}, Landroid/support/v4/view/cn;->g(Landroid/view/View;F)V

    invoke-static {}, Landroid/support/v4/a/a;->a()Landroid/support/v4/a/l;

    move-result-object v6

    new-instance v5, Lcom/estrongs/android/pop/app/cleaner/s;

    invoke-direct {v5, v2, v0}, Lcom/estrongs/android/pop/app/cleaner/s;-><init>(Landroid/view/View;Lcom/estrongs/android/ui/view/ScanProgressView;)V

    invoke-interface {v6, v5}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/d;)V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/t;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/cleaner/t;-><init>(Landroid/view/View;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-interface {v6, v0}, Landroid/support/v4/a/l;->a(Landroid/support/v4/a/b;)V

    const-wide/16 v0, 0x1f4

    invoke-interface {v6, v0, v1}, Landroid/support/v4/a/l;->a(J)V

    invoke-interface {v6}, Landroid/support/v4/a/l;->a()V

    goto :goto_0
.end method

.method private static a(Lcom/estrongs/android/ui/view/ScanProgressView;Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 11

    new-instance v0, Lcom/estrongs/android/ui/a/d;

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ScanProgressView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/ScanProgressView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/a/d;-><init>(FFFFFZZ)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/cleaner/u;

    invoke-direct {v0, p2, p1, p3}, Lcom/estrongs/android/pop/app/cleaner/u;-><init>(Landroid/view/View;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/view/ScanProgressView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {v10, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v0, Lcom/estrongs/android/ui/a/d;

    const/high16 v1, 0x42b40000    # 90.0f

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/a/d;-><init>(FFFFFZZ)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
