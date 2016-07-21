.class public abstract Lcom/estrongs/android/ui/view/IndicatorView;
.super Landroid/view/View;


# static fields
.field private static final a:[I

.field private static final b:[I


# instance fields
.field private c:Landroid/text/TextPaint;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/ui/view/bn;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Landroid/view/View$OnClickListener;

.field private k:I

.field private l:Landroid/view/View$OnTouchListener;

.field private m:Landroid/view/View$OnKeyListener;

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/estrongs/android/ui/view/IndicatorView;->a:[I

    new-array v0, v3, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/estrongs/android/ui/view/IndicatorView;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    iput v2, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    iput v3, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->h:J

    new-instance v0, Lcom/estrongs/android/ui/view/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bj;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->i:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/view/bk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bk;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->j:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/estrongs/android/ui/view/IndicatorView;->k:I

    new-instance v0, Lcom/estrongs/android/ui/view/bl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bl;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->l:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/estrongs/android/ui/view/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bm;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->m:Landroid/view/View$OnKeyListener;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/IndicatorView;->n:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    iput v2, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    iput v3, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->h:J

    new-instance v0, Lcom/estrongs/android/ui/view/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bj;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->i:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/ui/view/bk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bk;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->j:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/estrongs/android/ui/view/IndicatorView;->k:I

    new-instance v0, Lcom/estrongs/android/ui/view/bl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bl;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->l:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/estrongs/android/ui/view/bm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/view/bm;-><init>(Lcom/estrongs/android/ui/view/IndicatorView;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->m:Landroid/view/View$OnKeyListener;

    iput-boolean v3, p0, Lcom/estrongs/android/ui/view/IndicatorView;->n:Z

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/IndicatorView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/IndicatorView;->k:I

    return p1
.end method

.method private a(Landroid/graphics/Canvas;Lcom/estrongs/android/ui/view/bn;IIIZ)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->e()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p6, :cond_1

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->a(Lcom/estrongs/android/ui/view/bn;)Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->b(Lcom/estrongs/android/ui/view/bn;)I

    move-result v3

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->b(Lcom/estrongs/android/ui/view/bn;)I

    move-result v4

    sub-int v4, p5, v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->b()I

    move-result v3

    add-int v3, v3, p3

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->c(Lcom/estrongs/android/ui/view/bn;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->c(Lcom/estrongs/android/ui/view/bn;)I

    move-result v5

    sub-int v5, p5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->c(Lcom/estrongs/android/ui/view/bn;)I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->c()I

    move-result v3

    add-int v10, v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->b()I

    move-result v3

    sub-int v11, p4, v3

    sub-int v5, v11, v10

    if-gez v5, :cond_2

    const/4 v5, 0x0

    :cond_2
    sub-int v3, p5, v2

    div-int/lit8 v12, v3, 0x2

    add-int v13, v12, v2

    new-instance v2, Landroid/text/StaticLayout;

    invoke-static/range {p2 .. p2}, Lcom/estrongs/android/ui/view/bn;->d(Lcom/estrongs/android/ui/view/bn;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v10, v12, v11, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v3, v10

    int-to-float v4, v12

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/view/IndicatorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->n:Z

    return v0
.end method

.method static synthetic a()[I
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/IndicatorView;->a:[I

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/IndicatorView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/view/IndicatorView;->d(I)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/view/IndicatorView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->g:J

    return-wide v0
.end method

.method static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/estrongs/android/ui/view/IndicatorView;->b:[I

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/IndicatorView;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/view/IndicatorView;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->h:J

    return-wide v0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/view/IndicatorView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->m:Landroid/view/View$OnKeyListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->j:Landroid/view/View$OnClickListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->l:Landroid/view/View$OnTouchListener;

    invoke-super {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private d(I)I
    .locals 6

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getHeight()I

    move-result v2

    if-eqz v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getTotalWidth()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_5

    iget v4, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bn;->a()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    if-ne v5, v2, :cond_3

    :cond_3
    if-lt p1, v4, :cond_4

    if-ge p1, v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/view/IndicatorView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/view/IndicatorView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/view/IndicatorView;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->k:I

    return v0
.end method

.method private getIndicatorPadding()I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    :cond_0
    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    return v0
.end method

.method private getTextPaint()Landroid/text/TextPaint;
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setDither(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->c:Landroid/text/TextPaint;

    return-object v0
.end method

.method private getTotalWidth()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bn;->a()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getIndicatorPadding()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    add-int/2addr v0, v2

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-ne v1, p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/bn;->a(F)V

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/bn;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/bn;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public b(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract c(I)V
.end method

.method public getIndicatorCount()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getHeight()I

    move-result v5

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->getTotalWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v4, v0, 0x2

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_0

    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->e:I

    add-int v3, v4, v0

    iget-object v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->d:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/ui/view/bn;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/view/bn;->a()I

    move-result v0

    add-int v4, v3, v0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    if-ne v0, v8, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/ui/view/IndicatorView;->a(Landroid/graphics/Canvas;Lcom/estrongs/android/ui/view/bn;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/ui/view/IndicatorView;->f:I

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/view/IndicatorView;->invalidate()V

    return-void
.end method

.method public setIsSimpleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/view/IndicatorView;->n:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0

    return-void
.end method
