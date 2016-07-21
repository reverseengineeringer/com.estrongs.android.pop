.class public Landroid/support/design/widget/bx;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/cz;

.field private b:Landroid/support/design/widget/bz;

.field private c:Z

.field private d:F

.field private e:Z

.field private f:I

.field private g:F

.field private h:F

.field private i:F

.field private final j:Landroid/support/v4/widget/dc;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>()V

    iput v1, p0, Landroid/support/design/widget/bx;->d:F

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/bx;->f:I

    iput v2, p0, Landroid/support/design/widget/bx;->g:F

    iput v1, p0, Landroid/support/design/widget/bx;->h:F

    iput v2, p0, Landroid/support/design/widget/bx;->i:F

    new-instance v0, Landroid/support/design/widget/by;

    invoke-direct {v0, p0}, Landroid/support/design/widget/by;-><init>(Landroid/support/design/widget/bx;)V

    iput-object v0, p0, Landroid/support/design/widget/bx;->j:Landroid/support/v4/widget/dc;

    return-void
.end method

.method static a(FFF)F
    .locals 2

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(III)I
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/design/widget/bx;->b(III)I

    move-result v0

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/bx;)Landroid/support/design/widget/bz;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bx;->b:Landroid/support/design/widget/bz;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/design/widget/bx;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/bx;->d:F

    iget-object v1, p0, Landroid/support/design/widget/bx;->j:Landroid/support/v4/widget/dc;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/cz;->a(Landroid/view/ViewGroup;FLandroid/support/v4/widget/dc;)Landroid/support/v4/widget/cz;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/bx;->j:Landroid/support/v4/widget/dc;

    invoke-static {p1, v0}, Landroid/support/v4/widget/cz;->a(Landroid/view/ViewGroup;Landroid/support/v4/widget/dc;)Landroid/support/v4/widget/cz;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(FFF)F
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/support/design/widget/bx;->c(FFF)F

    move-result v0

    return v0
.end method

.method private static b(III)I
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/bx;)Landroid/support/v4/widget/cz;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    return-object v0
.end method

.method private static c(FFF)F
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic c(Landroid/support/design/widget/bx;)I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bx;->f:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/bx;)F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bx;->g:F

    return v0
.end method

.method static synthetic e(Landroid/support/design/widget/bx;)F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bx;->h:F

    return v0
.end method

.method static synthetic f(Landroid/support/design/widget/bx;)F
    .locals 1

    iget v0, p0, Landroid/support/design/widget/bx;->i:F

    return v0
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/bx;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/bx;->h:F

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Landroid/support/design/widget/bx;->f:I

    return-void
.end method

.method public a(Landroid/support/design/widget/bz;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/bx;->b:Landroid/support/design/widget/bz;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {p3}, Landroid/support/v4/view/bi;->a(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/bx;->c:Z

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/bx;->c:Z

    if-eqz v0, :cond_2

    :goto_1
    return v1

    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/bx;->c:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/support/design/widget/bx;->c:Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Landroid/support/design/widget/bx;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/cz;->a(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/bx;->c(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/bx;->i:F

    return-void
.end method

.method public b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/bx;->a:Landroid/support/v4/widget/cz;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/cz;->b(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
