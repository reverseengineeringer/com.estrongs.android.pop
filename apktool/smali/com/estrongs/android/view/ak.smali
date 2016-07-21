.class public Lcom/estrongs/android/view/ak;
.super Lcom/estrongs/android/view/cr;


# static fields
.field private static aw:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/estrongs/android/pop/app/compress/ba;",
            ">;"
        }
    .end annotation
.end field

.field private static ax:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/compress/bb;",
            ">;"
        }
    .end annotation
.end field

.field private static ay:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/pop/app/compress/ax;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field private aA:I

.field private aB:Ljava/lang/String;

.field private aC:Lcom/estrongs/android/pop/app/compress/br;

.field private al:Lcom/estrongs/io/archive/i;

.field private am:Lcom/estrongs/android/view/bg;

.field private an:Ljava/io/File;

.field private ao:Landroid/os/Handler;

.field private ap:Lcom/estrongs/android/view/bm;

.field private aq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private ar:Ljava/lang/String;

.field private as:Landroid/util/SparseBooleanArray;

.field private at:Lcom/estrongs/android/pop/app/compress/cb;

.field private au:Z

.field private av:Lcom/estrongs/android/pop/app/compress/bs;

.field private az:Z

.field public b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Z

.field e:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/ak;->aw:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->aq:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/estrongs/android/view/ak;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->ar:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->as:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/estrongs/android/view/ak;->au:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->e:Ljava/text/SimpleDateFormat;

    iput-boolean v2, p0, Lcom/estrongs/android/view/ak;->az:Z

    new-instance v0, Lcom/estrongs/android/view/av;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/av;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->aC:Lcom/estrongs/android/pop/app/compress/br;

    new-instance v0, Lcom/estrongs/android/view/bi;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bi;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    new-instance v0, Lcom/estrongs/android/view/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/bj;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/cn;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/estrongs/android/view/al;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/al;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->ao:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    new-instance v1, Lcom/estrongs/android/view/aw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/aw;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ck;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/ak;->aA:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/bs;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/view/bg;)Lcom/estrongs/android/view/bg;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Lcom/estrongs/io/archive/i;)Lcom/estrongs/io/archive/i;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    return-object p1
.end method

.method private a(Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f08021d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/view/as;

    invoke-direct {v2, p0, p1, p2}, Lcom/estrongs/android/view/as;-><init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f080221

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method public static a(Lcom/estrongs/android/pop/app/compress/ba;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->aw:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 3

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f08024b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f08024a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(Ljava/lang/CharSequence;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const v1, 0x7f080226

    new-instance v2, Lcom/estrongs/android/view/ar;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/view/ar;-><init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    const v1, 0x7f080221

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    return-void
.end method

.method private a(Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/estrongs/android/pop/app/compress/bb;->a(Landroid/widget/ProgressBar;)V

    invoke-virtual {p1, p3}, Lcom/estrongs/android/pop/app/compress/bb;->b(Landroid/widget/TextView;)V

    invoke-virtual {p1, p4}, Lcom/estrongs/android/pop/app/compress/bb;->c(Landroid/widget/TextView;)V

    invoke-virtual {p1, p5}, Lcom/estrongs/android/pop/app/compress/bb;->d(Landroid/widget/TextView;)V

    invoke-virtual {p1, p6}, Lcom/estrongs/android/pop/app/compress/bb;->a(Landroid/widget/ImageView;)V

    invoke-virtual {p1, p7}, Lcom/estrongs/android/pop/app/compress/bb;->a(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/pop/app/compress/ax;Lcom/estrongs/fs/h;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/pop/app/compress/bb;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/pop/app/compress/bb;Landroid/widget/ProgressBar;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ak;->r(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/ak;->b(Ljava/util/List;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/estrongs/android/pop/app/compress/bb;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ak;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/ak;->az:Z

    return p1
.end method

.method public static a(Lcom/estrongs/fs/h;)Z
    .locals 2

    sget-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/view/ak;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ar:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/l;

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/ak;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/view/ak;->aB:Ljava/lang/String;

    iget-object v6, p0, Lcom/estrongs/android/view/ak;->c:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/estrongs/android/view/ak;->c:Ljava/lang/String;

    :goto_1
    const/4 v9, 0x1

    iget v10, p0, Lcom/estrongs/android/view/ak;->aA:I

    move v8, p2

    move-object v11, v1

    invoke-direct/range {v0 .. v11}, Lcom/estrongs/android/pop/app/compress/l;-><init>(Lcom/estrongs/android/view/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/estrongs/android/view/au;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/au;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/az;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->b()V

    return-void

    :cond_1
    move-object v6, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ak;->q(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Lcom/estrongs/fs/h;)Z
    .locals 1

    invoke-interface {p0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/compress/a/d;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/app/compress/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/compress/a/e;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/view/ak;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->aB:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/ak;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->aq:Ljava/util/Map;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/compress/bb;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bb;->e()V

    :cond_0
    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->aC:Lcom/estrongs/android/pop/app/compress/br;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->x()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/view/ak;)Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/ak;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ao:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/view/bm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ap:Lcom/estrongs/android/view/bm;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/view/ak;)Lcom/estrongs/android/pop/app/compress/cb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/view/ak;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/ak;->aA:I

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/view/ak;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->z()Z

    move-result v0

    return v0
.end method

.method private q(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/estrongs/android/util/bg;->m(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".rar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/estrongs/io/archive/sevenzip/c;

    const-string v2, "AUTO"

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/estrongs/io/archive/sevenzip/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/estrongs/io/archive/sevenzip/e;)V

    invoke-virtual {v1}, Lcom/estrongs/io/archive/sevenzip/c;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/view/ak;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/android/view/bb;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/view/bb;-><init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/io/archive/i;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/estrongs/android/view/bg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/bg;-><init>(Lcom/estrongs/android/view/ak;)V

    iput-object v1, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    invoke-virtual {v1}, Lcom/estrongs/android/view/bg;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r(Ljava/lang/String;)V
    .locals 5

    const v3, 0x7f080136

    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->t(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v1, 0x7f080136

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/content/ActivityNotFoundException;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/bg;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08041f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method

.method static synthetic u()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic v()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic w()Ljava/util/LinkedList;
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->aw:Ljava/util/LinkedList;

    return-object v0
.end method

.method private x()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bS(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->g(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->a(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private y()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->aq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->aq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->x()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isTmpFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    iget-boolean v0, p0, Lcom/estrongs/android/view/ak;->d:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->q()V

    goto :goto_1
.end method

.method private z()Z
    .locals 1

    sget-object v0, Lcom/estrongs/android/view/ak;->ax:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->g:Landroid/support/v7/widget/GridLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/bm;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->ap:Lcom/estrongs/android/view/bm;

    const v0, 0x7f080728

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bg;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->y()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/view/ax;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ax;-><init>(Lcom/estrongs/android/view/ak;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/b/al;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/ak;->ay:Ljava/util/Map;

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

    check-cast v0, Lcom/estrongs/android/pop/app/compress/ax;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ax;->a()Lcom/estrongs/fs/h;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/estrongs/fs/h;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/fs/b/al;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    instance-of v0, p1, Lcom/estrongs/fs/impl/g/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/estrongs/fs/impl/g/a;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/g/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v1, 0x7f0803fe

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->aq:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_8

    iput-object v2, p0, Lcom/estrongs/android/view/ak;->ar:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    if-nez v0, :cond_4

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/ak;->ao:Landroid/os/Handler;

    iget-object v4, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/bs;-><init>(Lcom/estrongs/android/view/ak;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/i;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/compress/bs;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, v6}, Lcom/estrongs/android/pop/app/compress/cb;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v2, -0x1

    const v3, 0x7f080226

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/be;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/be;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v2, -0x2

    const v3, 0x7f080221

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/ak;->j(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/bf;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/bf;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->at:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ak;->r(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "ddd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====browserTo===path==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "====listsize=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "==mpath=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/view/ak;->aw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/view/cr;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    new-instance v0, Lcom/estrongs/android/view/ay;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ay;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/co;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/estrongs/android/view/az;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/az;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "/"

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/i;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bf(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    if-eqz v0, :cond_6

    iput-object v4, p0, Lcom/estrongs/android/view/ak;->av:Lcom/estrongs/android/pop/app/compress/bs;

    :cond_6
    iput-object p1, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_7
    const v0, 0x7f080728

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->am:Lcom/estrongs/android/view/bg;

    invoke-virtual {v0}, Lcom/estrongs/android/view/bg;->a()V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->y()V

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/view/ba;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ba;-><init>(Lcom/estrongs/android/view/ak;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iput-object v4, p0, Lcom/estrongs/android/view/ak;->D:Lcom/estrongs/fs/h;

    goto/16 :goto_0
.end method

.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->o()Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/estrongs/android/view/ak;->az:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/ak;->b(Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/ak;->b:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/estrongs/android/view/at;

    invoke-direct {v6, p0, v3, p1, p2}, Lcom/estrongs/android/view/at;-><init>(Lcom/estrongs/android/view/ak;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/compress/a;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/compress/j;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/compress/a;->a(Z)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/a;->a()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/i;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->J()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/ak;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08039b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08039a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(I)V

    goto :goto_0

    :cond_1
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f080629

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080316

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->f(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ak;->a_(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/estrongs/android/view/cr;->b(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    if-eqz v0, :cond_2

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->as:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    new-instance v5, Lcom/estrongs/fs/impl/g/a;

    invoke-direct {v5, v4}, Lcom/estrongs/fs/impl/g/a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->a:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lcom/estrongs/android/view/ak;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->J()V

    goto :goto_0
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->f()Lcom/estrongs/fs/h;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    if-eqz v1, :cond_2

    const-string v1, "/"

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->X()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->az()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    new-instance v1, Lcom/estrongs/fs/x;

    const-string v2, "archive://"

    invoke-direct {v1, v2}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    const-string v2, "archive://"

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/android/view/ak;->a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V

    const-string v0, "archive://"

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->g()V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->j()Lcom/estrongs/fs/h;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/view/ak;->au:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ak;->au:Z

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->g()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/ak;->b(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/view/ak;->z()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->g()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/ak;->b(Z)V

    goto :goto_0
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/aa;->a()Lcom/estrongs/android/pop/utils/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/utils/aa;->b()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->ac(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->j()Lcom/estrongs/fs/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/estrongs/fs/x;

    const-string v1, "archive://"

    invoke-direct {v0, v1}, Lcom/estrongs/fs/x;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/ak;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_3
    new-instance v0, Lcom/estrongs/fs/impl/g/a;

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/g/a;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public r()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->an:Ljava/io/File;

    return-object v0
.end method

.method public s()Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->al:Lcom/estrongs/io/archive/i;

    return-object v0
.end method

.method public t()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->q()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/view/am;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/view/am;-><init>(Lcom/estrongs/android/view/ak;Z)V

    new-instance v0, Lcom/estrongs/android/view/an;

    iget-object v2, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/estrongs/android/view/an;-><init>(Lcom/estrongs/android/view/ak;Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f080226

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/view/ao;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/ao;-><init>(Lcom/estrongs/android/view/ak;Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    const v2, 0x7f080221

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/view/aq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/view/aq;-><init>(Lcom/estrongs/android/view/ak;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/f;->c(Z)V

    return-void
.end method
