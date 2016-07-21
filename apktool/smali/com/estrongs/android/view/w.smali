.class public Lcom/estrongs/android/view/w;
.super Lcom/estrongs/android/view/cr;


# static fields
.field private static final a:Ljava/text/DecimalFormat;

.field private static final b:Ljava/text/DecimalFormat;

.field private static final c:Ljava/text/DecimalFormat;


# instance fields
.field private aA:Lcom/estrongs/android/b/a/e;

.field private aB:Lcom/estrongs/android/j/c;

.field private aC:Z

.field private aD:Z

.field private aE:Z

.field private aF:Z

.field private aG:Ljava/lang/Runnable;

.field private al:Landroid/support/v7/widget/RecyclerView;

.field private am:Lcom/estrongs/android/ui/a/b;

.field private an:Landroid/widget/Button;

.field private ao:Lcom/estrongs/android/pop/app/cleaner/v;

.field private ap:Lcom/estrongs/android/pop/app/cleaner/c;

.field private aq:Landroid/os/Handler;

.field private ar:Lcom/estrongs/android/cleaner/a;

.field private as:Lcom/estrongs/android/ui/view/ScanProgressView;

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/widget/TextView;

.field private aw:Ljava/lang/String;

.field private ax:Landroid/view/View;

.field private ay:J

.field private az:Lcom/estrongs/android/pop/app/cleaner/a;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/view/w;->a:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/view/w;->b:Ljava/text/DecimalFormat;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/estrongs/android/view/w;->c:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    const/high16 v0, 0x3e800000    # 0.25f

    iput v0, p0, Lcom/estrongs/android/view/w;->d:I

    const/high16 v0, 0x100000

    iput v0, p0, Lcom/estrongs/android/view/w;->e:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/view/w;->ay:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    iput-boolean v2, p0, Lcom/estrongs/android/view/w;->aC:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/w;->aE:Z

    iput-boolean v2, p0, Lcom/estrongs/android/view/w;->aF:Z

    new-instance v0, Lcom/estrongs/android/view/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/x;-><init>(Lcom/estrongs/android/view/w;)V

    iput-object v0, p0, Lcom/estrongs/android/view/w;->aG:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/pop/app/cleaner/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    return-object v0
.end method

.method private aG()V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/estrongs/android/b/a/f;->a()Lcom/estrongs/android/b/a/f;

    move-result-object v1

    iget-boolean v0, p0, Lcom/estrongs/android/view/w;->aD:Z

    if-eqz v0, :cond_1

    const-string v0, "cn-clean"

    :goto_0
    const-string v3, "default-clean"

    invoke-virtual {v1, v0, v3}, Lcom/estrongs/android/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/b/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/unlock/s;->c()Lcom/estrongs/android/k/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v1}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/estrongs/android/b/a/a/g;

    const-string v4, "junk"

    invoke-direct {v3, v4, v0}, Lcom/estrongs/android/b/a/a/g;-><init>(Ljava/lang/String;Lcom/estrongs/android/k/d;)V

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/e;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/b/a/a;

    const-string v5, "ad"

    invoke-virtual {v0}, Lcom/estrongs/android/b/a/a;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_1
    const-string v0, "clean"

    goto :goto_0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-lez v1, :cond_4

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/estrongs/android/view/w;->aC:Z

    if-lez v1, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/view/w;->aD:Z

    if-eqz v0, :cond_5

    :cond_3
    :goto_5
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/estrongs/android/pop/app/ad/a;->a()Lcom/estrongs/android/pop/app/ad/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ad/a;->a(I)V

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_3
.end method

.method private aH()V
    .locals 2

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v1, v0, p0}, Lcom/estrongs/android/pop/app/cleaner/v;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V

    iput-object v1, p0, Lcom/estrongs/android/view/w;->ao:Lcom/estrongs/android/pop/app/cleaner/v;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ao:Lcom/estrongs/android/pop/app/cleaner/v;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ao:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ao:Lcom/estrongs/android/pop/app/cleaner/v;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/v;->c()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/w;)Lcom/estrongs/android/j/c;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/w;->aE:Z

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/w;->aF:Z

    return v0
.end method

.method private e(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v8, 0x400

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    long-to-double v0, p1

    const-wide/32 v2, 0x100000

    div-long v2, p1, v2

    const-wide/16 v4, 0x270f

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    long-to-double v0, v2

    sget-object v2, Lcom/estrongs/android/view/w;->c:Ljava/text/DecimalFormat;

    div-double/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v4, 0x3e7

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    long-to-double v0, v2

    sget-object v2, Lcom/estrongs/android/view/w;->a:Ljava/text/DecimalFormat;

    div-double/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x1

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    sget-object v0, Lcom/estrongs/android/view/w;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0xfa000

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    sget-object v2, Lcom/estrongs/android/view/w;->a:Ljava/text/DecimalFormat;

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    cmp-long v2, p1, v8

    if-lez v2, :cond_4

    sget-object v0, Lcom/estrongs/android/view/w;->b:Ljava/text/DecimalFormat;

    div-long v2, p1, v8

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x3e8

    cmp-long v2, p1, v2

    if-lez v2, :cond_5

    sget-object v2, Lcom/estrongs/android/view/w;->a:Ljava/text/DecimalFormat;

    div-double/2addr v0, v6

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/estrongs/android/view/w;->b:Ljava/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/view/w;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/w;->aD:Z

    return v0
.end method

.method private f(J)Ljava/lang/String;
    .locals 9

    const-wide/32 v6, 0x3e800000

    const-wide/32 v4, 0xfa000

    const-wide/16 v2, 0x3e8

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    cmp-long v0, p1, v6

    if-ltz v0, :cond_0

    const-string v0, "G\u0431"

    :goto_0
    return-object v0

    :cond_0
    cmp-long v0, p1, v4

    if-ltz v0, :cond_1

    const-string v0, "M6"

    goto :goto_0

    :cond_1
    cmp-long v0, p1, v2

    if-ltz v0, :cond_2

    const-string v0, "K6"

    goto :goto_0

    :cond_2
    const-string v0, "B"

    goto :goto_0

    :cond_3
    cmp-long v0, p1, v6

    if-ltz v0, :cond_4

    const-string v0, "GB"

    goto :goto_0

    :cond_4
    cmp-long v0, p1, v4

    if-ltz v0, :cond_5

    const-string v0, "MB"

    goto :goto_0

    :cond_5
    cmp-long v0, p1, v2

    if-ltz v0, :cond_6

    const-string v0, "KB"

    goto :goto_0

    :cond_6
    const-string v0, "B"

    goto :goto_0
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->aG:Ljava/lang/Runnable;

    invoke-static {v0, p0, v1}, Lcom/estrongs/android/pop/app/cleaner/r;->a(Landroid/app/Activity;Lcom/estrongs/android/view/w;Ljava/lang/Runnable;)V

    return-void
.end method

.method public B()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public C()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    return-object v0
.end method

.method public D()J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/view/w;->ay:J

    return-wide v0
.end method

.method public E()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f03001b

    return v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/w;->at:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/w;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->av:Landroid/widget/TextView;

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/w;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/view/w;->aF()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/estrongs/android/view/w;->a()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ai:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/w;->i()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/w;->D:Lcom/estrongs/fs/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/x;

    const-string v1, "clean://"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/w;->D:Lcom/estrongs/fs/h;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->D:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method public b(J)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v2, 0x4

    const/16 v1, 0x11

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/w;->e(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/w;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0801eb

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/w;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/w;->aw:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "clean://"

    return-object v0
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/view/w;->ay:J

    return-void
.end method

.method public c(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ax:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ax:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->ax:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ax:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected i()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/utils/cl;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/view/w;->aD:Z

    const v0, 0x7f0e00af

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/view/ScanProgressView;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->as:Lcom/estrongs/android/ui/view/ScanProgressView;

    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Lcom/estrongs/android/ui/a/b;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/w;->am:Lcom/estrongs/android/ui/a/b;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->am:Lcom/estrongs/android/ui/a/b;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->an:Landroid/widget/Button;

    const v0, 0x7f0e00b2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->at:Landroid/widget/TextView;

    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->av:Landroid/widget/TextView;

    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/w;->ax:Landroid/view/View;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/w;->aq:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/cleaner/a;

    invoke-direct {v0}, Lcom/estrongs/android/cleaner/a;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    invoke-direct {p0}, Lcom/estrongs/android/view/w;->aG()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/w;->aD()V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x37216789

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/estrongs/android/view/w;->aH()V

    invoke-virtual {p0}, Lcom/estrongs/android/view/w;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clean://from_snackbar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/estrongs/android/view/w;->aE:Z

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "Snackbar_clean"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v1, "clean://from_notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/estrongs/android/view/w;->aF:Z

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->f()V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ai;->b(Landroid/content/Context;)Lcom/estrongs/android/pop/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ai;->e()V

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "Notify_clean"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v1, "clean://from_analysis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    const-string v1, "Analysis_junk"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public i_()V
    .locals 3

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/cleaner/a;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/app/cleaner/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/cleaner/i;

    iget-boolean v1, p0, Lcom/estrongs/android/view/w;->aC:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    if-eqz v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/estrongs/android/view/w;->aB:Lcom/estrongs/android/j/c;

    const-string v2, "Card_Ad_Show"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/i;->b()V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->as:Lcom/estrongs/android/ui/view/ScanProgressView;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/ScanProgressView;->d()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public q()Lcom/estrongs/android/b/a/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->aA:Lcom/estrongs/android/b/a/e;

    return-object v0
.end method

.method public r()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->al:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public s()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->an:Landroid/widget/Button;

    return-object v0
.end method

.method public t()Lcom/estrongs/android/ui/a/b;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->am:Lcom/estrongs/android/ui/a/b;

    return-object v0
.end method

.method public u()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->aq:Landroid/os/Handler;

    return-object v0
.end method

.method public v()Lcom/estrongs/android/cleaner/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ar:Lcom/estrongs/android/cleaner/a;

    return-object v0
.end method

.method public w()Lcom/estrongs/android/ui/view/ScanProgressView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/w;->as:Lcom/estrongs/android/ui/view/ScanProgressView;

    return-object v0
.end method

.method public x()V
    .locals 2

    new-instance v1, Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-direct {v1, v0, p0}, Lcom/estrongs/android/pop/app/cleaner/c;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/view/w;)V

    iput-object v1, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/cleaner/c;->c()V

    iget-object v0, p0, Lcom/estrongs/android/view/w;->ap:Lcom/estrongs/android/pop/app/cleaner/c;

    iput-object v0, p0, Lcom/estrongs/android/view/w;->az:Lcom/estrongs/android/pop/app/cleaner/a;

    return-void
.end method

.method public y()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/w;->au:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public z()V
    .locals 7

    const/4 v6, 0x0

    const v0, 0x7f0e00ad

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/AppBarLayout$LayoutParams;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/support/design/widget/AppBarLayout$LayoutParams;->a(I)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0e00bb

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    const v2, 0x7f0801e5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/estrongs/android/view/w;->ay:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x19

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/view/w;->ay:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/w;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/v;

    add-int/2addr v1, v2

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/support/design/widget/v;->setMargins(IIII)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/estrongs/android/view/w;->ay:J

    invoke-static {v2, v3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/w;->ag:Landroid/app/Activity;

    const v2, 0x7f0801ce

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
