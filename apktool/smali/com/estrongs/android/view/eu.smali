.class public Lcom/estrongs/android/view/eu;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/view/fj;",
            ">;"
        }
    .end annotation
.end field

.field private am:Lcom/estrongs/android/view/fj;

.field private an:Landroid/widget/ProgressBar;

.field private ao:Landroid/widget/Button;

.field private ap:Lcom/estrongs/android/view/co;

.field private aq:Landroid/widget/BaseExpandableListAdapter;

.field private ar:Lcom/estrongs/android/pop/af;

.field private b:Lcom/estrongs/android/view/cr;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/estrongs/android/pop/ad;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->b:Lcom/estrongs/android/view/cr;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->e:Lcom/estrongs/android/pop/ad;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    new-instance v0, Lcom/estrongs/android/view/ev;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ev;-><init>(Lcom/estrongs/android/view/eu;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->ap:Lcom/estrongs/android/view/co;

    new-instance v0, Lcom/estrongs/android/view/fb;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fb;-><init>(Lcom/estrongs/android/view/eu;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->aq:Landroid/widget/BaseExpandableListAdapter;

    new-instance v0, Lcom/estrongs/android/view/fc;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/fc;-><init>(Lcom/estrongs/android/view/eu;)V

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->ar:Lcom/estrongs/android/pop/af;

    invoke-virtual {p0}, Lcom/estrongs/android/view/eu;->s()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cr;)Lcom/estrongs/android/view/cr;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/eu;->b:Lcom/estrongs/android/view/cr;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/eu;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/eu;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/eu;->m(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/eu;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/eu;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/eu;)Lcom/estrongs/android/view/fj;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/eu;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->e:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/eu;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private m(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bk;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->W:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/ex;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/ex;-><init>(Lcom/estrongs/android/view/eu;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private t()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/view/ey;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/ey;-><init>(Lcom/estrongs/android/view/eu;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/view/fj;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/fj;-><init>(Lcom/estrongs/android/view/ev;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v3, 0x7f0803aa

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/fk;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/eu;->J:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/fk;-><init>(Lcom/estrongs/android/view/eu;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v3, Lcom/estrongs/android/view/fl;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/fl;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "smb://"

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ap:Lcom/estrongs/android/view/co;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/co;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/view/fj;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/fj;-><init>(Lcom/estrongs/android/view/ev;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v3, 0x7f0803a4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/fk;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/eu;->J:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/fk;-><init>(Lcom/estrongs/android/view/eu;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v3, Lcom/estrongs/android/view/fl;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/fl;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "ftp://"

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ap:Lcom/estrongs/android/view/co;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/co;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/estrongs/android/view/fj;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/fj;-><init>(Lcom/estrongs/android/view/ev;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v3, 0x7f08039e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/fk;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/eu;->J:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/fk;-><init>(Lcom/estrongs/android/view/eu;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v3, Lcom/estrongs/android/view/fl;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/fl;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "adb://"

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ap:Lcom/estrongs/android/view/co;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/co;)V

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/estrongs/android/view/fj;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/fj;-><init>(Lcom/estrongs/android/view/ev;)V

    iput-object v1, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    iget-object v2, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v3, 0x7f080751

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    new-instance v2, Lcom/estrongs/android/view/fk;

    iget-object v3, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/eu;->J:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/fk;-><init>(Lcom/estrongs/android/view/eu;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v2, v1, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v1, Lcom/estrongs/android/view/fl;

    invoke-direct {v1, v7}, Lcom/estrongs/android/view/fl;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/i;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v1, Lcom/estrongs/android/view/fa;

    invoke-direct {v1, p0, v7}, Lcom/estrongs/android/view/fa;-><init>(Lcom/estrongs/android/view/eu;Z)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/util/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    const-string v1, "scannedserver://"

    iput-object v1, v0, Lcom/estrongs/android/view/fj;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ap:Lcom/estrongs/android/view/co;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/co;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->am:Lcom/estrongs/android/view/fj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected F()Landroid/support/v7/widget/RecyclerView;
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->F()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    :cond_0
    return-object v0
.end method

.method public P()I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->P()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f030132

    return v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cr;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/cp;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cp;)V

    new-instance v2, Lcom/estrongs/android/view/fi;

    invoke-direct {v2, p0, v0, p1}, Lcom/estrongs/android/view/fi;-><init>(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cr;Lcom/estrongs/android/view/cp;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cp;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/android/view/cq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/cq",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    new-instance v2, Lcom/estrongs/android/view/ew;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/view/ew;-><init>(Lcom/estrongs/android/view/eu;Lcom/estrongs/android/view/cq;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/cr;->a(Lcom/estrongs/android/view/cq;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/eu;->D:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->C:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/estrongs/android/view/eu;->q:Z

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/view/cr;->a(Z)V

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/estrongs/fs/util/a/a;)V
    .locals 4

    iput-object p1, p0, Lcom/estrongs/android/view/eu;->J:Lcom/estrongs/fs/util/a/a;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    const-string v2, "scannedserver://"

    iget-object v3, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v3}, Lcom/estrongs/android/view/cr;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cr;->b(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/cr;->c(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v3, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->d()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public d(I)Lcom/estrongs/fs/h;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->b:Lcom/estrongs/android/view/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->b:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic e(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/eu;->d(I)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ac:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    return-void
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->i_()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->e:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ar:Lcom/estrongs/android/pop/af;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->b(Lcom/estrongs/android/pop/af;)V

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/feedback/c;->a(Landroid/content/Context;)V

    return-void
.end method

.method public j(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v2, 0x7f08038c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->an:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    const v2, 0x7f0800a5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->an:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public o()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v3, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->o()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected s()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->e:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->e:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ar:Lcom/estrongs/android/pop/af;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->a(Lcom/estrongs/android/pop/af;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/estrongs/android/view/eu;->t()V

    const v0, 0x7f0e0507

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eu;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->aq:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/view/fd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/fd;-><init>(Lcom/estrongs/android/view/eu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/view/fe;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/fe;-><init>(Lcom/estrongs/android/view/eu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/view/ff;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/ff;-><init>(Lcom/estrongs/android/view/eu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/fj;

    iget-object v2, v0, Lcom/estrongs/android/view/fj;->e:Lcom/estrongs/android/view/cr;

    iget-object v0, v0, Lcom/estrongs/android/view/fj;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/cr;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/eu;->W:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/fg;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/fg;-><init>(Lcom/estrongs/android/view/eu;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cr;->O:Lcom/estrongs/android/view/dw;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/dw;->a(Lcom/estrongs/android/view/cr;Z)V

    :cond_1
    const v0, 0x7f0e0346

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eu;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    iget-object v1, p0, Lcom/estrongs/android/view/eu;->ag:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    const v2, 0x7f0d0159

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/eu;->ao:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/fh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/fh;-><init>(Lcom/estrongs/android/view/eu;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0347

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eu;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/view/eu;->an:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/eu;->j(Z)V

    return-void
.end method
