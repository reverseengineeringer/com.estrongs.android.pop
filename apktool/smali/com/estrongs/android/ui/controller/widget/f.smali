.class public Lcom/estrongs/android/ui/controller/widget/f;
.super Landroid/view/animation/Animation;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private f:Landroid/graphics/Camera;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p2, p0, Lcom/estrongs/android/ui/controller/widget/f;->b:F

    iput p3, p0, Lcom/estrongs/android/ui/controller/widget/f;->c:F

    iput p4, p0, Lcom/estrongs/android/ui/controller/widget/f;->d:F

    iput p5, p0, Lcom/estrongs/android/ui/controller/widget/f;->e:F

    invoke-virtual {p0, p0}, Lcom/estrongs/android/ui/controller/widget/f;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    iget v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->b:F

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/f;->c:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/controller/widget/f;->d:F

    iget v2, p0, Lcom/estrongs/android/ui/controller/widget/f;->e:F

    iget-object v3, p0, Lcom/estrongs/android/ui/controller/widget/f;->f:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->f:Landroid/graphics/Camera;

    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-static {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->c(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->a(Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->invalidate()V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setFocusable(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/widget/f;->a:Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/controller/widget/ESFloatingActionButton;->requestFocus()Z

    return-void
.end method
