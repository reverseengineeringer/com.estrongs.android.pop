.class public Lcom/estrongs/android/ui/f/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Landroid/view/WindowManager;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/graphics/Rect;

.field private g:F

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/view/View;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/view/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    iput-object p2, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    iput-object p1, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/ui/f/a;->i:Ljava/util/List;

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->c()V

    return-void
.end method

.method private a(Landroid/view/View;II)Landroid/support/v4/view/ex;
    .locals 4

    const v1, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Landroid/support/v4/view/cn;->c(Landroid/view/View;F)V

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->h(Landroid/view/View;F)V

    invoke-static {p1, v1}, Landroid/support/v4/view/cn;->i(Landroid/view/View;F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->j(Landroid/view/View;F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-static {p1, v0}, Landroid/support/v4/view/cn;->k(Landroid/view/View;F)V

    invoke-static {p1}, Landroid/support/v4/view/cn;->s(Landroid/view/View;)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ex;->a(F)Landroid/support/v4/view/ex;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->b(F)Landroid/support/v4/view/ex;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p3, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ex;->c(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ex;->e(F)Landroid/support/v4/view/ex;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ex;->f(F)Landroid/support/v4/view/ex;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->g()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/f/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/f/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->c:Landroid/view/WindowManager;

    new-instance v0, Lcom/estrongs/android/ui/f/b;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v2}, Lcom/estrongs/android/ui/f/b;-><init>(Lcom/estrongs/android/ui/f/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    const/16 v2, 0x46

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x3e8

    const/4 v7, -0x3

    move v2, v1

    move v4, v3

    move v6, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->d:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/estrongs/android/ui/f/c;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/c;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    aget v2, v0, v3

    aget v4, v0, v8

    aget v3, v0, v3

    iget-object v5, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    aget v0, v0, v8

    iget-object v5, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->d()V

    return-void
.end method

.method private d()V
    .locals 9

    const/4 v3, 0x0

    const/4 v8, -0x2

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c6

    iget-object v4, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->i:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0e03ea

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/FloatingActionButton;

    iget-object v5, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v0}, Lcom/estrongs/android/view/a/a;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Landroid/support/v4/b/a/a;->f(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v6

    const v7, 0x7f0d0139

    invoke-virtual {v6, v7}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v4/b/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v5}, Landroid/support/design/widget/FloatingActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/estrongs/android/ui/f/d;

    invoke-direct {v5, p0, v0}, Lcom/estrongs/android/ui/f/d;-><init>(Lcom/estrongs/android/ui/f/a;Lcom/estrongs/android/view/a/a;)V

    invoke-virtual {v1, v5}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private e()V
    .locals 12

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anchorRangeRadius : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anchorWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/ui/f/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v3, v0, 0x3

    new-instance v4, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    invoke-direct {v4}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    int-to-double v6, v1

    const-wide v8, 0x3fd0c152382d7365L    # 0.2617993877991494

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    int-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v5, v6

    int-to-double v6, v2

    const-wide v8, 0x3fd0c152382d7365L    # 0.2617993877991494

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    int-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {p0, v0, v5, v6}, Lcom/estrongs/android/ui/f/a;->a(Landroid/view/View;II)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ex;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    int-to-double v6, v1

    const-wide v8, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    int-to-double v10, v3

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-int v1, v6

    int-to-double v6, v2

    const-wide v8, 0x3ff4f1a6c638d03fL    # 1.3089969389957472

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    int-to-double v2, v3

    mul-double/2addr v2, v8

    sub-double v2, v6, v2

    double-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/estrongs/android/ui/f/a;->a(Landroid/view/View;II)Landroid/support/v4/view/ex;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ex;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setDuration(J)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/f/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/e;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/fo;)Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;->start()V

    return-void
.end method

.method private f()V
    .locals 7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->h:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/estrongs/android/ui/f/a;->j:Landroid/view/View;

    const v1, 0x7f0e03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    new-instance v2, Landroid/content/res/ColorStateList;

    filled-new-array {v4, v4}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    new-array v3, v4, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/estrongs/android/ui/f/a;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v5

    const v6, 0x7f0d00bd

    invoke-virtual {v5, v6}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v5

    aput v5, v3, v4

    invoke-direct {v2, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v2}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setImageResource(I)V

    new-instance v1, Lcom/estrongs/android/ui/f/f;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/f/f;-><init>(Lcom/estrongs/android/ui/f/a;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/estrongs/android/ui/f/a;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    iget v1, p0, Lcom/estrongs/android/ui/f/a;->g:F

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->l(Landroid/view/View;F)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->c:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/estrongs/android/ui/f/a;->e:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/estrongs/android/ui/f/a;->d:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->e()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->f()V

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/cn;->w(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/estrongs/android/ui/f/a;->g:F

    iget-object v0, p0, Lcom/estrongs/android/ui/f/a;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/view/cn;->l(Landroid/view/View;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/f/a;->g()V

    return-void
.end method
