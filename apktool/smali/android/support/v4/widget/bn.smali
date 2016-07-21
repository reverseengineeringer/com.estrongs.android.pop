.class public final Landroid/support/v4/widget/bn;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/Object;

.field b:Landroid/support/v4/widget/bo;


# direct methods
.method private constructor <init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    if-lt p1, v0, :cond_0

    new-instance v0, Landroid/support/v4/widget/br;

    invoke-direct {v0}, Landroid/support/v4/widget/br;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    :goto_0
    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    invoke-interface {v0, p2, p3}, Landroid/support/v4/widget/bo;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const/16 v0, 0x9

    if-lt p1, v0, :cond_1

    new-instance v0, Landroid/support/v4/widget/bq;

    invoke-direct {v0}, Landroid/support/v4/widget/bq;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/widget/bp;

    invoke-direct {v0}, Landroid/support/v4/widget/bp;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/widget/bn;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/widget/bn;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/bn;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/bn;
    .locals 2

    new-instance v0, Landroid/support/v4/widget/bn;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/bn;-><init>(ILandroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 6

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;IIII)V

    return-void
.end method

.method public a(IIIII)V
    .locals 7

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;IIIII)V

    return-void
.end method

.method public a(IIIIIIII)V
    .locals 10

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;IIIIIIII)V

    return-void
.end method

.method public a(IIIIIIIIII)V
    .locals 12

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v0 .. v11}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;IIIIIIIIII)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(IIIIII)Z
    .locals 8

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/support/v4/widget/bo;->a(Ljava/lang/Object;IIIIII)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->b(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->g(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->h(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public f()F
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->d(Ljava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->e(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/bn;->b:Landroid/support/v4/widget/bo;

    iget-object v1, p0, Landroid/support/v4/widget/bn;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/bo;->f(Ljava/lang/Object;)V

    return-void
.end method
