.class public Lcom/estrongs/android/ui/e/w;
.super Lcom/estrongs/android/ui/e/c;


# instance fields
.field private A:[Ljava/lang/String;

.field private B:[Ljava/lang/String;

.field private C:[Ljava/lang/String;

.field private D:[Ljava/lang/String;

.field private E:[Ljava/lang/String;

.field private F:[Ljava/lang/String;

.field private G:[Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:Lcom/estrongs/android/ui/dialog/gu;

.field private K:Lcom/estrongs/android/ui/dialog/gz;

.field private L:Lcom/estrongs/android/ui/dialog/cg;

.field private M:Lcom/estrongs/android/ui/dialog/az;

.field private N:Lcom/estrongs/android/ui/dialog/gs;

.field private O:Lcom/estrongs/android/ui/dialog/dd;

.field private P:Lcom/estrongs/android/ui/dialog/fs;

.field private Q:Lcom/estrongs/android/ui/dialog/bf;

.field private R:Lcom/estrongs/android/ui/preference/q;

.field private S:Lcom/estrongs/android/ui/pcs/n;

.field public j:Lcom/estrongs/android/ui/e/cp;

.field k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

.field protected l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation
.end field

.field m:Z

.field private n:Lcom/estrongs/android/ui/view/by;

.field private o:Landroid/view/View;

.field private p:I

.field private q:[Ljava/lang/String;

.field private r:[Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:[Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Ljava/lang/String;

.field private w:[Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/c;-><init>(Landroid/content/Context;Z)V

    iput v1, p0, Lcom/estrongs/android/ui/e/w;->p:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->m:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    new-instance v0, Lcom/estrongs/android/ui/e/bu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/bu;-><init>(Lcom/estrongs/android/ui/e/w;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->S:Lcom/estrongs/android/ui/pcs/n;

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/w;->o()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/e/w;->p:I

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/az;)Lcom/estrongs/android/ui/dialog/az;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->M:Lcom/estrongs/android/ui/dialog/az;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/bf;)Lcom/estrongs/android/ui/dialog/bf;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->Q:Lcom/estrongs/android/ui/dialog/bf;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/cg;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->L:Lcom/estrongs/android/ui/dialog/cg;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/dd;)Lcom/estrongs/android/ui/dialog/dd;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->O:Lcom/estrongs/android/ui/dialog/dd;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/fs;)Lcom/estrongs/android/ui/dialog/fs;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->P:Lcom/estrongs/android/ui/dialog/fs;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/gs;)Lcom/estrongs/android/ui/dialog/gs;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->N:Lcom/estrongs/android/ui/dialog/gs;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/gu;)Lcom/estrongs/android/ui/dialog/gu;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->J:Lcom/estrongs/android/ui/dialog/gu;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Lcom/estrongs/android/ui/dialog/gz;)Lcom/estrongs/android/ui/dialog/gz;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/w;->K:Lcom/estrongs/android/ui/dialog/gz;

    return-object p1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/estrongs/android/pop/app/a/ao;->a()Lcom/estrongs/android/pop/app/a/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/a/ao;->d()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/estrongs/android/ui/dialog/ProgressDialog;

    new-instance v2, Lcom/estrongs/android/ui/e/bv;

    invoke-direct {v2, v1, p0}, Lcom/estrongs/android/ui/e/bv;-><init>([Lcom/estrongs/android/ui/dialog/ProgressDialog;Landroid/content/Context;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v2, Lcom/estrongs/android/ui/e/bw;

    invoke-direct {v2, v0, v1, p0}, Lcom/estrongs/android/ui/e/bw;-><init>(Landroid/os/Handler;[Lcom/estrongs/android/ui/dialog/ProgressDialog;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/e/bw;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/e/w;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    const-string v1, "net://"

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/m/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/util/am;->an(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pcs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->ai(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/estrongs/fs/impl/j/b;->m(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/w;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/w;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->S:Lcom/estrongs/android/ui/pcs/n;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/w;->a(Lcom/estrongs/android/ui/pcs/n;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/w;->show()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/e/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/view/by;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/e/w;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/az;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->M:Lcom/estrongs/android/ui/dialog/az;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/fs;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->P:Lcom/estrongs/android/ui/dialog/fs;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/bf;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->Q:Lcom/estrongs/android/ui/dialog/bf;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/cg;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->L:Lcom/estrongs/android/ui/dialog/cg;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/dd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->O:Lcom/estrongs/android/ui/dialog/dd;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/gs;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->N:Lcom/estrongs/android/ui/dialog/gs;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/gu;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->J:Lcom/estrongs/android/ui/dialog/gu;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/dialog/gz;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->K:Lcom/estrongs/android/ui/dialog/gz;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/e/w;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/e/w;)Lcom/estrongs/android/ui/pcs/n;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->S:Lcom/estrongs/android/ui/pcs/n;

    return-object v0
.end method

.method private o()V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/utils/cl;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->m:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const v1, 0x7f0a007a

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->f:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f02028a

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Lcom/estrongs/android/ui/view/by;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {v2, v3, v0, v1}, Lcom/estrongs/android/ui/view/by;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;I)V

    iput-object v2, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    new-instance v0, Lcom/estrongs/android/ui/e/x;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/x;-><init>(Lcom/estrongs/android/ui/e/w;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->R:Lcom/estrongs/android/ui/preference/q;

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->R:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->a(Lcom/estrongs/android/ui/preference/q;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->ak()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->am()Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/w;->k()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    const-string v1, "normal_mode"

    invoke-virtual {v0, v1, p0}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    const-string v1, "paste_mode"

    new-instance v2, Lcom/estrongs/android/ui/e/is;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    iget-object v4, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v5, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    invoke-direct {v2, v3, v4, v5}, Lcom/estrongs/android/ui/e/is;-><init>(Lcom/estrongs/android/ui/view/by;Landroid/app/Activity;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    const-string v0, "edit_mode"

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/view/by;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/e/cp;->a(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->R()V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->q:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1, v5}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f(Z)V

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    if-nez v1, :cond_1

    new-instance v1, Lcom/estrongs/android/ui/e/bt;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-boolean v3, p0, Lcom/estrongs/android/ui/e/w;->d:Z

    const/4 v4, 0x0

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/estrongs/android/ui/e/bt;-><init>(Lcom/estrongs/android/ui/e/w;Landroid/app/Activity;ZLandroid/widget/LinearLayout;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    const-string v2, "edit_mode"

    iget-object v3, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Lcom/estrongs/android/ui/e/a;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v1, v6}, Lcom/estrongs/android/ui/view/by;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    const-string v2, "edit_mode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/view/by;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    const-string v2, "edit_mode"

    iput-object v2, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->v()V

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Lcom/estrongs/android/view/aw;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->d()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->a(II)V

    :cond_2
    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n()V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/e/w;->a(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/view/by;->a(Z)V

    return-void
.end method

.method protected d()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/esclasses/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->n()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->J()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->l()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iput p1, p0, Lcom/estrongs/android/ui/e/w;->p:I

    invoke-virtual {p0}, Lcom/estrongs/android/ui/e/w;->j()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    sget-boolean v0, Lcom/estrongs/android/pop/z;->r:Z

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aN(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "view_pic"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    :goto_1
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const-string v1, "view_pic"

    const-string v2, "sort"

    invoke-virtual {p0, v0, v1, v2}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "view_pic"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "view"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "search"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "search"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_12
    invoke-static {}, Lcom/estrongs/android/ui/pcs/r;->a()Lcom/estrongs/android/ui/pcs/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/r;->d()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->y()Lcom/estrongs/android/view/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/view/WebViewWrapper;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/android/view/WebViewWrapper;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->f:Lcom/estrongs/android/widget/ThumbContentViewSwitcher;

    invoke-virtual {v1}, Lcom/estrongs/android/widget/ThumbContentViewSwitcher;->f()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const-string v2, "unlock_page"

    invoke-virtual {p0, v1, v2, v5}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->q()Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "forward"

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->ap()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->o()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->al()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "zoom_in"

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->ap()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->o()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/estrongs/android/view/WebViewWrapper;->am()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "zoom_out"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const-string v2, "lock_page"

    invoke-virtual {p0, v1, v2, v5}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_15
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->E:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/fs/impl/l/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;)V

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b([Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_d
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_6
        :pswitch_16
        :pswitch_17
        :pswitch_9
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/e/c;->g()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/e/w;->R:Lcom/estrongs/android/ui/preference/q;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->b(Lcom/estrongs/android/ui/preference/q;)V

    return-void
.end method

.method protected h()V
    .locals 41

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    new-instance v2, Lcom/estrongs/android/view/a/a;

    const v3, 0x7f0202d6

    const v4, 0x7f0b002a

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v3, Lcom/estrongs/android/ui/e/ar;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/e/ar;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/view/a/a;

    const v4, 0x7f020285

    const v5, 0x7f0b02ad

    invoke-direct {v3, v4, v5}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v4, Lcom/estrongs/android/ui/e/bd;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/estrongs/android/ui/e/bd;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v3, v4}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/a/a;

    const v5, 0x7f0202c4

    const v6, 0x7f0b0021

    invoke-direct {v4, v5, v6}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v5, Lcom/estrongs/android/ui/e/bo;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/estrongs/android/ui/e/bo;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v4, v5}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v4

    new-instance v5, Lcom/estrongs/android/view/a/a;

    const v6, 0x7f0202c4

    const v7, 0x7f0b0021

    invoke-direct {v5, v6, v7}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v6, Lcom/estrongs/android/ui/e/by;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/estrongs/android/ui/e/by;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v5, v6}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v5

    new-instance v6, Lcom/estrongs/android/view/a/a;

    const v7, 0x7f020292

    const v8, 0x7f0b032a

    invoke-direct {v6, v7, v8}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v7, Lcom/estrongs/android/ui/e/ca;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/estrongs/android/ui/e/ca;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v6, v7}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v6

    new-instance v7, Lcom/estrongs/android/view/a/a;

    const v8, 0x7f02028c

    const v9, 0x7f0b02b0

    invoke-direct {v7, v8, v9}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v8, Lcom/estrongs/android/ui/e/cb;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/estrongs/android/ui/e/cb;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v7, v8}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v7

    new-instance v8, Lcom/estrongs/android/view/a/a;

    const v9, 0x7f0202b4

    const v10, 0x7f0b0041

    invoke-direct {v8, v9, v10}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v9, Lcom/estrongs/android/ui/e/cd;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/estrongs/android/ui/e/cd;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v8, v9}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v8

    new-instance v9, Lcom/estrongs/android/view/a/a;

    const v10, 0x7f0202d3

    const v11, 0x7f0b0020

    invoke-direct {v9, v10, v11}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v10, Lcom/estrongs/android/ui/e/ce;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/estrongs/android/ui/e/ce;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v9, v10}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v9

    new-instance v10, Lcom/estrongs/android/view/a/a;

    const v11, 0x7f0202d3

    const v12, 0x7f0b03ed

    invoke-direct {v10, v11, v12}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v11, Lcom/estrongs/android/ui/e/y;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/estrongs/android/ui/e/y;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v10, v11}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v10

    new-instance v11, Lcom/estrongs/android/view/a/a;

    const v12, 0x7f0202cf

    const v13, 0x7f0b002f

    invoke-direct {v11, v12, v13}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v12, Lcom/estrongs/android/ui/e/z;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/estrongs/android/ui/e/z;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v11, v12}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v11

    new-instance v12, Lcom/estrongs/android/view/a/a;

    const v13, 0x7f0202dc

    const v14, 0x7f0b003f

    invoke-direct {v12, v13, v14}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v13, Lcom/estrongs/android/ui/e/aa;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/estrongs/android/ui/e/aa;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v12, v13}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v12

    new-instance v13, Lcom/estrongs/android/view/a/a;

    const v14, 0x7f0202ed

    const v15, 0x7f0b0024

    invoke-direct {v13, v14, v15}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v14, Lcom/estrongs/android/ui/e/ae;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/estrongs/android/ui/e/ae;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v13, v14}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v13

    new-instance v14, Lcom/estrongs/android/view/a/a;

    const v15, 0x7f0202ed

    const v16, 0x7f0b0024

    invoke-direct/range {v14 .. v16}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v15, Lcom/estrongs/android/ui/e/ah;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/e/ah;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual {v14, v15}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v14

    new-instance v15, Lcom/estrongs/android/view/a/a;

    const v16, 0x7f0202c8

    const v17, 0x7f0b02ae

    invoke-direct/range {v15 .. v17}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v16, Lcom/estrongs/android/ui/e/ak;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ak;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v15 .. v16}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v15

    new-instance v16, Lcom/estrongs/android/view/a/a;

    const v17, 0x7f0202ba

    const v18, 0x7f0b0369

    invoke-direct/range {v16 .. v18}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v17, Lcom/estrongs/android/ui/e/al;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/al;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v16 .. v17}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v16

    new-instance v17, Lcom/estrongs/android/view/a/a;

    const v18, 0x7f0202c5

    const v19, 0x7f0b023d

    invoke-direct/range {v17 .. v19}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v18, Lcom/estrongs/android/ui/e/an;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/an;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v17 .. v18}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v17

    new-instance v18, Lcom/estrongs/android/view/a/a;

    const v19, 0x7f0202e6

    const v20, 0x7f0b04ca

    invoke-direct/range {v18 .. v20}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v19, Lcom/estrongs/android/ui/e/ap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ap;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v18 .. v19}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v18

    new-instance v19, Lcom/estrongs/android/view/a/a;

    const v20, 0x7f0202b2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    move-object/from16 v21, v0

    const v22, 0x7f0b04cf

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v19 .. v21}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v20, Lcom/estrongs/android/ui/e/aq;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/aq;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v19 .. v20}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v19

    new-instance v20, Lcom/estrongs/android/view/a/a;

    const v21, 0x7f0202d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->b:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f0b04f5

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lcom/estrongs/android/view/a/a;-><init>(ILjava/lang/String;)V

    new-instance v21, Lcom/estrongs/android/ui/e/as;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/as;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v20 .. v21}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v20

    new-instance v21, Lcom/estrongs/android/view/a/a;

    const v22, 0x7f0202ba

    const v23, 0x7f0b0513

    invoke-direct/range {v21 .. v23}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v22, Lcom/estrongs/android/ui/e/au;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/au;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v21 .. v22}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v21

    new-instance v22, Lcom/estrongs/android/view/a/a;

    const v23, 0x7f0202a5

    const v24, 0x7f0b0556

    invoke-direct/range {v22 .. v24}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v23, Lcom/estrongs/android/ui/e/av;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/av;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v22 .. v23}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v22

    new-instance v23, Lcom/estrongs/android/view/a/a;

    const v24, 0x7f0202b3

    const v25, 0x7f0b052c

    invoke-direct/range {v23 .. v25}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v24, Lcom/estrongs/android/ui/e/aw;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/aw;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v23 .. v24}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    new-instance v23, Lcom/estrongs/android/view/a/a;

    const v24, 0x7f0202e6

    const v25, 0x7f0b0525

    invoke-direct/range {v23 .. v25}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v24, Lcom/estrongs/android/ui/e/ax;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ax;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v23 .. v24}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v23

    new-instance v24, Lcom/estrongs/android/view/a/a;

    const v25, 0x7f0202d9

    const v26, 0x7f0b006f

    invoke-direct/range {v24 .. v26}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v25, Lcom/estrongs/android/ui/e/ay;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ay;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v24 .. v25}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v24

    new-instance v25, Lcom/estrongs/android/view/a/a;

    const v26, 0x7f0202f8

    const v27, 0x7f0b02c2

    invoke-direct/range {v25 .. v27}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v26, Lcom/estrongs/android/ui/e/az;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/az;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v25 .. v26}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v25

    new-instance v26, Lcom/estrongs/android/view/a/a;

    const v27, 0x7f0202d1

    const v28, 0x7f0b0412

    invoke-direct/range {v26 .. v28}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v27, Lcom/estrongs/android/ui/e/ba;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/ba;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v26 .. v27}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v26

    new-instance v27, Lcom/estrongs/android/view/a/a;

    const v28, 0x7f0202b5

    const v29, 0x7f0b0411

    invoke-direct/range {v27 .. v29}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v28, Lcom/estrongs/android/ui/e/bb;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bb;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v27 .. v28}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v27

    new-instance v28, Lcom/estrongs/android/view/a/a;

    const v29, 0x7f0202ae

    const v30, 0x7f0b02b8

    invoke-direct/range {v28 .. v30}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v29, Lcom/estrongs/android/ui/e/bc;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bc;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v28 .. v29}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v28

    new-instance v29, Lcom/estrongs/android/view/a/a;

    const v30, 0x7f0202b9

    const v31, 0x7f0b0413

    invoke-direct/range {v29 .. v31}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v30, Lcom/estrongs/android/ui/e/be;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/be;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v29 .. v30}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v29

    new-instance v30, Lcom/estrongs/android/view/a/a;

    const v31, 0x7f0202eb

    const v32, 0x7f0b0414

    invoke-direct/range {v30 .. v32}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v31, Lcom/estrongs/android/ui/e/bf;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bf;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v30 .. v31}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v30

    new-instance v31, Lcom/estrongs/android/view/a/a;

    const v32, 0x7f0202ad

    const v33, 0x7f0b009d

    invoke-direct/range {v31 .. v33}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v32, Lcom/estrongs/android/ui/e/bg;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bg;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v31 .. v32}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v31

    new-instance v32, Lcom/estrongs/android/view/a/a;

    const v33, 0x7f0202b0

    const v34, 0x7f0b0461

    invoke-direct/range {v32 .. v34}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v33, Lcom/estrongs/android/ui/e/bh;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bh;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v32 .. v33}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v32

    new-instance v33, Lcom/estrongs/android/view/a/a;

    const v34, 0x7f0202c3

    const v35, 0x7f0b0462

    invoke-direct/range {v33 .. v35}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v34, Lcom/estrongs/android/ui/e/bi;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bi;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v33 .. v34}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v33

    new-instance v34, Lcom/estrongs/android/view/a/a;

    const v35, 0x7f0202ac

    const v36, 0x7f0b003c

    invoke-direct/range {v34 .. v36}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v35, Lcom/estrongs/android/ui/e/bj;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bj;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v34 .. v35}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v34

    new-instance v35, Lcom/estrongs/android/view/a/a;

    const v36, 0x7f02028f

    const v37, 0x7f0b0031

    invoke-direct/range {v35 .. v37}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v36, Lcom/estrongs/android/ui/e/bk;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bk;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v35 .. v36}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v35

    new-instance v36, Lcom/estrongs/android/view/a/a;

    const v37, 0x7f0202d9

    const v38, 0x7f0b006f

    invoke-direct/range {v36 .. v38}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v37, Lcom/estrongs/android/ui/e/bl;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bl;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v36 .. v37}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    new-instance v36, Lcom/estrongs/android/view/a/a;

    const v37, 0x7f0202a3

    const v38, 0x7f0b0486

    invoke-direct/range {v36 .. v38}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v37, Lcom/estrongs/android/ui/e/bm;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bm;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v36 .. v37}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v36

    new-instance v37, Lcom/estrongs/android/view/a/a;

    const v38, 0x7f0202e8

    const v39, 0x7f0b0487

    invoke-direct/range {v37 .. v39}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v38, Lcom/estrongs/android/ui/e/bn;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/bn;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v37 .. v38}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v37

    new-instance v38, Lcom/estrongs/android/view/a/a;

    const v39, 0x7f0202e8

    const v40, 0x7f0b011c

    invoke-direct/range {v38 .. v40}, Lcom/estrongs/android/view/a/a;-><init>(II)V

    new-instance v39, Lcom/estrongs/android/ui/e/br;

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/e/br;-><init>(Lcom/estrongs/android/ui/e/w;)V

    invoke-virtual/range {v38 .. v39}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    move-object/from16 v39, v0

    const-string v40, "analyse"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v39, "bt_discoverable"

    move-object/from16 v0, v39

    invoke-interface {v3, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v6, "charset"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v6, "extract"

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v6, "new"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "new_window"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "refresh"

    invoke-interface {v3, v4, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "search"

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "scan"

    invoke-interface {v3, v4, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v4, "select"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "sort"

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "view"

    invoke-interface {v2, v3, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "view_pic"

    invoke-interface {v2, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "recommend"

    move-object/from16 v0, v37

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "player"

    invoke-interface {v2, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_login"

    move-object/from16 v0, v16

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_register"

    move-object/from16 v0, v17

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_directly"

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_logout"

    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_set_path"

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "remote_settings"

    move-object/from16 v0, v24

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "windows"

    move-object/from16 v0, v25

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_chg_account"

    move-object/from16 v0, v21

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_verify_account"

    move-object/from16 v0, v22

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "pcs_change_password"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "clear_recycle"

    move-object/from16 v0, v35

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "back"

    move-object/from16 v0, v26

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "forward"

    move-object/from16 v0, v27

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "lock_page"

    move-object/from16 v0, v29

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "unlock_page"

    move-object/from16 v0, v30

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "open_in_browser"

    move-object/from16 v0, v36

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "add_fav"

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "add_to_desk"

    move-object/from16 v0, v31

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "zoom_in"

    move-object/from16 v0, v32

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "zoom_out"

    move-object/from16 v0, v33

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "share"

    move-object/from16 v0, v34

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    const-string v3, "adb_install"

    move-object/from16 v0, v38

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/android/view/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->l:Ljava/util/Map;

    return-object v0
.end method

.method public k()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "player"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view_pic"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "sort"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "charset"

    aput-object v1, v0, v4

    const-string v1, "extract"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "analyse"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    const-string v1, "windows"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "clear_recycle"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->E:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new_window"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "recommend"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zoom_out"

    aput-object v1, v0, v3

    const-string v1, "zoom_in"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "back"

    aput-object v1, v0, v6

    const-string v1, "forward"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "add_fav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open_in_browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "add_to_desk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "adb_install"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:[Ljava/lang/String;

    :goto_0
    sget-boolean v0, Lcom/estrongs/android/pop/z;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    const-string v1, "recommend"

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/e/w;->a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view_pic"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "charset"

    aput-object v1, v0, v3

    const-string v1, "extract"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "analyse"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "sort"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "windows"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    const-string v1, "windows"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v5

    const-string v1, "windows"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->E:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new_window"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "recommend"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zoom_out"

    aput-object v1, v0, v3

    const-string v1, "zoom_in"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "back"

    aput-object v1, v0, v6

    const-string v1, "forward"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "add_fav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open_in_browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "add_to_desk"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "adb_install"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->H:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/e/w;->I:Z

    if-nez v0, :cond_3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "player"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view_pic"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "sort"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v4

    const-string v1, "scan"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "charset"

    aput-object v1, v0, v4

    const-string v1, "extract"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "analyse"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "new"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "clear_recycle"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->E:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "new_window"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "recommend"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zoom_out"

    aput-object v1, v0, v3

    const-string v1, "zoom_in"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "back"

    aput-object v1, v0, v6

    const-string v1, "forward"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "add_fav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open_in_browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "add_to_desk"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "select"

    aput-object v1, v0, v3

    const-string v1, "adb_install"

    aput-object v1, v0, v4

    const-string v1, "search"

    aput-object v1, v0, v5

    const-string v1, "refresh"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "windows"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->q:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->r:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "player"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->s:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view_pic"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->t:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view_pic"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "bt_discoverable"

    aput-object v1, v0, v3

    const-string v1, "scan"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->v:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "charset"

    aput-object v1, v0, v3

    const-string v1, "extract"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->w:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "analyse"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "sort"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->x:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->y:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_verify_account"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->A:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "new"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "sort"

    aput-object v1, v0, v6

    const-string v1, "view"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pcs_set_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pcs_change_password"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pcs_chg_account"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pcs_logout"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->B:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pcs_login"

    aput-object v1, v0, v3

    const-string v1, "pcs_register"

    aput-object v1, v0, v4

    const-string v1, "pcs_directly"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->z:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "remote_settings"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->C:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "clear_recycle"

    aput-object v1, v0, v3

    const-string v1, "refresh"

    aput-object v1, v0, v4

    const-string v1, "view"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->E:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "new_window"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "recommend"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->F:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "zoom_out"

    aput-object v1, v0, v3

    const-string v1, "zoom_in"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "back"

    aput-object v1, v0, v6

    const-string v1, "forward"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "add_fav"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "share"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "open_in_browser"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "add_to_desk"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->D:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "adb_install"

    aput-object v1, v0, v3

    const-string v1, "search"

    aput-object v1, v0, v4

    const-string v1, "refresh"

    aput-object v1, v0, v5

    const-string v1, "view"

    aput-object v1, v0, v6

    const-string v1, "windows"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/estrongs/android/ui/e/w;->G:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public l()Lcom/estrongs/android/ui/view/by;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->n:Lcom/estrongs/android/ui/view/by;

    return-object v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->j:Lcom/estrongs/android/ui/e/cp;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/cp;->j()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/w;->k:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->s()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/e/w;->b(Z)V

    return-void
.end method
