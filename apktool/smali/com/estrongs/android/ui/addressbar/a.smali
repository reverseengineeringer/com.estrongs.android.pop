.class public Lcom/estrongs/android/ui/addressbar/a;
.super Ljava/lang/Object;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:F

.field private a:I

.field private b:[Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/NinePatchDrawable;

.field private f:Landroid/graphics/drawable/NinePatchDrawable;

.field private g:Landroid/graphics/drawable/NinePatchDrawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/text/TextPaint;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:J

.field private s:I

.field private t:Z

.field private u:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private v:[Ljava/lang/String;

.field private w:Landroid/view/View;

.field private x:I

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->s:I

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    iput-object p2, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->e:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->f:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->g:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/addressbar/g;

    invoke-direct {v1, v0, v2, v2}, Lcom/estrongs/android/ui/addressbar/g;-><init>(Landroid/graphics/drawable/Drawable;FF)V

    iput-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    const/high16 v0, 0x40800000    # 4.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->k:I

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->l:I

    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {p1, v0}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->m:I

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->u:Landroid/view/animation/AccelerateDecelerateInterpolator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->y:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/2addr v1, p2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-static {v0, v2}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v2

    int-to-float v3, p2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-static {p1}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v1

    const v2, 0x7f08000f

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setDither(Z)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0

    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)V
    .locals 8

    sub-int v3, p5, p3

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    invoke-static {p2, v0}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    int-to-float v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-direct {p0, p2, v3}, Lcom/estrongs/android/ui/addressbar/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->y:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;F)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v2, v15, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    sub-int v2, v1, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int v17, v2, v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/lit8 v3, v16, -0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int v18, v2, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v2, v3, v2

    div-int/lit8 v11, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p4

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    rsub-int/lit8 v2, v2, 0x0

    add-int v4, v2, v1

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_1

    add-int v6, v4, v17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->x:I

    if-ne v1, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->f:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    add-int v10, v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v12, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v4, v1, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->e:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_3

    add-int v6, v4, v18

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->x:I

    if-ne v1, v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->f:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    add-int v10, v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v12, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v4, v1, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->e:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_3

    :cond_3
    return-void
.end method

.method private a(Landroid/graphics/Canvas;[Ljava/lang/String;F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v11, v1, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    div-int v15, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    sub-int v1, v15, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p3

    float-to-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    rsub-int/lit8 v2, v2, 0x0

    add-int v4, v2, v1

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    const/4 v14, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    add-int v6, v4, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->x:I

    if-ne v1, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->f:Landroid/graphics/drawable/NinePatchDrawable;

    :goto_1
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    aget-object v9, p2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    add-int v10, v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v12, v6, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v14}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v4, v1, v2

    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/addressbar/a;->e:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Landroid/graphics/Canvas;[Ljava/lang/String;IIF)V
    .locals 11

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/lit8 v1, p3, -0x1

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    iget v3, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    div-int/2addr v0, p3

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/lit8 v2, p4, -0x1

    iget v3, p0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    iget v4, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int/2addr v3, v4

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, p4

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v2, v0

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p5

    sub-float v0, v2, v0

    float-to-int v9, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->j:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v10, v0, 0x2

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    rsub-int/lit8 v3, v0, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    add-int v5, v3, v9

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->e:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    aget-object v2, p2, v7

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v4, v10

    invoke-direct/range {v0 .. v7}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Ljava/lang/String;IIIII)V

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->d:I

    add-int/2addr v0, v5

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->c:I

    sub-int v3, v0, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->k:I

    sub-int v5, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v3, v5, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->k:I

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v4, v6, v0

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->i:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->l:I

    sub-int v5, v0, v1

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->m:I

    sub-int v3, v5, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->m:I

    add-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/estrongs/android/ui/addressbar/a;->m:I

    sub-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->g:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/addressbar/a;->r:J

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/addressbar/a;->x:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 11

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v0, v6

    :cond_0
    iget-boolean v3, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-eqz v3, :cond_12

    iget-wide v4, p0, Lcom/estrongs/android/ui/addressbar/a;->r:J

    const-wide/16 v8, -0x1

    cmp-long v3, v4, v8

    if-nez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/estrongs/android/ui/addressbar/a;->r:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v8, p0, Lcom/estrongs/android/ui/addressbar/a;->r:J

    sub-long/2addr v4, v8

    iget v3, p0, Lcom/estrongs/android/ui/addressbar/a;->s:I

    int-to-long v8, v3

    cmp-long v3, v4, v8

    if-lez v3, :cond_b

    invoke-direct {p0}, Lcom/estrongs/android/ui/addressbar/a;->f()V

    move-object v2, v0

    move v5, v1

    move v0, v6

    :goto_0
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_e

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v6

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    array-length v3, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v4, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;[Ljava/lang/String;IIF)V

    :goto_2
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->e(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->c(Landroid/graphics/Canvas;)V

    :cond_2
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->n:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_4
    iput-boolean v6, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    :cond_5
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->d(Landroid/graphics/Canvas;)V

    :cond_6
    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_8
    iput-boolean v6, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    :cond_9
    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    long-to-float v3, v4

    mul-float/2addr v3, v7

    iget v4, p0, Lcom/estrongs/android/ui/addressbar/a;->s:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/estrongs/android/ui/addressbar/a;->u:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v4, v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v5

    iget v3, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    sub-float v2, v7, v5

    const/high16 v3, -0x40800000    # -1.0f

    mul-float v5, v2, v3

    move-object v2, v0

    move v0, v6

    goto :goto_0

    :cond_c
    iget v3, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    if-ne v3, v2, :cond_d

    sub-float v5, v1, v5

    move-object v2, v0

    move v0, v6

    goto/16 :goto_0

    :cond_d
    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    array-length v4, v4

    if-eq v3, v4, :cond_11

    move v10, v2

    move-object v2, v0

    move v0, v10

    goto/16 :goto_0

    :cond_e
    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    if-nez v0, :cond_10

    move v5, v1

    :cond_10
    invoke-direct {p0, p1, v2, v5}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;[Ljava/lang/String;F)V

    goto/16 :goto_2

    :cond_11
    move-object v2, v0

    move v0, v6

    goto/16 :goto_0

    :cond_12
    move-object v2, v0

    move v5, v1

    move v0, v6

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/a;->z:Ljava/util/List;

    iput-object p2, p0, Lcom/estrongs/android/ui/addressbar/a;->A:Ljava/util/List;

    iput p3, p0, Lcom/estrongs/android/ui/addressbar/a;->B:F

    return-void
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/addressbar/a;->n:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->n:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    goto :goto_0
.end method

.method public a([Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    iput p2, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    aput-object v3, v2, v0

    iput-boolean v5, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_2

    iput-boolean v5, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    :cond_3
    iput-object p1, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    if-le v0, v6, :cond_4

    iput v6, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    :cond_4
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/estrongs/android/ui/addressbar/a;->r:J

    return-void

    :cond_5
    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->a:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->v:[Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iput-boolean v5, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->b:[Ljava/lang/String;

    array-length v0, v0

    array-length v2, p1

    if-eq v0, v2, :cond_1

    iput v1, p0, Lcom/estrongs/android/ui/addressbar/a;->q:I

    goto :goto_1
.end method

.method public b(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/estrongs/android/ui/addressbar/a;->B:F

    cmpl-float v1, v0, v2

    if-lez v1, :cond_7

    sub-float v0, v2, v0

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->z:Ljava/util/List;

    iget-object v2, p0, Lcom/estrongs/android/ui/addressbar/a;->A:Ljava/util/List;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/estrongs/android/ui/addressbar/a;->a(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;F)V

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->e(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->n:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_1
    iput-boolean v3, p0, Lcom/estrongs/android/ui/addressbar/a;->o:Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/addressbar/a;->d(Landroid/graphics/Canvas;)V

    :cond_3
    iget-boolean v1, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/Animatable;

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    :cond_5
    iput-boolean v3, p0, Lcom/estrongs/android/ui/addressbar/a;->p:Z

    :cond_6
    return-void

    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->t:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/addressbar/a;->n:Z

    return v0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/addressbar/a;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
