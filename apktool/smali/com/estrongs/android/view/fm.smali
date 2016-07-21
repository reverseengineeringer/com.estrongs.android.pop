.class public Lcom/estrongs/android/view/fm;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field a:Z

.field public final b:Landroid/os/Handler;

.field public final c:Lcom/estrongs/a/a/l;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/TextView;

.field private i:Landroid/widget/ProgressBar;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:I

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/view/gf;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V

    iput-boolean v1, p0, Lcom/estrongs/android/view/fm;->a:Z

    new-instance v0, Lcom/estrongs/android/view/fn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fn;-><init>(Lcom/estrongs/android/view/fm;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/fo;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fo;-><init>(Lcom/estrongs/android/view/fm;)V

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->c:Lcom/estrongs/a/a/l;

    iput v2, p0, Lcom/estrongs/android/view/fm;->m:I

    iput v2, p0, Lcom/estrongs/android/view/fm;->n:I

    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f0e02f4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->e:Landroid/widget/TextView;

    const v0, 0x7f0e05d2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->f:Landroid/widget/TextView;

    const v0, 0x7f0e0230

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->g:Landroid/widget/TextView;

    const v0, 0x7f0e031d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->h:Landroid/widget/TextView;

    const v0, 0x7f0e05d1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->j:Landroid/view/View;

    const v0, 0x7f0e05d3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/fm;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/fm;->k:Landroid/view/View;

    if-eqz p3, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/android/view/fm;->p:Z

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private a(JJ)D
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_0
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x2

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/fm;JJ)D
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/fm;->a(JJ)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/fm;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/fm;->m:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/fm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/fm;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/fm;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/fm;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->i:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/fm;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/fm;->n:I

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/fm;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/fm;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/fm;->l:I

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/fm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/fm;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/fm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/view/fm;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/fm;->q:I

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/view/fm;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/fm;->r:I

    return v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f030161

    return v0
.end method

.method protected a(Lcom/estrongs/a/a/m;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/estrongs/android/view/fm;->l:I

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(J)V
    .locals 3

    long-to-int v0, p1

    iput v0, p0, Lcom/estrongs/android/view/fm;->m:I

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/view/fm;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public b(J)V
    .locals 3

    long-to-int v0, p1

    iput v0, p0, Lcom/estrongs/android/view/fm;->n:I

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public c(J)V
    .locals 3

    long-to-int v0, p1

    iput v0, p0, Lcom/estrongs/android/view/fm;->q:I

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(J)V
    .locals 3

    long-to-int v0, p1

    iput v0, p0, Lcom/estrongs/android/view/fm;->r:I

    iget-object v0, p0, Lcom/estrongs/android/view/fm;->b:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
