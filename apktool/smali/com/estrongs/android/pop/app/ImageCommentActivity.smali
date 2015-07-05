.class public Lcom/estrongs/android/pop/app/ImageCommentActivity;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;


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

.field private n:Landroid/view/View;

.field private o:Lcom/estrongs/android/ui/theme/al;

.field private p:Ljava/util/Comparator;
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

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

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

    new-instance v0, Lcom/estrongs/android/pop/app/cy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/cy;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->p:Ljava/util/Comparator;

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

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030097

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/cz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/cz;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a032c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->o:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a033a

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

    const v0, 0x7f0a00e5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b02f5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b005d

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/da;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/da;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/db;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/db;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0339

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n:Landroid/view/View;

    const v0, 0x7f0a033f

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

    const v1, 0x7f0a008f

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

.method private b()V
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

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n:Landroid/view/View;

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

.method static synthetic b(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ImageCommentActivity;Lcom/estrongs/android/util/m;)Lcom/estrongs/android/util/m;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 2

    const-string v0, "Facebook"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/estrongs/android/util/am;->ao(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/TypedMap;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->l:Lcom/estrongs/android/util/TypedMap;

    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .locals 5

    const v0, 0x7f0b019a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0194

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

    const v4, 0x7f0b0195

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

    const v4, 0x7f0b0196

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

    const v4, 0x7f0b0197

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

    const v4, 0x7f0b0198

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

    const v4, 0x7f0b0199

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

.method static synthetic e(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->m:Landroid/view/View;

    return-object v0
.end method

.method private e()Landroid/widget/BaseAdapter;
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/dj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/dj;-><init>(Lcom/estrongs/android/pop/app/ImageCommentActivity;)V

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->n:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->i:Landroid/view/View;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->k:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/pop/app/ImageCommentActivity;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/pop/app/ImageCommentActivity;)Lcom/estrongs/android/util/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->f:Lcom/estrongs/android/util/m;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->finish()V

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

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->requestWindowFeature(I)Z

    invoke-static {p0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->o:Lcom/estrongs/android/ui/theme/al;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->o:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "pic_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/g;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ImageCommentActivity;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/ImageCommentActivity;->e()Landroid/widget/BaseAdapter;

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
