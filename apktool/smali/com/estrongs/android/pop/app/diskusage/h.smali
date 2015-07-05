.class public Lcom/estrongs/android/pop/app/diskusage/h;
.super Lcom/estrongs/android/view/aw;


# static fields
.field private static final ai:Ljava/lang/String;

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

.field private aI:Z

.field private aJ:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/util/g;",
            ">;"
        }
    .end annotation
.end field

.field private aK:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private aL:Lcom/estrongs/android/ui/a/k;

.field private aM:J

.field private aN:Landroid/widget/ListView;

.field private aO:Landroid/os/Handler;

.field private aj:Ljava/lang/Object;

.field private ak:Z

.field private al:Z

.field private am:J

.field private an:Ljava/io/File;

.field private ao:Ljava/io/File;

.field private ap:Lcom/estrongs/android/pop/app/diskusage/e;

.field private aq:Lcom/estrongs/android/pop/app/diskusage/e;

.field private ar:Ljava/util/HashMap;
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

.field private as:Lcom/estrongs/android/widget/bg;

.field private at:J

.field private au:J

.field private av:J

.field private aw:J

.field private ax:J

.field private ay:J

.field private az:J

.field b:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->ai:Ljava/lang/String;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->c:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 6

    const/high16 v5, 0x41800000    # 16.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aj:Ljava/lang/Object;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ak:Z

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/i;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/i;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->a:Lcom/estrongs/fs/util/h;

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:Z

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:Ljava/util/Stack;

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/diskusage/j;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ag:Landroid/view/LayoutInflater;

    const v3, 0x7f030046

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v0, 0x7f0a015d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    const v2, 0x7f020038

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelector(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-static {v1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/app/diskusage/h;->ai:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->al()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic A(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic B(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->au()V

    return-void
.end method

.method static synthetic C(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/io/File;

    return-object v0
.end method

.method static synthetic D(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    return-object v0
.end method

.method static synthetic E(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    return-object v0
.end method

.method static synthetic F(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    return v0
.end method

.method static synthetic G(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->l:Z

    return v0
.end method

.method static synthetic H(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    return-object v0
.end method

.method static synthetic I(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/view/ca;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    return-object v0
.end method

.method static synthetic J(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bg;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->r()Lcom/estrongs/android/widget/bg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic K(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;J)J
    .locals 3

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    return-wide v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/pop/app/diskusage/e;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/ui/a/k;)Lcom/estrongs/android/ui/a/k;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Lcom/estrongs/android/widget/bg;)Lcom/estrongs/android/widget/bg;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/diskusage/h;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->l(I)Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->j(Z)V

    return-void
.end method

.method private a(Lcom/estrongs/fs/util/g;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->a:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->d:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->e:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->f:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->g:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->j:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->k:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->l:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->m:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->n:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->o:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

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

.method private a(Ljava/lang/String;)V
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
    invoke-static {p1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/estrongs/android/pop/app/diskusage/h;->ai:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "du://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/ca;->a(Ljava/lang/String;Z)V

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->q()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->a:Lcom/estrongs/fs/util/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Lcom/estrongs/fs/util/h;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->b(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->r()Lcom/estrongs/android/widget/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bg;->a(J)V

    :cond_4
    iput-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    :goto_2
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->g()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bg;->a()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/diskusage/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/pop/app/diskusage/e;->a(J)V

    goto :goto_2
.end method

.method private al()V
    .locals 3

    const v0, 0x7f0a0161

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b0062

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0b0063

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/q;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private am()V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/a/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/ui/a/k;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/diskusage/e;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->d(Z)[J

    return-void
.end method

.method private an()V
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ak:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->am()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ak:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ak:Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(Ljava/io/File;)Lcom/estrongs/fs/util/g;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aK:Ljava/util/Stack;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private ao()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->r()Lcom/estrongs/android/widget/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bg;->show()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    :cond_1
    return-void
.end method

.method private ap()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->r()Lcom/estrongs/android/widget/bg;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method private as()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bg;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->H:Lcom/estrongs/android/view/cb;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_1
    return-void
.end method

.method private at()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/bg;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private au()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/diskusage/e;->a()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Landroid/os/Handler;

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

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    return-wide p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/widget/bg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    return-object v0
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
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(Lcom/estrongs/fs/util/g;Lcom/estrongs/fs/util/g;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->a:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v2, p1, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

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

.method static synthetic b(Lcom/estrongs/android/pop/app/diskusage/h;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    return-wide v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/diskusage/h;J)J
    .locals 1

    iput-wide p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    return-wide p1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->ao()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->at()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    return-wide v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->as()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->an()V

    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->am()V

    return-void
.end method

.method private j(Z)V
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

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    aget-wide v2, v0, v6

    aget-wide v4, v0, v7

    sub-long/2addr v2, v4

    aget-wide v4, v0, v1

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    aget-wide v2, v0, v1

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aM:J

    aget-wide v2, v0, v7

    aget-wide v0, v0, v1

    mul-long/2addr v0, v2

    move-wide v4, v0

    :goto_0
    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0166

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->k(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0168

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->k(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v6, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    invoke-static {v6, v7}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v4, v5}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    sub-long/2addr v0, v2

    move-wide v4, v0

    goto :goto_0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/ui/a/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    return-object v0
.end method

.method static synthetic p(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aj:Ljava/lang/Object;

    return-object v0
.end method

.method private p()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

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

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->d:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->l:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->m:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->n:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    iget-wide v4, v0, Lcom/estrongs/fs/util/g;->o:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method private q()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->j(Z)V

    return-void
.end method

.method static synthetic r(Lcom/estrongs/android/pop/app/diskusage/h;)Lcom/estrongs/android/pop/app/diskusage/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aq:Lcom/estrongs/android/pop/app/diskusage/e;

    return-object v0
.end method

.method private r()Lcom/estrongs/android/widget/bg;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/estrongs/android/widget/bg;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/widget/bg;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/widget/bi;

    invoke-direct {v1}, Lcom/estrongs/android/widget/bi;-><init>()V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->a(Lcom/estrongs/android/widget/bk;)V

    const v1, 0x7f0b0085

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/diskusage/h;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->setCancelable(Z)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/o;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/o;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->a(Lcom/estrongs/android/widget/bj;)V

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/diskusage/p;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/bg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic s(Lcom/estrongs/android/pop/app/diskusage/h;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    return-wide v0
.end method

.method static synthetic t(Lcom/estrongs/android/pop/app/diskusage/h;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic u(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic v(Lcom/estrongs/android/pop/app/diskusage/h;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aI:Z

    return v0
.end method

.method static synthetic w(Lcom/estrongs/android/pop/app/diskusage/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->p()V

    return-void
.end method

.method static synthetic x(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic y(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic z(Lcom/estrongs/android/pop/app/diskusage/h;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/aw;->a(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aN:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->d:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ad:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/esclasses/ESActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/s;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/diskusage/s;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;Ljava/util/List;)V

    new-instance v2, Lcom/estrongs/android/pop/app/diskusage/t;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/diskusage/t;-><init>(Lcom/estrongs/android/pop/app/diskusage/h;)V

    invoke-static {v0, p1, v1, v2}, Lcom/estrongs/android/pop/utils/aj;->a(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/util/List;Lcom/estrongs/a/a/p;Lcom/estrongs/android/pop/utils/cb;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->l:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->l:Z

    if-nez v0, :cond_1

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->c(I)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/k;->a(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->e()V

    goto :goto_0
.end method

.method public a_()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->a_()V

    return-void
.end method

.method public b()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/android/pop/app/diskusage/u;-><init>(Ljava/io/File;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/k;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    new-instance v1, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/a/k;->getItem(I)Ljava/lang/Object;

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

.method public b(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ar:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->al:Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->ap()V

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "du://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

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
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->size()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v2}, Lcom/estrongs/android/ui/a/k;->getCount()I

    move-result v2

    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->clear()V

    :goto_1
    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Lcom/estrongs/fs/h;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, -0x2

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->v()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/a/k;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->e()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->i:Lcom/estrongs/android/view/av;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->i:Lcom/estrongs/android/view/av;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/view/av;->a(Ljava/util/List;)V
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
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->y()[I

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    const/4 v0, 0x0

    aget v0, v2, v0

    :goto_3
    const/4 v3, 0x1

    aget v3, v2, v3

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Lcom/estrongs/fs/h;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    if-ltz p1, :cond_3

    if-ge p1, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Lcom/estrongs/fs/h;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->m:Ljava/util/SortedMap;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    aput-wide v2, v1, v5

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    aput-wide v2, v1, v6

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    aput-wide v2, v1, v7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    aput-wide v2, v1, v8

    const/4 v0, 0x5

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    aput-wide v2, v1, v0

    const/4 v0, 0x6

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ax:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->az:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aB:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aF:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aD:J

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aH:J

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/k;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/app/diskusage/e;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aO:Landroid/os/Handler;

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-nez p1, :cond_0

    if-nez v0, :cond_4

    :cond_0
    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aw:J

    aput-wide v4, v1, v2

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ay:J

    aput-wide v4, v1, v7

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aA:J

    aput-wide v4, v1, v8

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aE:J

    aput-wide v4, v1, v9

    const/4 v0, 0x4

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aC:J

    aput-wide v4, v1, v0

    const/4 v0, 0x5

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aG:J

    aput-wide v4, v1, v0

    if-eqz p1, :cond_3

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

    iget-wide v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    sub-long/2addr v2, v4

    aput-wide v2, v1, v6

    const/4 v0, 0x7

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->at:J

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
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

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

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/diskusage/h;->b(I)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aL:Lcom/estrongs/android/ui/a/k;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/k;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->at()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->au()V

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

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ap:Lcom/estrongs/android/pop/app/diskusage/e;

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

.method public j()Lcom/estrongs/fs/h;
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->am:J

    cmp-long v0, v2, v6

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/estrongs/android/util/am;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ak:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->y:Lcom/estrongs/android/view/ca;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "du://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/estrongs/android/view/ca;->a(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->aJ:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/util/g;

    :goto_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->r()Lcom/estrongs/android/widget/bg;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    invoke-virtual {v2}, Lcom/estrongs/android/widget/bg;->a()V

    iget-object v4, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    if-nez v0, :cond_4

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->au:J

    :goto_2
    invoke-virtual {v4, v2, v3}, Lcom/estrongs/android/widget/bg;->a(J)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    const v2, 0x7f0b0217

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/diskusage/h;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/estrongs/android/widget/bg;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/diskusage/h;->as:Lcom/estrongs/android/widget/bg;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->av:J

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/widget/bg;->b(J)V

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/diskusage/h;->g()V

    new-instance v0, Lcom/estrongs/android/pop/app/diskusage/u;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/diskusage/h;->ao:Ljava/io/File;

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

    invoke-static {}, Lcom/estrongs/android/util/am;->a()Ljava/util/List;

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

    sget-object v2, Lcom/estrongs/android/pop/app/diskusage/h;->ai:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/diskusage/h;->g(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/android/view/aw;->l()V

    return-void
.end method
