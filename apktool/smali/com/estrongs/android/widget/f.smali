.class public Lcom/estrongs/android/widget/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/ImageView;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field protected e:Lcom/estrongs/fs/v;

.field protected final f:Lcom/estrongs/fs/w;

.field protected final g:Lcom/estrongs/fs/w;

.field protected final h:Lcom/estrongs/fs/w;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/estrongs/android/view/fv;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Lcom/estrongs/fs/h;

.field private p:Lcom/estrongs/fs/util/a/a;

.field private q:I

.field private r:Landroid/app/Activity;

.field private s:Lcom/estrongs/android/ui/dialog/ci;

.field private t:Lcom/estrongs/android/ui/theme/at;

.field private u:Ljava/lang/String;

.field private v:Lcom/estrongs/android/widget/ab;

.field private w:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V
    .locals 6

    const v5, 0x7f020299

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    iput v4, p0, Lcom/estrongs/android/widget/f;->q:I

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->v:Lcom/estrongs/android/widget/ab;

    new-instance v1, Lcom/estrongs/android/widget/g;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/g;-><init>(Lcom/estrongs/android/widget/f;)V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->e:Lcom/estrongs/fs/v;

    new-instance v1, Lcom/estrongs/fs/w;

    const-string v2, "phone-mnt-folder"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->f:Lcom/estrongs/fs/w;

    new-instance v1, Lcom/estrongs/fs/w;

    const-string v2, "usb-mnt-folder"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->g:Lcom/estrongs/fs/w;

    new-instance v1, Lcom/estrongs/fs/w;

    const-string v2, "usb-Otg-folder"

    invoke-direct {v1, v2, v3}, Lcom/estrongs/fs/w;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->h:Lcom/estrongs/fs/w;

    iput-boolean v4, p0, Lcom/estrongs/android/widget/f;->w:Z

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    iget v1, p0, Lcom/estrongs/android/widget/f;->q:I

    or-int/2addr v1, p4

    iput v1, p0, Lcom/estrongs/android/widget/f;->q:I

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->t:Lcom/estrongs/android/ui/theme/at;

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-direct {v1, p1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/estrongs/android/widget/o;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/o;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->b()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-static {p1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/ad;->t()Z

    move-result v1

    invoke-static {v1}, Lcom/estrongs/android/h/f;->a(Z)V

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->f:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->g:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->h:Lcom/estrongs/fs/w;

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/estrongs/android/h/f;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    const-string v1, "storage"

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->e:Lcom/estrongs/fs/v;

    invoke-static {v1, v2}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Lcom/estrongs/fs/u;)V

    invoke-virtual {p0, p1, p3}, Lcom/estrongs/android/widget/f;->a(Landroid/content/Context;Lcom/estrongs/fs/i;)V

    invoke-direct {p0}, Lcom/estrongs/android/widget/f;->m()V

    sget-boolean v1, Lcom/estrongs/android/pop/z;->n:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p2, v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/estrongs/android/pop/ad;->z(Ljava/lang/String;)Lcom/estrongs/fs/util/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    :goto_1
    iput-object p2, p0, Lcom/estrongs/android/widget/f;->u:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;ZZ)V
    .locals 1

    invoke-static {p4, p5}, Lcom/estrongs/android/widget/f;->a(ZZ)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/widget/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/i;I)V

    return-void
.end method

.method private static a(ZZ)I
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    move v1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0xe

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/f;Lcom/estrongs/fs/h;)Lcom/estrongs/fs/h;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->o:Lcom/estrongs/fs/h;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/estrongs/android/widget/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/widget/f;->m()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/view/fv;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/widget/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/widget/f;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/widget/f;)Lcom/estrongs/android/widget/ab;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->v:Lcom/estrongs/android/widget/ab;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/widget/f;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/widget/k;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/widget/k;-><init>(Lcom/estrongs/android/widget/f;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/widget/k;->start()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/widget/f;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/widget/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/estrongs/android/widget/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->m:Landroid/view/View;

    return-object v0
.end method

.method static synthetic h(Lcom/estrongs/android/widget/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->o:Lcom/estrongs/fs/h;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/widget/f;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/widget/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/widget/f;)Lcom/estrongs/fs/util/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    return-object v0
.end method

.method private m()V
    .locals 5

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    new-instance v2, Lcom/estrongs/android/widget/ac;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/ac;-><init>(Lcom/estrongs/android/widget/f;)V

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/estrongs/android/widget/f;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget v3, p0, Lcom/estrongs/android/widget/f;->q:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/usb/e;->e()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->h:Lcom/estrongs/fs/w;

    invoke-static {v3}, Lcom/estrongs/fs/impl/usb/e;->a(Lcom/estrongs/fs/w;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v3, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    const-string v4, "smb"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/ac;->a(Lcom/estrongs/android/pop/ad;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    const-string v4, "ftp"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/ac;->a(Lcom/estrongs/android/pop/ad;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    const-string v4, "dropbox"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/ac;->a(Lcom/estrongs/android/pop/ad;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/estrongs/fs/impl/adb/c;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    const-string v4, "adb"

    invoke-virtual {v2, v0, v4}, Lcom/estrongs/android/widget/ac;->a(Lcom/estrongs/android/pop/ad;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget v2, p0, Lcom/estrongs/android/widget/f;->q:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->af()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-static {}, Lcom/estrongs/fs/impl/pcs/b;->a()Lcom/estrongs/fs/impl/pcs/b;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/widget/m;

    invoke-direct {v2, p0}, Lcom/estrongs/android/widget/m;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/dialog/ci;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/estrongs/fs/h;
    .locals 4

    invoke-static {p1}, Lcom/estrongs/android/util/ap;->bV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/estrongs/android/widget/f;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/estrongs/android/widget/f;->q:I

    invoke-direct {p0}, Lcom/estrongs/android/widget/f;->m()V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/estrongs/fs/i;)V
    .locals 8

    const v7, 0x7f0e0076

    const v6, 0x7f0d013c

    const v5, 0x7f0202fb

    const v4, 0x7f0200bc

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    const-string v1, "File Browser"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/fs/i;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->aE()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const v1, 0x7f0e0385

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const v1, 0x7f0e0386

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const v1, 0x7f0e0384

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->k:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/v;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/v;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const v1, 0x7f0e0387

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v1}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->l:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/widget/w;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/w;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->n:Landroid/view/View;

    const v1, 0x7f0e0388

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/g;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/at;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/at;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/android/ui/theme/at;->a(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/estrongs/android/widget/y;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/y;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    new-instance v1, Lcom/estrongs/android/widget/j;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/widget/j;-><init>(Lcom/estrongs/android/widget/f;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ci;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/view/dx;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/fv;->a(Lcom/estrongs/android/view/dx;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/estrongs/android/widget/ab;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->v:Lcom/estrongs/android/widget/ab;

    return-void
.end method

.method protected a(Lcom/estrongs/fs/i;)V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    if-nez v0, :cond_1

    new-instance v0, Lcom/estrongs/android/widget/p;

    invoke-direct {v0, p0}, Lcom/estrongs/android/widget/p;-><init>(Lcom/estrongs/android/widget/f;)V

    new-instance v1, Lcom/estrongs/android/widget/q;

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/estrongs/android/widget/q;-><init>(Lcom/estrongs/android/widget/f;Landroid/app/Activity;Lcom/estrongs/fs/util/a/a;Lcom/estrongs/android/view/dw;)V

    iput-object v1, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->h(Z)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    new-instance v1, Lcom/estrongs/android/widget/u;

    invoke-direct {v1, p0}, Lcom/estrongs/android/widget/u;-><init>(Lcom/estrongs/android/widget/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->a(Lcom/estrongs/android/view/dv;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->t:Lcom/estrongs/android/ui/theme/at;

    const v2, 0x7f0d0105

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/at;->c(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->i(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/i;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->M()I

    move-result v0

    rem-int/lit8 v1, v0, 0x4

    div-int/lit8 v0, v0, 0x4

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/utils/ac;->a(II)Lcom/estrongs/fs/util/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/f;->a(Lcom/estrongs/fs/util/a/a;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/estrongs/fs/util/a/a;)V
    .locals 2

    iput-object p1, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->p:Lcom/estrongs/fs/util/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/dialog/ci;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/aa;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/aa;-><init>(Lcom/estrongs/android/widget/f;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/widget/f;->w:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/fv;->h(Z)V

    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->g()V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/h;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/h;-><init>(Lcom/estrongs/android/widget/f;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->m:Landroid/view/View;

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "storage://"

    :cond_0
    invoke-virtual {p0, p1}, Lcom/estrongs/android/widget/f;->a(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/widget/f;->o:Lcom/estrongs/fs/h;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/f;->b(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/widget/f;->d:Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->i:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "storage:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/widget/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const-string v1, "storage://"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Lcom/estrongs/fs/util/a/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->j()Lcom/estrongs/fs/h;

    goto :goto_0
.end method

.method public c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcom/estrongs/android/widget/i;

    invoke-direct {p2, p0}, Lcom/estrongs/android/widget/i;-><init>(Lcom/estrongs/android/widget/f;)V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/widget/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/ui/dialog/ci;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0
.end method

.method public c(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->c(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/widget/f;->w:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/widget/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/widget/f;->n()V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->show()V

    iget-boolean v0, p0, Lcom/estrongs/android/widget/f;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    const-string v1, "storage://"

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v2}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/fv;->b(Z)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/widget/f;->d:Z

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->Z()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/estrongs/fs/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->b()Lcom/estrongs/fs/h;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iget v0, p0, Lcom/estrongs/android/widget/f;->q:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/estrongs/android/pop/z;->n:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/widget/aw;

    iget-object v1, p0, Lcom/estrongs/android/widget/f;->f:Lcom/estrongs/fs/w;

    const-string v2, "/"

    iget-object v6, p0, Lcom/estrongs/android/widget/f;->r:Landroid/app/Activity;

    const v7, 0x7f0803ad

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v2, v6}, Lcom/estrongs/android/widget/aw;-><init>(Lcom/estrongs/fs/w;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/estrongs/android/widget/f;->q:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v4}, Lcom/estrongs/android/pop/z;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/widget/aw;

    iget-object v2, p0, Lcom/estrongs/android/widget/f;->g:Lcom/estrongs/fs/w;

    invoke-direct {v1, v2, v4, v0}, Lcom/estrongs/android/widget/aw;-><init>(Lcom/estrongs/fs/w;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v0, p0, Lcom/estrongs/android/widget/f;->q:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/pop/z;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    :goto_2
    new-instance v6, Lcom/estrongs/android/widget/aw;

    iget-object v7, p0, Lcom/estrongs/android/widget/f;->g:Lcom/estrongs/fs/w;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v7, v0, v2}, Lcom/estrongs/android/widget/aw;-><init>(Lcom/estrongs/fs/w;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v5

    :cond_4
    move-object v2, v0

    goto :goto_2
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->j:Lcom/estrongs/android/view/fv;

    invoke-virtual {v0}, Lcom/estrongs/android/view/fv;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/widget/f;->c(Z)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    return-void
.end method

.method public l()Lcom/estrongs/android/ui/dialog/ci;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/widget/f;->s:Lcom/estrongs/android/ui/dialog/ci;

    return-object v0
.end method
