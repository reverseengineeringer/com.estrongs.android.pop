.class public Lcom/estrongs/android/view/cq;
.super Lcom/estrongs/android/view/aw;


# instance fields
.field private a:Landroid/widget/ExpandableListView;

.field private ai:Lcom/estrongs/android/pop/ad;

.field private aj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/android/view/dd;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/estrongs/android/view/dd;

.field private al:Landroid/widget/AdapterView$OnItemClickListener;

.field private am:Landroid/widget/BaseExpandableListAdapter;

.field private an:Lcom/estrongs/android/pop/af;

.field private b:Lcom/estrongs/android/view/aw;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/view/aw;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->b:Lcom/estrongs/android/view/aw;

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->ai:Lcom/estrongs/android/pop/ad;

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    new-instance v0, Lcom/estrongs/android/view/cr;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cr;-><init>(Lcom/estrongs/android/view/cq;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/estrongs/android/view/cv;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cv;-><init>(Lcom/estrongs/android/view/cq;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->am:Landroid/widget/BaseExpandableListAdapter;

    new-instance v0, Lcom/estrongs/android/view/cw;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cw;-><init>(Lcom/estrongs/android/view/cq;)V

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->an:Lcom/estrongs/android/pop/af;

    invoke-virtual {p0}, Lcom/estrongs/android/view/cq;->p()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/aw;)Lcom/estrongs/android/view/aw;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cq;->b:Lcom/estrongs/android/view/aw;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/cq;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/cq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/cq;->d(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/cq;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/cq;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/view/cq;)Lcom/estrongs/android/view/dd;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    return-object v0
.end method

.method private d(I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/util/bd;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/dc;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/view/dc;-><init>(Lcom/estrongs/android/view/cq;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/view/cq;)Lcom/estrongs/android/pop/ad;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ai:Lcom/estrongs/android/pop/ad;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/view/cq;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method private q()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    new-instance v0, Lcom/estrongs/android/view/cs;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cs;-><init>(Lcom/estrongs/android/view/cq;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    new-instance v1, Lcom/estrongs/android/view/dd;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0052

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/de;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cq;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v3, Lcom/estrongs/android/view/df;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/df;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "smb://"

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/view/dd;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0054

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/de;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cq;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    const-string v2, "net://"

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/estrongs/android/view/dd;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0053

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/de;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cq;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v3, Lcom/estrongs/android/view/df;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/df;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "ftp://"

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/estrongs/android/view/dd;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0572

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/view/de;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cq;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v3, Lcom/estrongs/android/view/df;

    invoke-direct {v3, v6}, Lcom/estrongs/android/view/df;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/i;)V

    const-string v2, "adb://"

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    iget-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/estrongs/android/view/dd;

    invoke-direct {v1, v5}, Lcom/estrongs/android/view/dd;-><init>(Lcom/estrongs/android/view/cr;)V

    iput-object v1, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    iget-object v2, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    const v3, 0x7f0b0365

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    new-instance v2, Lcom/estrongs/android/view/de;

    iget-object v3, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/estrongs/android/view/de;-><init>(Lcom/estrongs/android/view/cq;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/cb;)V

    iput-object v2, v1, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v1, Lcom/estrongs/android/view/df;

    invoke-direct {v1, v7}, Lcom/estrongs/android/view/df;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/i;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v1, Lcom/estrongs/android/view/cu;

    invoke-direct {v1, p0, v7}, Lcom/estrongs/android/view/cu;-><init>(Lcom/estrongs/android/view/cq;Z)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/util/a/a;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    const-string v1, "scannedserver://"

    iput-object v1, v0, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->al:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->ak:Lcom/estrongs/android/view/dd;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public B()I
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->B()I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a()I
    .locals 1

    const v0, 0x7f03009b

    return v0
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->a(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    new-instance v2, Lcom/estrongs/android/view/da;

    invoke-direct {v2, p0, v0, p1}, Lcom/estrongs/android/view/da;-><init>(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/aw;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/aw;->a(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/android/view/av;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/android/view/av",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    new-instance v2, Lcom/estrongs/android/view/db;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/view/db;-><init>(Lcom/estrongs/android/view/cq;Lcom/estrongs/android/view/av;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/aw;->a(Lcom/estrongs/android/view/av;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Lcom/estrongs/android/util/TypedMap;)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/view/cq;->w:Lcom/estrongs/fs/h;

    invoke-interface {p1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->v:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/estrongs/android/view/cq;->l:Z

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v2, p1}, Lcom/estrongs/android/view/aw;->a(Z)V

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->e()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a_()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->a_()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ai:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->an:Lcom/estrongs/android/pop/af;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->b(Lcom/estrongs/android/pop/af;)V

    invoke-super {p0}, Lcom/estrongs/android/view/aw;->a_()V

    return-void
.end method

.method public b(I)Lcom/estrongs/fs/h;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->b:Lcom/estrongs/android/view/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->b:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->h()Ljava/util/List;

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

.method public b(Lcom/estrongs/fs/util/a/a;)V
    .locals 4

    iput-object p1, p0, Lcom/estrongs/android/view/cq;->C:Lcom/estrongs/fs/util/a/a;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    const-string v2, "scannedserver://"

    iget-object v3, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v3}, Lcom/estrongs/android/view/aw;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->b(Z)V

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
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/aw;->c(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v3, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->d()I

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

.method public synthetic e(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/cq;->b(I)Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->Y:Lcom/estrongs/fs/a/e;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/a/e;)V

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method protected p()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->ai:Lcom/estrongs/android/pop/ad;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ai:Lcom/estrongs/android/pop/ad;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->an:Lcom/estrongs/android/pop/af;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ad;->a(Lcom/estrongs/android/pop/af;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/estrongs/android/view/cq;->q()V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/cq;->k(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->ad:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/estrongs/android/view/cq;->am:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/view/cx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cx;-><init>(Lcom/estrongs/android/view/cq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->a:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/estrongs/android/view/cy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cy;-><init>(Lcom/estrongs/android/view/cq;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v2, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/view/aw;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/cq;->T:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/view/cz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cz;-><init>(Lcom/estrongs/android/view/cq;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/aw;->H:Lcom/estrongs/android/view/cb;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/estrongs/android/view/cb;->a(Lcom/estrongs/android/view/aw;Z)V

    :cond_1
    return-void
.end method

.method public w()Ljava/util/List;
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

    iget-object v0, p0, Lcom/estrongs/android/view/cq;->aj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/view/dd;

    iget-object v3, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/estrongs/android/view/dd;->d:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->w()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
