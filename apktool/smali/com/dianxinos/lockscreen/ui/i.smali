.class public Lcom/dianxinos/lockscreen/ui/i;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:F

.field private static d:Z

.field private static e:Ljava/lang/String;


# instance fields
.field c:Landroid/view/ViewGroup$MarginLayoutParams;

.field private f:Lcom/dianxinos/lockscreen/ui/j;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dianxinos/lockscreen/c/g;->a:Z

    sput-boolean v0, Lcom/dianxinos/lockscreen/ui/i;->d:Z

    const-string v0, "DrawerViewHelper"

    sput-object v0, Lcom/dianxinos/lockscreen/ui/i;->e:Ljava/lang/String;

    const/16 v0, 0x14

    sput v0, Lcom/dianxinos/lockscreen/ui/i;->a:I

    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/dianxinos/lockscreen/ui/i;->b:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->h:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->i:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->j:I

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->l:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->m:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->q:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->r:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b(I)Z
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/dianxinos/lockscreen/ui/i;->a:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/dianxinos/lockscreen/ui/i;->a()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->q:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->r:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v0}, Lcom/dianxinos/lockscreen/ui/j;->e()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->h:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->i:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->j:I

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    iput-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/dianxinos/lockscreen/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ui/i;->m:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->o:I

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/i;->o:I

    if-nez v0, :cond_3

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    move v0, v1

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ui/i;->m:Z

    iput-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    move v0, v1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/dianxinos/lockscreen/ui/i;->o:I

    int-to-float v0, v0

    sget v1, Lcom/dianxinos/lockscreen/ui/i;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->p:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->q:I

    iget-object v0, p0, Lcom/dianxinos/lockscreen/ui/i;->c:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->r:I

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ui/i;->m:Z

    iput-boolean v2, p0, Lcom/dianxinos/lockscreen/ui/i;->n:Z

    move v0, v2

    goto :goto_0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->h:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->i:I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/dianxinos/lockscreen/ui/i;->h:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->i:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-boolean v2, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/i;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/dianxinos/lockscreen/ui/i;->b(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v2, v1, :cond_1

    iput-boolean v3, p0, Lcom/dianxinos/lockscreen/ui/i;->l:Z

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    if-eqz v1, :cond_1

    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/ui/j;->a()V

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->l:Z

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/dianxinos/lockscreen/ui/i;->j:I

    invoke-direct {p0, v0}, Lcom/dianxinos/lockscreen/ui/i;->a(I)V

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/i;->p:I

    if-lt v1, v2, :cond_5

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v1, v0}, Lcom/dianxinos/lockscreen/ui/j;->a(F)V

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/ui/j;->c()V

    goto :goto_0

    :cond_4
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    int-to-float v0, v0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->p:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1
.end method

.method public c()V
    .locals 1

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/dianxinos/lockscreen/ui/i;->k:Z

    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/dianxinos/lockscreen/ui/i;->l:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->j:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/dianxinos/lockscreen/ui/i;->p:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/dianxinos/lockscreen/ui/i;->j:I

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/ui/j;->b()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->e()V

    :cond_1
    invoke-direct {p0}, Lcom/dianxinos/lockscreen/ui/i;->f()V

    :cond_2
    return v0

    :cond_3
    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/lockscreen/ui/i;->f:Lcom/dianxinos/lockscreen/ui/j;

    invoke-interface {v1}, Lcom/dianxinos/lockscreen/ui/j;->d()V

    goto :goto_0
.end method
