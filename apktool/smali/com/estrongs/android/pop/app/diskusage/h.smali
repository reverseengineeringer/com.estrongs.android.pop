.class public Lcom/estrongs/android/pop/app/diskusage/h;
.super Lcom/estrongs/android/view/cr;


# static fields
.field private static final an:Ljava/lang/String;

.field public static c:Landroid/util/DisplayMetrics;


# instance fields
.field protected a:Lcom/estrongs/fs/util/h;

.field private aA:J

.field private aB:J

.field private aC:J

.field private aD:J

.field private aE:J

.field private aF:J

.field private aG:J

.field private aH:J

.field private aI:J

.field private aJ:J

.field private aK:J

.field private aL:J

.field private aM:J

.field private aN:Z

.field private aO:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/util/g;",
            ">;"
        }
    .end annotation
.end field

.field private aP:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private aQ:Lcom/estrongs/android/ui/adapter/k;

.field private aR:J

.field private aS:Landroid/support/v7/widget/RecyclerView;

.field private aT:Landroid/os/Handler;

.field private al:Lcom/estrongs/android/view/cp;

.field private am:Lcom/estrongs/android/view/co;

.field private ao:Ljava/lang/Object;

.field private ap:Z

.field private aq:Z

.field private ar:J

.field private as:Ljava/io/File;

.field private at:Ljava/io/File;

.field private au:Lcom/estrongs/android/pop/app/diskusage/e;

.field private av:Lcom/estrongs/android/pop/app/diskusage/e;

.field private aw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/diskusage/e;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Lcom/estrongs/android/widget/bh;

.field private ay:J

.field private az:J

.field b:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->c:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/lang/Object;

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Z

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/i;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->a:Lcom/estrongs/fs/util/h;

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    iput-boolean v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aP:Ljava/util/Stack;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/j;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aT:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/at;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aj:Landroid/view/LayoutInflater;

    const v3, 0x7f03012c

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/v;

    invoke-direct {v0, p0, v6, v7}, Lcom/estrongs/android/pop/app/diskusage/v;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;ZZ)V

    move-object v1, v0

    :goto_0
    const v0, 0x7f0e0305

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setScrollBarStyle(I)V

    invoke-static {v2}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->v()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aj:Landroid/view/LayoutInflater;

    const v3, 0x7f03009f

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/v;

    invoke-direct {v0, p0, v7, v7}, Lcom/estrongs/android/pop/app/diskusage/v;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;ZZ)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private A()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bh;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->O:Lcom/estrongs/android/view/dw;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_1
    return-void
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private B()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bh;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private C()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aT:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/r;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->C()V

    return-void
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Ljava/io/File;

    return-object v0
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    return-object v0
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    return-object v0
.end method

.method static synthetic H(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    return v0
.end method

.method static synthetic I(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->q:Z

    return v0
.end method

.method static synthetic J(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    return-object v0
.end method

.method static synthetic K(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/dv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    return-object v0
.end method

.method static synthetic L(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->u()Lcom/estrongs/android/widget/bh;

    move-result-object v0

    return-object v0
.end method

.method static synthetic M(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic N(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic O(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aR:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    return-wide p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/ui/adapter/k;)Lcom/estrongs/android/ui/adapter/k;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/widget/bh;)Lcom/estrongs/android/widget/bh;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->j(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/fs/util/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/fs/util/g;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Z)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/util/g;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    return-void
.end method

.method private a(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V
    .locals 4

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->a:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->a:J

    iget v0, p1, Lcom/estrongs/fs/util/g;->b:I

    iget v1, p2, Lcom/estrongs/fs/util/g;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/util/g;->b:I

    iget v0, p1, Lcom/estrongs/fs/util/g;->c:I

    iget v1, p2, Lcom/estrongs/fs/util/g;->c:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/util/g;->c:I

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->d:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->d:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->e:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->e:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->f:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->f:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->g:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->h:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->h:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->i:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->i:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->j:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->j:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->k:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->k:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->l:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->l:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->m:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->m:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->n:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->n:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->o:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->o:J

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    return-wide v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    return-wide p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/fs/util/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/fs/util/g;)V

    return-void
.end method

.method private b(Lcom/estrongs/fs/util/g;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    return-void
.end method

.method private b(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V
    .locals 4

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->a:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->a:J

    iget v0, p1, Lcom/estrongs/fs/util/g;->b:I

    iget v1, p2, Lcom/estrongs/fs/util/g;->b:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/util/g;->b:I

    iget v0, p1, Lcom/estrongs/fs/util/g;->c:I

    iget v1, p2, Lcom/estrongs/fs/util/g;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/estrongs/fs/util/g;->c:I

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->d:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->d:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->e:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->e:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->f:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->f:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->g:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->h:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->h:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->i:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->i:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->j:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->j:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->k:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->k:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->l:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->l:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->m:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->m:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->n:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->n:J

    iget-wide v0, p1, Lcom/estrongs/fs/util/g;->o:J

    iget-wide v2, p2, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/util/g;->o:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, "du://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v0, "du://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->t()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->a:Lcom/estrongs/fs/util/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/fs/util/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aR:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->u()Lcom/estrongs/android/widget/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bh;->a(J)V

    :cond_4
    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->g()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bh;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(J)V

    goto :goto_2
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bh;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->y()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->B()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    return-wide v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aT:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->A()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->x()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->w()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object v0
.end method

.method private k(Z)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->k(Ljava/lang/String;)[J

    move-result-object v0

    aget-wide v2, v0, v6

    aget-wide v4, v0, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    aget-wide v2, v0, v6

    aget-wide v4, v0, v7

    sub-long/2addr v2, v4

    aget-wide v4, v0, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aR:J

    aget-wide v2, v0, v7

    aget-wide v0, v0, v1

    mul-long/2addr v0, v2

    move-wide v4, v0

    :goto_0
    const v0, 0x7f0e0308

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e030a

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0e030c

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    sub-long/2addr v0, v2

    move-wide v4, v0

    goto :goto_0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/co;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:Lcom/estrongs/android/view/co;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/ui/adapter/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/cp;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Lcom/estrongs/android/view/cp;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    return-object v0
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private s()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/diskusage/e;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object v0
.end method

.method private t()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->k(Z)V

    return-void
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    return-wide v0
.end method

.method private u()Lcom/estrongs/android/widget/bh;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/estrongs/android/widget/bh;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/widget/bh;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/widget/bj;

    invoke-direct {v1}, Lcom/estrongs/android/widget/bj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->a(Lcom/estrongs/android/widget/bl;)V

    const v1, 0x7f0805a3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->j(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->setCancelable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/o;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->a(Lcom/estrongs/android/widget/bk;)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/p;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bh;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    return-object v0
.end method

.method private v()V
    .locals 3

    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08019b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08019d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/q;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:Lcom/estrongs/android/view/co;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/view/co;)V

    :cond_0
    return-void
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private w()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/adapter/k;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Lcom/estrongs/android/view/cp;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/view/cp;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->d(Z)[J

    return-void
.end method

.method private x()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:Lcom/estrongs/android/pop/app/diskusage/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->w()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aP:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->e:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aP:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/io/File;)Lcom/estrongs/fs/util/g;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aP:Ljava/util/Stack;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->e:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Z

    return v0
.end method

.method private y()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->u()Lcom/estrongs/android/widget/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bh;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    :cond_1
    return-void
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->s()V

    return-void
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    return-object v0
.end method

.method private z()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->u()Lcom/estrongs/android/widget/bh;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aT:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aS:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cp;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Lcom/estrongs/android/view/cp;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/adapter/k;->a(Lcom/estrongs/android/view/cp;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/app/d/a;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/diskusage/s;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/util/List;)V

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/diskusage/t;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-static {v0, p1, v1, v2}, Lcom/estrongs/android/pop/utils/ao;->a(Lcom/estrongs/android/pop/app/d/a;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/ck;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->q:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->q:Z

    if-nez v0, :cond_1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/adapter/k;->a(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->e()V

    goto :goto_0
.end method

.method public a_(I)Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/k;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/adapter/k;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v1, v0}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Ljava/io/File;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->z()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->k()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/k;

    const-string v2, "DiskUsage-Counter"

    invoke-direct {v1, p0, v2, v0}, Lcom/estrongs/android/pop/app/diskusage/k;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/diskusage/k;->start()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(I)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/adapter/k;->getItemCount()I

    move-result v2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->clear()V

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->a_(I)Lcom/estrongs/fs/h;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->K()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/adapter/k;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->l:Lcom/estrongs/android/view/cq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->l:Lcom/estrongs/android/view/cq;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->o()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/cq;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x4

    if-ne p1, v0, :cond_5

    :try_start_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->M()[I

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    const/4 v0, 0x0

    aget v0, v2, v0

    :goto_3
    const/4 v3, 0x1

    aget v3, v2, v3

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->a_(I)Lcom/estrongs/fs/h;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-ltz p1, :cond_3

    if-ge p1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a_(I)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->r:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public c(Z)[J
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x7

    new-array v1, v0, [J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    aput-wide v2, v1, v5

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    aput-wide v2, v1, v6

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    aput-wide v2, v1, v7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    aput-wide v2, v1, v8

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    aput-wide v2, v1, v0

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->e:J

    aput-wide v2, v1, v4

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->g:J

    aput-wide v2, v1, v5

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->i:J

    aput-wide v2, v1, v6

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->m:J

    aput-wide v2, v1, v7

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->k:J

    aput-wide v2, v1, v8

    const/4 v2, 0x5

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->o:J

    aput-wide v4, v1, v2

    const/4 v2, 0x6

    iget v0, v0, Lcom/estrongs/fs/util/g;->b:I

    int-to-long v4, v0

    aput-wide v4, v1, v2

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/k;->getItemCount()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aT:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public d(Z)[J
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    :goto_0
    new-array v1, v0, [J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    aput-wide v4, v1, v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    aput-wide v4, v1, v7

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    aput-wide v4, v1, v8

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:J

    aput-wide v4, v1, v9

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    aput-wide v4, v1, v0

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:J

    aput-wide v4, v1, v0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    aput-wide v2, v1, v0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x7

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    aput-wide v4, v1, v6

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_1

    aget-wide v2, v1, v6

    aget-wide v4, v1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->d:J

    aput-wide v4, v1, v2

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->f:J

    aput-wide v2, v1, v7

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->h:J

    aput-wide v2, v1, v8

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->l:J

    aput-wide v2, v1, v9

    const/4 v2, 0x4

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->j:J

    aput-wide v4, v1, v2

    const/4 v2, 0x5

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->n:J

    aput-wide v4, v1, v2

    iget-wide v2, v0, Lcom/estrongs/fs/util/g;->a:J

    aput-wide v2, v1, v6

    move-object v0, v1

    goto :goto_1
.end method

.method public synthetic e(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a_(I)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aQ:Lcom/estrongs/android/ui/adapter/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/adapter/k;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->C()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->b()Lcom/estrongs/fs/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->j()Lcom/estrongs/fs/h;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Z)V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->c()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    new-instance v3, Lcom/estrongs/android/pop/app/diskusage/u;

    aget-object v4, v1, v0

    invoke-direct {v3, v4}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public i_()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->F:Lcom/estrongs/android/view/dv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "du://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->u()Lcom/estrongs/android/widget/bh;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/bh;->a()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    if-nez v0, :cond_4

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    :goto_2
    invoke-virtual {v4, v2, v3}, Lcom/estrongs/android/widget/bh;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    const v2, 0x7f080403

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->j(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/bh;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:Lcom/estrongs/android/widget/bh;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bh;->b(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:Ljava/io/File;

    invoke-direct {v0, v2}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/estrongs/fs/util/g;->b()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method protected k()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public l()V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->j(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/cr;->l()V

    return-void
.end method
