.class public Lcom/estrongs/android/widget/bg;
.super Lcom/estrongs/android/ui/dialog/cg;


# instance fields
.field a:Lcom/estrongs/android/widget/bj;

.field protected b:Landroid/widget/ProgressBar;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/TextView;

.field protected f:Ljava/text/NumberFormat;

.field protected g:Landroid/widget/TextView;

.field protected h:J

.field protected i:J

.field protected j:Ljava/lang/CharSequence;

.field private k:I

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Lcom/estrongs/android/widget/bk;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/cg;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/widget/bg;->k:I

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->f:Ljava/text/NumberFormat;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    new-instance v0, Lcom/estrongs/android/widget/bl;

    invoke-direct {v0}, Lcom/estrongs/android/widget/bl;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->n:Lcom/estrongs/android/widget/bk;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/bg;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/estrongs/android/widget/bg;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0a008f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->b:Landroid/widget/ProgressBar;

    const v0, 0x7f0a001e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->c:Landroid/widget/TextView;

    const v0, 0x7f0a014c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->e:Landroid/widget/TextView;

    const v0, 0x7f0a005a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->d:Landroid/widget/TextView;

    const v0, 0x7f0a014b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->g:Landroid/widget/TextView;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->c:Landroid/widget/TextView;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v2, v1

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->c:Landroid/widget/TextView;

    const v1, 0x7f0b0217

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/widget/bh;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/bh;-><init>(Lcom/estrongs/android/widget/bg;)V

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/widget/bg;)J
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/estrongs/android/widget/bg;->l:J

    return-wide v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/bg;)Lcom/estrongs/android/widget/bk;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->n:Lcom/estrongs/android/widget/bk;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/widget/bg;->j:Ljava/lang/CharSequence;

    iput-wide v2, p0, Lcom/estrongs/android/widget/bg;->i:J

    iput-wide v2, p0, Lcom/estrongs/android/widget/bg;->h:J

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/widget/bg;->j:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->n:Lcom/estrongs/android/widget/bk;

    iget-object v1, p0, Lcom/estrongs/android/widget/bg;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/bg;->g:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/estrongs/android/widget/bg;->h:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/estrongs/android/widget/bk;->a(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->n:Lcom/estrongs/android/widget/bk;

    iget-object v1, p0, Lcom/estrongs/android/widget/bg;->b:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/estrongs/android/widget/bg;->d:Landroid/widget/TextView;

    iget-wide v4, p0, Lcom/estrongs/android/widget/bg;->i:J

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/estrongs/android/widget/bk;->b(Landroid/widget/ProgressBar;Landroid/widget/TextView;J)V

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->i:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/estrongs/android/widget/bg;->h:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/estrongs/android/widget/bg;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/estrongs/android/widget/bg;->f:Ljava/text/NumberFormat;

    invoke-virtual {v3, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/android/widget/bg;->k:I

    return-void
.end method

.method public a(J)V
    .locals 5

    iput-wide p1, p0, Lcom/estrongs/android/widget/bg;->h:J

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bg;->a:Lcom/estrongs/android/widget/bj;

    return-void
.end method

.method public a(Lcom/estrongs/android/widget/bk;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/bg;->n:Lcom/estrongs/android/widget/bk;

    return-void
.end method

.method public b(J)V
    .locals 5

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/estrongs/android/widget/bg;->i:J

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->m:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->a:Lcom/estrongs/android/widget/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->a:Lcom/estrongs/android/widget/bj;

    invoke-interface {v0}, Lcom/estrongs/android/widget/bj;->a()Z

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/ui/dialog/cg;->onBackPressed()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/estrongs/android/widget/bg;->j:Ljava/lang/CharSequence;

    iget-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/widget/bg;->l:J

    iget-object v0, p0, Lcom/estrongs/android/widget/bg;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
