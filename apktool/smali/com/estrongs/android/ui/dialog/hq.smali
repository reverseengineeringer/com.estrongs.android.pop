.class Lcom/estrongs/android/ui/dialog/hq;
.super Lcom/estrongs/android/view/gf;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field protected c:Lcom/estrongs/fs/h;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Lcom/estrongs/fs/impl/local/r;

.field i:Z

.field public j:Landroid/app/Dialog;

.field k:Landroid/widget/ProgressBar;

.field l:Lcom/estrongs/android/pop/app/diskusage/a;

.field m:Z

.field private n:Landroid/widget/TextView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;

.field private t:Lcom/estrongs/fs/b/ao;

.field private u:Landroid/widget/TextView;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/android/ui/dialog/hq;-><init>(Landroid/content/Context;Lcom/estrongs/fs/h;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/h;Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/gf;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->u:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hq;->v:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hq;->i:Z

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->j:Landroid/app/Dialog;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->l:Lcom/estrongs/android/pop/app/diskusage/a;

    iput-boolean p3, p0, Lcom/estrongs/android/ui/dialog/hq;->m:Z

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    const v0, 0x7f08019c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->d:Ljava/lang/String;

    const v0, 0x7f08019e

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->e:Ljava/lang/String;

    const v0, 0x7f0805cc

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->k(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/estrongs/android/ui/dialog/hq;->i:Z

    :goto_1
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "server"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/dialog/hq;->a(Z)V

    :goto_3
    const v0, 0x7f0e038a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/hr;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/dialog/hr;-><init>(Lcom/estrongs/android/ui/dialog/hq;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e038b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v2, Lcom/estrongs/android/ui/dialog/ic;

    invoke-direct {v2, p0, p1}, Lcom/estrongs/android/ui/dialog/ic;-><init>(Lcom/estrongs/android/ui/dialog/hq;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v1, :cond_0

    const v0, 0x7f0e0389

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/android/ui/dialog/hq;->i:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/i;->d(Ljava/lang/String;)Lcom/estrongs/fs/c;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/fs/c;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v0

    :goto_5
    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/dialog/hq;->a(Z)V

    move v1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/hq;->a([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_8

    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_d

    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_8
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_d
    iget v1, p1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2, p3}, Lcom/estrongs/fs/util/j;->c(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/estrongs/fs/util/j;->d(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;Landroid/widget/TextView;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/dialog/hq;->a(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/hq;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a(Z)V
    .locals 20

    const v2, 0x7f0e0189

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0188

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0e0320

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0e0322

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0e0193

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0e0396

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0e0325

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0e0399

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0e039d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0e03a0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0e03a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0e038d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->q:Landroid/widget/TextView;

    const v13, 0x7f0e038c

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v17

    const v13, 0x7f0e0192

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    const v13, 0x7f0e038f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->o:Landroid/view/View;

    const v13, 0x7f0e0391

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->p:Landroid/widget/TextView;

    const v13, 0x7f0e038e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->r:Landroid/widget/TextView;

    const v13, 0x7f0e03ab

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->a:Landroid/widget/TextView;

    const v13, 0x7f0e03af

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-static {v13, v3, v14}, Lcom/estrongs/android/h/a/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/estrongs/fs/h;)V

    const v3, 0x7f0e02f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/ProgressBar;

    const v3, 0x7f0e0392

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v13

    invoke-virtual {v13}, Lcom/estrongs/fs/w;->a()Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_1
    const v3, 0x7f0e03b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(Z)V

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v3, 0x7f0e03b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v3

    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v3}, Lcom/estrongs/android/util/ap;->bg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/estrongs/android/util/ap;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/estrongs/fs/impl/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aG(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f080397

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->o:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0805d4

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->q:Landroid/widget/TextView;

    const v3, 0x7f0805ce

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_2
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/estrongs/fs/FileSystemException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-virtual {v3, v13}, Lcom/estrongs/android/pop/ad;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0803af

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x8

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const v13, 0x7f0e0393

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    new-instance v14, Lcom/estrongs/android/ui/dialog/ih;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/estrongs/android/ui/dialog/ih;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f0e039b

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TableRow;

    const v14, 0x7f0e039e

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TableRow;

    const v15, 0x7f0e03a1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableRow;

    const v16, 0x7f0e03a7

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/hq;->u:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/local/m;->a(Landroid/content/Context;Z)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/util/ap;->K(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    const-string v16, "asdfghjklmnop"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Landroid/widget/TableRow;->setVisibility(I)V

    const v13, 0x7f0e039a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    invoke-direct/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->f()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/estrongs/fs/impl/local/m;->f(Ljava/lang/String;)Lcom/estrongs/fs/impl/local/r;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->a(Lcom/estrongs/fs/impl/local/r;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->u:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v18, 0x3

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/16 v16, 0x3

    const/16 v18, 0x6

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/estrongs/android/ui/dialog/hq;->g:Ljava/lang/String;

    const/16 v16, 0x6

    const/16 v18, 0x9

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f08019d

    :goto_4
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->v(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/util/ap;->cp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/estrongs/android/ui/dialog/hq;->m:Z

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "<a href=\"ss\">"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "</a>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v2, Lcom/estrongs/android/ui/dialog/ii;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/estrongs/android/ui/dialog/ii;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0805da

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->k(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->o:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->G()Ljava/text/DateFormat;

    move-result-object v4

    sget-boolean v2, Lcom/estrongs/android/pop/view/FileExplorerActivity;->C:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, " HH:mm:ss"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v14

    const-wide/16 v18, 0x0

    cmp-long v5, v14, v18

    if-lez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->createdTime()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v13}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-lez v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-lez v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v7}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v6}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/estrongs/fs/h;->hasPermission(I)Z

    move-result v2

    if-eqz v2, :cond_14

    const v2, 0x7f080229

    :goto_c
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/estrongs/fs/h;->hasPermission(I)Z

    move-result v2

    if-eqz v2, :cond_15

    const v2, 0x7f080229

    :goto_d
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f080225

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->a()Z

    move-result v2

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->q:Landroid/widget/TextView;

    const v4, 0x7f0805ce

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_9
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->b(Lcom/estrongs/fs/h;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0e0397

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e0398

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->l(I)Landroid/widget/TextView;

    move-result-object v2

    const v4, 0x7f080265

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0e0399

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->l(I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-static {v4, v5}, Lcom/estrongs/android/ui/d/g;->a(Landroid/content/Context;Lcom/estrongs/fs/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->d()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0e03b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0e03b4

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v3, Lcom/estrongs/android/ui/dialog/ij;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/estrongs/android/ui/dialog/ij;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :cond_b
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TableRow;->setVisibility(I)V

    const v16, 0x7f0e039a

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v16

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/hq;->b(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_8

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v13, 0x8

    invoke-virtual {v14, v13}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v13, 0x8

    invoke-virtual {v15, v13}, Landroid/widget/TableRow;->setVisibility(I)V

    const v13, 0x7f0e039a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    const v2, 0x7f08019b

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->cc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_e
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->o:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    :cond_10
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, " hh:mm:ss a"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    const v5, 0x7f0805d4

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    :cond_12
    const v5, 0x7f0805d4

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_a

    :cond_13
    const v2, 0x7f0805d4

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    :cond_14
    const v2, 0x7f080225

    goto/16 :goto_c

    :cond_15
    const v2, 0x7f080225

    goto/16 :goto_d

    :cond_16
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    const v4, 0x7f0805d4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->p:Landroid/widget/TextView;

    const v4, 0x7f0805d4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hq;->a(Landroid/widget/TextView;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/ui/dialog/hq;->p:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v6}, Lcom/estrongs/fs/util/j;->l(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/estrongs/fs/util/j;->b(JJ)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/estrongs/android/ui/dialog/hq;->a(Landroid/widget/TextView;J)V

    goto/16 :goto_e

    :cond_18
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v2, 0x7f0e03b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private a([Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804a6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/hv;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/hv;-><init>(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->d(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/dialog/hq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/dialog/hq;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->ah:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/dialog/hq;->b([Ljava/lang/String;I)V

    return-void
.end method

.method private b(Z)V
    .locals 7

    const v6, 0x7f0e03a4

    const/16 v3, 0x8

    const/4 v5, 0x0

    const v0, 0x7f0e03a5

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0e03a9

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0e03ad

    invoke-virtual {p0, v2}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/hq;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v4, v4, Lcom/estrongs/fs/impl/local/r;->c:I

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/m;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/hq;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v4, v4, Lcom/estrongs/fs/impl/local/r;->b:I

    invoke-static {v4}, Lcom/estrongs/fs/impl/local/m;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0e03a8

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/ik;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/ik;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e03ac

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/il;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/il;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0e03b0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/dialog/hs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/dialog/hs;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/estrongs/android/ui/dialog/hq;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private b([Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0804f8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/dialog/hw;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/dialog/hw;-><init>(Lcom/estrongs/android/ui/dialog/hq;[Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/estrongs/android/ui/dialog/cv;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->d(Z)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->ah:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/dialog/hq;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->ah:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/ui/dialog/hq;)Lcom/estrongs/fs/b/ao;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic f(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->i()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/dialog/hq;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/if;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/if;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->u:Landroid/widget/TextView;

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/ig;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/ig;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/esclasses/k;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030098

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v1, 0x7f0e02d7

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f0e02d9

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    const v3, 0x7f0e02da

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    const v3, 0x7f0e02db

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_2
    const v1, 0x7f0e02dc

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f0e02d9

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const v3, 0x7f0e02da

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    const v3, 0x7f0e02db

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_5
    const v1, 0x7f0e02dd

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    const v3, 0x7f0e02d9

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    const v3, 0x7f0e02da

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v3, 0x7f0e02db

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_8
    const v1, 0x7f0e02e0

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/CheckBox;

    const v1, 0x7f0e02e2

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    const v1, 0x7f0e02e4

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/estrongs/android/ui/dialog/hq;->h:Lcom/estrongs/fs/impl/local/r;

    iget v1, v1, Lcom/estrongs/fs/impl/local/r;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_b
    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual/range {p0 .. p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v15, 0x7f08059d

    invoke-virtual {v1, v15}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080221

    new-instance v15, Lcom/estrongs/android/ui/dialog/hu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/estrongs/android/ui/dialog/hu;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v1, v2, v15}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v15

    const v16, 0x7f080226

    new-instance v1, Lcom/estrongs/android/ui/dialog/ht;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/estrongs/android/ui/dialog/ht;-><init>(Lcom/estrongs/android/ui/dialog/hq;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->j()V

    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/dialog/hz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/dialog/hz;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-static {v0}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/estrongs/android/ui/dialog/hq;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->h()V

    return-void
.end method

.method static synthetic k(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/dialog/hq;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->p:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300b9

    return v0
.end method

.method public a(Lcom/estrongs/fs/b/ao;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->c:Lcom/estrongs/fs/h;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    if-nez v2, :cond_4

    new-instance v2, Lcom/estrongs/fs/b/ao;

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/b/ao;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->g()V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    new-instance v3, Lcom/estrongs/android/ui/dialog/hx;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/hx;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/ao;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    new-instance v3, Lcom/estrongs/android/ui/dialog/hy;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/dialog/hy;-><init>(Lcom/estrongs/android/ui/dialog/hq;)V

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/ao;->addProgressListener(Lcom/estrongs/a/a/l;)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->a(Z)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    sget v1, Lcom/estrongs/fs/b/ao;->f:I

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/ao;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->execute()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_3
    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->j()V

    invoke-direct {p0}, Lcom/estrongs/android/ui/dialog/hq;->h()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->t:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->requestStop()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 4

    new-instance v0, Lcom/estrongs/android/ui/view/bd;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/ui/view/bd;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/dialog/cv;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/dialog/hq;->aF()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080392

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(I)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bd;->aE()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/view/View;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f0800a3

    new-instance v3, Lcom/estrongs/android/ui/dialog/id;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/dialog/id;-><init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    const v2, 0x7f080221

    new-instance v3, Lcom/estrongs/android/ui/dialog/ib;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/dialog/ib;-><init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/ui/dialog/cv;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/ui/dialog/ia;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/dialog/ia;-><init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/view/bd;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/dialog/cv;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/estrongs/android/ui/dialog/cv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/ui/dialog/cv;->c()Lcom/estrongs/android/ui/dialog/ci;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/bd;->b()V

    new-instance v2, Lcom/estrongs/android/ui/dialog/ie;

    invoke-direct {v2, p0, v1}, Lcom/estrongs/android/ui/dialog/ie;-><init>(Lcom/estrongs/android/ui/dialog/hq;Lcom/estrongs/android/ui/dialog/ci;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/view/bd;->a(Lcom/estrongs/android/view/gg;)V

    return-void
.end method

.method protected d()Z
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/hq;->s:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/dialog/hq;->v:Z

    return v0
.end method
