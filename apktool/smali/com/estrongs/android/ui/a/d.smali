.class public Lcom/estrongs/android/ui/a/d;
.super Landroid/view/animation/Animation;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:Z

.field private g:Landroid/graphics/Camera;

.field private final h:Z


# direct methods
.method public constructor <init>(FFFFFZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput p1, p0, Lcom/estrongs/android/ui/a/d;->a:F

    iput p2, p0, Lcom/estrongs/android/ui/a/d;->b:F

    iput p3, p0, Lcom/estrongs/android/ui/a/d;->c:F

    iput p4, p0, Lcom/estrongs/android/ui/a/d;->d:F

    iput p5, p0, Lcom/estrongs/android/ui/a/d;->e:F

    iput-boolean p6, p0, Lcom/estrongs/android/ui/a/d;->f:Z

    iput-boolean p7, p0, Lcom/estrongs/android/ui/a/d;->h:Z

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/a/d;->a:F

    iget v1, p0, Lcom/estrongs/android/ui/a/d;->b:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/a/d;->c:F

    iget v2, p0, Lcom/estrongs/android/ui/a/d;->d:F

    iget-object v3, p0, Lcom/estrongs/android/ui/a/d;->g:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Camera;->save()V

    iget-boolean v5, p0, Lcom/estrongs/android/ui/a/d;->f:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/estrongs/android/ui/a/d;->e:F

    mul-float/2addr v5, p1

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_0
    iget-boolean v5, p0, Lcom/estrongs/android/ui/a/d;->h:Z

    if-eqz v5, :cond_1

    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateX(F)V

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v3}, Landroid/graphics/Camera;->restore()V

    neg-float v0, v1

    neg-float v3, v2

    invoke-virtual {v4, v0, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void

    :cond_0
    iget v5, p0, Lcom/estrongs/android/ui/a/d;->e:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, p1

    mul-float/2addr v5, v6

    invoke-virtual {v3, v7, v7, v5}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v0}, Landroid/graphics/Camera;->rotateY(F)V

    goto :goto_1
.end method

.method public initialize(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/a/d;->g:Landroid/graphics/Camera;

    return-void
.end method
