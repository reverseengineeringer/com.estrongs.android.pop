.class public Lcom/estrongs/android/view/g;
.super Lcom/estrongs/android/view/cr;


# instance fields
.field public a:Ljava/lang/String;

.field private al:Z

.field private am:I

.field private an:Ljava/lang/String;

.field private ao:Ljava/util/Map;
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

.field private ap:Ljava/lang/String;

.field private aq:Landroid/os/Handler;

.field private ar:Ljava/io/File;

.field private as:Lcom/estrongs/android/widget/bx;

.field private at:Lcom/estrongs/android/pop/app/compress/bs;

.field private au:Landroid/util/SparseBooleanArray;

.field private av:Lcom/estrongs/android/pop/app/compress/cb;

.field private aw:Lcom/estrongs/android/view/t;

.field private ax:Lcom/estrongs/android/view/v;

.field public b:Ljava/lang/String;

.field protected c:Z

.field protected d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/archive/i;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/estrongs/android/view/cr;-><init>(Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;Z)V

    iput-object v3, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    iput-object v3, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/estrongs/android/view/g;->al:Z

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/estrongs/android/view/g;->ao:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/view/g;->ap:Ljava/lang/String;

    sget-object v0, Lcom/estrongs/android/util/e;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/estrongs/android/view/g;->as:Lcom/estrongs/android/widget/bx;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/g;->au:Landroid/util/SparseBooleanArray;

    iput-boolean v2, p0, Lcom/estrongs/android/view/g;->c:Z

    iput-object v3, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    new-instance v0, Lcom/estrongs/android/view/h;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/h;-><init>(Lcom/estrongs/android/view/g;)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->a(Lcom/estrongs/android/view/co;)V

    new-instance v0, Lcom/estrongs/android/view/j;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/j;-><init>(Lcom/estrongs/android/view/g;)V

    iput-object v0, p0, Lcom/estrongs/android/view/g;->aq:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/view/k;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/view/k;-><init>(Lcom/estrongs/android/view/g;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/view/g;->as:Lcom/estrongs/android/widget/bx;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;I)I
    .locals 0

    iput p1, p0, Lcom/estrongs/android/view/g;->am:I

    return p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/bs;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Lcom/estrongs/android/view/t;)Lcom/estrongs/android/view/t;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Lcom/estrongs/io/archive/i;)Lcom/estrongs/io/archive/i;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/g;->b(Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/view/g;->al:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/view/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ap:Ljava/lang/String;

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

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/l;

    iget-object v2, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    iget-object v4, p0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/estrongs/android/view/g;->an:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/estrongs/android/view/g;->d:Ljava/lang/String;

    :goto_1
    const/4 v9, 0x1

    iget v10, p0, Lcom/estrongs/android/view/g;->am:I

    move-object v1, p0

    move v8, p2

    invoke-direct/range {v0 .. v11}, Lcom/estrongs/android/pop/app/compress/l;-><init>(Lcom/estrongs/android/view/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZZILandroid/content/DialogInterface$OnDismissListener;)V

    new-instance v1, Lcom/estrongs/android/view/i;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/i;-><init>(Lcom/estrongs/android/view/g;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/l;->a(Lcom/estrongs/android/pop/app/compress/az;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/l;->b()V

    return-void

    :cond_1
    move-object v6, v11

    goto :goto_1
.end method

.method static synthetic b(Lcom/estrongs/android/view/g;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/g;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
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
    iget-object v1, p0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/estrongs/io/archive/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/estrongs/io/archive/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/io/archive/i;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    new-instance v3, Lcom/estrongs/android/view/l;

    invoke-direct {v3, p0, v1}, Lcom/estrongs/android/view/l;-><init>(Lcom/estrongs/android/view/g;Lcom/estrongs/io/archive/i;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_1
    new-instance v1, Lcom/estrongs/android/view/t;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/t;-><init>(Lcom/estrongs/android/view/g;)V

    iput-object v1, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    invoke-virtual {v1}, Lcom/estrongs/android/view/t;->start()V
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

.method static synthetic c(Lcom/estrongs/android/view/g;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/g;->an:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/estrongs/android/view/g;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ao:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
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

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->t(Landroid/app/Activity;Ljava/lang/String;)Lcom/estrongs/android/ui/dialog/ci;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/estrongs/android/pop/app/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    const v1, 0x7f080136

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

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

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/estrongs/android/util/bg;->K(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-static {v1, v0, p1}, Lcom/estrongs/android/pop/view/utils/AppRunner;->a(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f08041f

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

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

.method static synthetic d(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/view/t;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/g;->t()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/view/g;)Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/view/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aq:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/view/v;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ax:Lcom/estrongs/android/view/v;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/view/g;)Lcom/estrongs/android/pop/app/compress/cb;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/view/g;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/view/g;->am:I

    return v0
.end method

.method private t()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/estrongs/android/pop/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

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

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ao:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/estrongs/android/view/g;->ao:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-direct {p0}, Lcom/estrongs/android/view/g;->t()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isTmpFile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

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
    iget-boolean v0, p0, Lcom/estrongs/android/view/g;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->q()V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/estrongs/android/view/v;)V
    .locals 3

    iput-object p1, p0, Lcom/estrongs/android/view/g;->ax:Lcom/estrongs/android/view/v;

    const v0, 0x7f080728

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    invoke-virtual {v0}, Lcom/estrongs/android/view/t;->a()V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/g;->u()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/view/p;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/p;-><init>(Lcom/estrongs/android/view/g;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    check-cast p1, Lcom/estrongs/fs/impl/g/a;

    invoke-virtual {p1}, Lcom/estrongs/fs/impl/g/a;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    const v1, 0x7f0803fe

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/estrongs/android/ui/view/ak;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/view/g;->ao:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-nez v0, :cond_8

    iput-object v2, p0, Lcom/estrongs/android/view/g;->ap:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    if-nez v0, :cond_3

    new-instance v0, Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v2, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    iget-object v3, p0, Lcom/estrongs/android/view/g;->aq:Landroid/os/Handler;

    iget-object v4, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/bs;-><init>(Lcom/estrongs/android/view/g;Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/i;)V

    iput-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    :cond_3
    move-object v0, v1

    check-cast v0, Lcom/estrongs/io/model/ArchiveEntryFile;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v2, p0, Lcom/estrongs/android/view/g;->ap:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/app/compress/bs;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/compress/bs;->a(Lcom/estrongs/io/model/ArchiveEntryFile;)V

    iget-object v1, p0, Lcom/estrongs/android/view/g;->d:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/compress/bs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->show()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    if-nez v1, :cond_5

    new-instance v1, Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v2, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    invoke-direct {v1, v2, v5, v6}, Lcom/estrongs/android/pop/app/compress/cb;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v2, -0x1

    const v3, 0x7f080226

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/g;->j(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/q;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/q;-><init>(Lcom/estrongs/android/view/g;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    const/4 v2, -0x2

    const v3, 0x7f080221

    invoke-virtual {p0, v3}, Lcom/estrongs/android/view/g;->j(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/view/r;

    invoke-direct {v4, p0}, Lcom/estrongs/android/view/r;-><init>(Lcom/estrongs/android/view/g;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/estrongs/android/pop/app/compress/cb;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    invoke-virtual {v0}, Lcom/estrongs/io/model/ArchiveEntryFile;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->a()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/view/g;->av:Lcom/estrongs/android/pop/app/compress/cb;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/cb;->show()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/bs;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/g;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/android/util/TypedMap;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    invoke-virtual {v1, v0}, Lcom/estrongs/io/archive/i;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/view/g;->at:Lcom/estrongs/android/pop/app/compress/bs;

    :cond_5
    iput-object p1, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_6
    const v0, 0x7f080728

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/view/g;->aw:Lcom/estrongs/android/view/t;

    invoke-virtual {v0}, Lcom/estrongs/android/view/t;->a()V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/estrongs/android/view/g;->u()V

    :cond_8
    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/view/o;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/o;-><init>(Lcom/estrongs/android/view/g;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1
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

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->o()Ljava/util/List;

    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/estrongs/android/view/g;->al:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/g;->b(Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/estrongs/android/pop/app/compress/a;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ag:Landroid/app/Activity;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/estrongs/android/view/g;->b:Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Lcom/estrongs/android/view/s;

    invoke-direct {v6, p0, v3, p1, p2}, Lcom/estrongs/android/view/s;-><init>(Lcom/estrongs/android/view/g;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/pop/app/compress/a;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/estrongs/android/pop/app/compress/j;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/a;->a()V

    goto :goto_0
.end method

.method public a_(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0, p1}, Lcom/estrongs/io/archive/i;->b(Ljava/lang/String;)Lcom/estrongs/io/model/ArchiveEntryFile;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;
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

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->J()V

    invoke-virtual {p0, p1}, Lcom/estrongs/android/view/g;->c(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->br(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08039b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f08039a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(I)V

    goto :goto_0

    :cond_1
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7f080629

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f080316

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->f(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/view/g;->H:Ljava/util/LinkedList;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->a_(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 6

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    if-eqz v0, :cond_1

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/view/g;->au:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->H:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    new-instance v5, Lcom/estrongs/fs/impl/g/a;

    invoke-direct {v5, v4}, Lcom/estrongs/fs/impl/g/a;-><init>(Ljava/io/File;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/g;->a:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/estrongs/android/view/g;->b(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->J()V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->C:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/estrongs/fs/h;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->j()Lcom/estrongs/fs/h;

    move-result-object v0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/g;->b(Z)V

    return-void
.end method

.method public i_()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/g;->u()V

    invoke-super {p0}, Lcom/estrongs/android/view/cr;->i_()V

    return-void
.end method

.method public j()Lcom/estrongs/fs/h;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    if-eqz v0, :cond_0

    const-string v0, "/"

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->g()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/view/g;->F:Lcom/estrongs/android/view/dv;

    invoke-virtual {p0}, Lcom/estrongs/android/view/g;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/estrongs/android/view/dv;->a(Ljava/lang/String;Z)V

    :cond_2
    new-instance v0, Lcom/estrongs/fs/impl/g/a;

    iget-object v1, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/g/a;-><init>(Ljava/io/File;)V

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected q()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->d()V

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    invoke-virtual {v0}, Lcom/estrongs/io/archive/i;->g()V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

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

    iget-object v0, p0, Lcom/estrongs/android/view/g;->ar:Ljava/io/File;

    return-object v0
.end method

.method public s()Lcom/estrongs/io/archive/i;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/g;->e:Lcom/estrongs/io/archive/i;

    return-object v0
.end method
