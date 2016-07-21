.class public Lcom/estrongs/fs/b/ao;
.super Lcom/estrongs/a/a;


# static fields
.field public static e:I

.field public static f:I


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/estrongs/fs/d;

.field private d:Z

.field volatile g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/ap;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/estrongs/fs/b/ap;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/estrongs/fs/b/ap;

.field j:Z

.field k:Z

.field private l:J

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/estrongs/fs/b/ao;->e:I

    const/4 v0, 0x2

    sput v0, Lcom/estrongs/fs/b/ao;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/u;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    sget v0, Lcom/estrongs/fs/b/ao;->e:I

    iput v0, p0, Lcom/estrongs/fs/b/ao;->a:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/estrongs/fs/b/ao;->l:J

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->m:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->k:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->setPriority(I)V

    iput-object p1, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/a/a/m;->l:Z

    :cond_0
    const/16 v0, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    new-instance v4, Lcom/estrongs/fs/b/ap;

    invoke-direct {v4}, Lcom/estrongs/fs/b/ap;-><init>()V

    :try_start_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/fs/b/ap;->a:Ljava/lang/String;

    iget-object v0, v4, Lcom/estrongs/fs/b/ap;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/fs/b/ap;->a:Ljava/lang/String;

    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    iput-object v0, v4, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/estrongs/fs/b/ao;->task_type:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->canRestart:Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->m:Z

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->l(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ao;->l:J

    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/d;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/estrongs/fs/b/ao;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/estrongs/fs/d;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/d;",
            "Z)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    sget v0, Lcom/estrongs/fs/b/ao;->e:I

    iput v0, p0, Lcom/estrongs/fs/b/ao;->a:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->b:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/estrongs/fs/b/ao;->l:J

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->m:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ao;->k:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->setPriority(I)V

    iput-boolean p3, p0, Lcom/estrongs/fs/b/ao;->d:Z

    iput-object p2, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    iget-object v3, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/estrongs/a/a/m;->l:Z

    :cond_0
    const/16 v0, 0xa

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/ao;->sendMessage(I[Ljava/lang/Object;)V

    move v3, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    new-instance v4, Lcom/estrongs/fs/b/ap;

    invoke-direct {v4}, Lcom/estrongs/fs/b/ap;-><init>()V

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/fs/b/ap;->a:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iput-object v0, v4, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->d:Z

    iput-boolean v0, v4, Lcom/estrongs/fs/b/ap;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_2
    iput v1, p0, Lcom/estrongs/fs/b/ao;->task_type:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->canRestart:Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ao;->m:Z

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/util/j;->l(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ao;->l:J

    :cond_3
    return-void
.end method

.method private a(Lcom/estrongs/fs/b/ap;IJ)V
    .locals 5

    const-wide/16 v2, 0x1

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->F(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->m:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->m:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->n:J

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/estrongs/android/util/bg;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->i:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->i:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->j:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->j:J

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/estrongs/android/util/bg;->g(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->k:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->k:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->l:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->l:J

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/estrongs/android/util/bg;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->g:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->g:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->h:J

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/estrongs/android/util/bg;->j(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->x(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->B(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->y(I)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/estrongs/android/util/bg;->m(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->o:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->o:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->p:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->p:J

    goto :goto_0

    :cond_5
    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->q:J

    add-long/2addr v0, p3

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->q:J

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->r:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->r:J

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/b/ap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/estrongs/fs/b/ao;->a:I

    return-void
.end method

.method a(Lcom/estrongs/fs/b/ap;Lcom/estrongs/fs/h;Z)V
    .locals 7

    const-wide/16 v4, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/fs/w;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/estrongs/fs/b/ap;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/estrongs/fs/b/ap;->f:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/fs/b/ap;

    invoke-direct {v0}, Lcom/estrongs/fs/b/ap;-><init>()V

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/estrongs/fs/b/ap;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/estrongs/fs/b/ap;->w:Lcom/estrongs/fs/b/ap;

    iput-object p2, v0, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    iput-boolean p3, v0, Lcom/estrongs/fs/b/ap;->s:Z

    iget-object v1, p1, Lcom/estrongs/fs/b/ap;->v:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;ZJI)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->requestStop(Ljava/lang/Object;)V

    :cond_2
    iget v0, p1, Lcom/estrongs/fs/b/ap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/estrongs/fs/b/ap;->e:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    invoke-interface {p2}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->c:J

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->c:J

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->m:Z

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/estrongs/fs/b/ap;->d:J

    iget-wide v2, p0, Lcom/estrongs/fs/b/ao;->l:J

    invoke-static {v4, v5, v2, v3}, Lcom/estrongs/fs/util/j;->b(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/estrongs/fs/b/ap;->d:J

    :cond_3
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v6

    iget v0, p0, Lcom/estrongs/fs/b/ao;->a:I

    sget v1, Lcom/estrongs/fs/b/ao;->f:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v6, v4, v5}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;IJ)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;ZJI)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method a(Lcom/estrongs/fs/b/ap;ZJI)V
    .locals 7

    iget-object v0, p1, Lcom/estrongs/fs/b/ap;->w:Lcom/estrongs/fs/b/ap;

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    iget v1, v0, Lcom/estrongs/fs/b/ap;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/fs/b/ap;->f:I

    :cond_0
    :goto_1
    iget-object v0, v0, Lcom/estrongs/fs/b/ap;->w:Lcom/estrongs/fs/b/ap;

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/estrongs/fs/b/ap;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/estrongs/fs/b/ap;->e:I

    iget-wide v2, v0, Lcom/estrongs/fs/b/ap;->c:J

    add-long/2addr v2, p3

    iput-wide v2, v0, Lcom/estrongs/fs/b/ap;->c:J

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ao;->m:Z

    if-eqz v1, :cond_2

    iget-wide v2, v0, Lcom/estrongs/fs/b/ap;->d:J

    iget-wide v4, p0, Lcom/estrongs/fs/b/ao;->l:J

    invoke-static {p3, p4, v4, v5}, Lcom/estrongs/fs/util/j;->b(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/estrongs/fs/b/ap;->d:J

    :cond_2
    iget v1, p0, Lcom/estrongs/fs/b/ao;->a:I

    sget v2, Lcom/estrongs/fs/b/ao;->f:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, p5, p3, p4}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;IJ)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/ao;->b:Z

    return-void
.end method

.method protected a(Lcom/estrongs/fs/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/estrongs/fs/b/ap;
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/ap;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/estrongs/fs/b/ap;

    invoke-direct {v2}, Lcom/estrongs/fs/b/ap;-><init>()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/ap;

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->n:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->n:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->n:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->c:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->c:J

    iget-boolean v3, p0, Lcom/estrongs/fs/b/ao;->m:Z

    if-eqz v3, :cond_2

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->d:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->d:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->d:J

    :cond_2
    iget v3, v2, Lcom/estrongs/fs/b/ap;->e:I

    iget v4, v0, Lcom/estrongs/fs/b/ap;->e:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/estrongs/fs/b/ap;->e:I

    iget v3, v2, Lcom/estrongs/fs/b/ap;->f:I

    iget v4, v0, Lcom/estrongs/fs/b/ap;->f:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/estrongs/fs/b/ap;->f:I

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->g:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->g:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->g:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->h:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->h:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->h:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->i:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->i:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->i:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->j:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->j:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->j:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->k:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->k:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->k:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->l:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->l:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->l:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->m:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->m:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->m:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->n:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->n:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->n:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->o:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->o:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->o:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->p:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->p:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->p:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->q:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->q:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->q:J

    iget-wide v4, v2, Lcom/estrongs/fs/b/ap;->r:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->r:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/fs/b/ap;->r:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/estrongs/a/a/m;->i:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->k:Z

    aget-object v0, p2, v2

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->i:Lcom/estrongs/fs/b/ap;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->i:Lcom/estrongs/fs/b/ap;

    iget-boolean v2, p0, Lcom/estrongs/fs/b/ao;->j:Z

    invoke-virtual {p0, v1, v0, v2}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;Lcom/estrongs/fs/h;Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public task()Z
    .locals 13

    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/estrongs/android/util/ap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_10

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return v3

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/b/ap;

    iget-boolean v0, v2, Lcom/estrongs/fs/b/ap;->t:Z

    if-eqz v0, :cond_2

    iput-boolean v7, v2, Lcom/estrongs/fs/b/ap;->u:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-boolean v0, v2, Lcom/estrongs/fs/b/ap;->s:Z

    iget-object v1, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v7, v2, Lcom/estrongs/fs/b/ap;->t:Z

    iget v0, v2, Lcom/estrongs/fs/b/ap;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/estrongs/fs/b/ap;->e:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->d:J

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v4

    iget-wide v0, v2, Lcom/estrongs/fs/b/ap;->c:J

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/fs/b/ap;->c:J

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->m:Z

    if-eqz v0, :cond_3

    iget-wide v0, v2, Lcom/estrongs/fs/b/ap;->d:J

    iget-wide v8, p0, Lcom/estrongs/fs/b/ao;->l:J

    invoke-static {v4, v5, v8, v9}, Lcom/estrongs/fs/util/j;->b(JJ)J

    move-result-wide v8

    add-long/2addr v0, v8

    iput-wide v0, v2, Lcom/estrongs/fs/b/ap;->d:J

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    iget-wide v8, v0, Lcom/estrongs/a/a/m;->f:J

    add-long/2addr v8, v4

    iput-wide v8, v0, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v6

    iget v0, p0, Lcom/estrongs/fs/b/ao;->a:I

    sget v1, Lcom/estrongs/fs/b/ao;->f:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    invoke-direct {p0, v2, v6, v4, v5}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;IJ)V

    :cond_4
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;ZJI)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_7

    iget-object v1, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    move v0, v3

    :goto_2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {v11, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v3

    :cond_7
    :goto_3
    iget v1, v2, Lcom/estrongs/fs/b/ap;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/estrongs/fs/b/ap;->f:I

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v6, v2

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;ZJI)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v1}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    :try_start_0
    iput-object v2, p0, Lcom/estrongs/fs/b/ao;->i:Lcom/estrongs/fs/b/ap;

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->j:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ao;->k:Z

    iget-object v0, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    instance-of v0, v0, Lcom/estrongs/android/pop/app/b/i;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/estrongs/fs/impl/local/f;

    new-instance v1, Ljava/io/File;

    iget-object v4, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    const/4 v4, 0x1

    sget-object v5, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    invoke-virtual {v1, v0, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_4
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ao;->k:Z

    if-nez v0, :cond_c

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    iget-object v5, p0, Lcom/estrongs/fs/b/ao;->i:Lcom/estrongs/fs/b/ap;

    iget-boolean v6, p0, Lcom/estrongs/fs/b/ao;->j:Z

    invoke-virtual {p0, v5, v0, v6}, Lcom/estrongs/fs/b/ao;->a(Lcom/estrongs/fs/b/ap;Lcom/estrongs/fs/h;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    iget-object v1, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->bU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    move v0, v3

    goto :goto_3

    :cond_b
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->c:Lcom/estrongs/fs/d;

    iget-object v1, v2, Lcom/estrongs/fs/b/ap;->b:Lcom/estrongs/fs/h;

    const/4 v4, 0x1

    sget-object v5, Lcom/estrongs/fs/i;->c:Lcom/estrongs/fs/i;

    invoke-virtual {v0, v1, v4, v5}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/h;ZLcom/estrongs/fs/i;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/ao;->i:Lcom/estrongs/fs/b/ap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_d

    iput-boolean v7, v2, Lcom/estrongs/fs/b/ap;->t:Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ao;->taskStopped()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ao;->onProgress(Lcom/estrongs/a/a/m;)V

    goto/16 :goto_1

    :cond_e
    move v0, v3

    :goto_6
    iget-object v1, v2, Lcom/estrongs/fs/b/ap;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/estrongs/fs/b/ao;->h:Ljava/util/Stack;

    iget-object v4, v2, Lcom/estrongs/fs/b/ap;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    iput-boolean v7, v2, Lcom/estrongs/fs/b/ap;->t:Z

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v3, v12}, Lcom/estrongs/fs/b/ao;->setTaskResult(ILjava/lang/Object;)V

    move v3, v7

    goto/16 :goto_1
.end method
