.class public Lcom/estrongs/android/pop/app/ImageCommentActivity;
.super Lcom/estrongs/android/ui/base/HomeAsBackActivity;


# instance fields
.field a:Lcom/estrongs/android/pop/spfs/SPFileInfo;

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/lang/Object;

.field private e:Lcom/estrongs/android/util/m;

.field private f:Lcom/estrongs/android/util/m;

.field private g:Lcom/estrongs/android/util/m;

.field private h:Ljava/lang/String;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/ListView;

.field private k:Landroid/widget/BaseAdapter;

.field private l:Lcom/estrongs/android/util/TypedMap;

.field private m:Landroid/view/View;

.field private n:Lcom/estrongs/android/ui/theme/at;

.field private o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/gmail/yuyang226/flickr/a/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d:Ljava/lang/Object;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k:Landroid/widget/BaseAdapter;

    new-instance v0, Lcom/estrongs/android/util/TypedMap;

    invoke-direct {v0}, Lcom/estrongs/android/util/TypedMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l:Lcom/estrongs/android/util/TypedMap;

    new-instance v0, Lcom/estrongs/android/pop/app/da;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/da;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->o:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ImageCommentActivity;Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    .locals 6

    new-instance v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;

    invoke-direct {v0}, Lcom/estrongs/android/pop/spfs/SPFileInfo;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ownerId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerId:Ljava/lang/String;

    const-string v2, "ownerName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-string v4, "createdTime"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->ownerUsername:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    iget-wide v4, v0, Lcom/estrongs/android/pop/spfs/SPFileInfo;->lastModifiedTime:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoManager;->getPhotoInfo(Ljava/lang/String;)Lcom/estrongs/android/pop/spfs/SPFileInfo;
    :try_end_0
    .catch Lcom/estrongs/android/pop/spfs/PhotoInfoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/spfs/PhotoInfoException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ImageCommentActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    const v1, 0x7f0e01ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/dg;

    const-string v1, "Comment Loader"

    invoke-direct {v0, p0, v1, p1}, Lcom/estrongs/android/pop/app/dg;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->start()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    return-object p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l:Lcom/estrongs/android/util/TypedMap;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    return-object p1
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030128

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/db;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/db;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e0594

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0801a2

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0e059a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    const v0, 0x7f0e0599

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/dc;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/dc;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/dd;

    const-string v1, "Comment Refresher"

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/dd;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->start()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private f()Z
    .locals 2

    const-string v0, "Facebook"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method private h()[Ljava/lang/String;
    .locals 5

    const v0, 0x7f0806b0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b7

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b3

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b2

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b1

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b8

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0806b4

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private i()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/dj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dj;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/ImageCommentActivity;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->finish()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->a()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e:Lcom/estrongs/android/util/m;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->a()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    invoke-virtual {v0}, Lcom/estrongs/android/util/m;->a()V

    iput-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->g:Lcom/estrongs/android/util/m;

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->J()Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n:Lcom/estrongs/android/ui/theme/at;

    const v0, 0x7f030151

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pic_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i()Landroid/widget/BaseAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k:Landroid/widget/BaseAdapter;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->j:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "limit"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l:Lcom/estrongs/android/util/TypedMap;

    const-string v1, "offset"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/TypedMap;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/estrongs/android/util/TypedMap;

    invoke-direct {p0, v3}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0e06bf

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0800a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0e06bf

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/estrongs/android/ui/base/HomeAsBackActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
