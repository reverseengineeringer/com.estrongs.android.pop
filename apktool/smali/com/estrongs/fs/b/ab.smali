.class public Lcom/estrongs/fs/b/ab;
.super Lcom/estrongs/a/a;


# instance fields
.field protected a:Lcom/estrongs/fs/d;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:I

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:J

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;ZZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    iput v1, p0, Lcom/estrongs/fs/b/ab;->i:I

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->m:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/estrongs/fs/b/ab;->o:J

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->p:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->q:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/estrongs/fs/b/ab;->d:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    iput v0, p0, Lcom/estrongs/fs/b/ab;->task_type:I

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->m:Z

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v4, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->k:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->n:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->o:Z

    const-string v0, "source"

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/ab;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/estrongs/fs/b/ab;->canPause:Z

    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/estrongs/fs/b/ab;->d()V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/ab;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;ZZ)V"
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    iput v3, p0, Lcom/estrongs/fs/b/ab;->i:I

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->m:Z

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->n:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/estrongs/fs/b/ab;->o:J

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->p:Z

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->q:Z

    iput-object p1, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/d;

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean p3, p0, Lcom/estrongs/fs/b/ab;->d:Z

    iput v6, p0, Lcom/estrongs/fs/b/ab;->task_type:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v2, 0x1

    if-eq v0, v5, :cond_3

    const-string v0, " , "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lt v2, v6, :cond_3

    const-string v0, "..."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-lez v5, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bb(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v2, Lcom/estrongs/a/a/m;->m:Z

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    if-nez v0, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v4, Lcom/estrongs/a/a/m;->l:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v2, Lcom/estrongs/a/a/m;->k:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v2, Lcom/estrongs/a/a/m;->n:Z

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    if-nez v0, :cond_6

    :goto_3
    iput-boolean v3, v2, Lcom/estrongs/a/a/m;->o:Z

    if-lez v5, :cond_1

    const-string v2, "source"

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/fs/b/ab;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/estrongs/fs/b/ab;->d()V

    :cond_2
    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->canPause:Z

    return-void

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    move v3, v1

    goto :goto_3
.end method

.method static synthetic a(Lcom/estrongs/fs/b/ab;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->m:Z

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/estrongs/fs/b/ab;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/b/ab;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/fs/b/ab;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/am;->bD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/.estrongs/recycle/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/estrongs/fs/b/ab;->o:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/es_recycle_content"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    iget-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/l/a;->a(J)V

    return-void
.end method

.method private e()Z
    .locals 10

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v1, Lcom/estrongs/fs/b/am;

    iget-object v3, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/d;

    invoke-direct {v1, v3, v4}, Lcom/estrongs/fs/b/am;-><init>(Ljava/util/List;Lcom/estrongs/fs/d;)V

    iget-object v3, v1, Lcom/estrongs/fs/b/am;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v0, v3, Lcom/estrongs/a/a/m;->k:Z

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->getProgressListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/estrongs/fs/b/am;->addProgressListeners(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/am;->execute(Z)V

    invoke-virtual {v1}, Lcom/estrongs/fs/b/am;->getTaskStatus()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/estrongs/fs/b/am;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v2, v1, Lcom/estrongs/a/p;->a:I

    iget-object v1, v1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1}, Lcom/estrongs/fs/b/ab;->setTaskResult(ILjava/lang/Object;)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/estrongs/fs/b/am;->a()Ljava/util/List;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/an;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v4, Lcom/estrongs/a/a/m;->c:J

    iget v5, v0, Lcom/estrongs/fs/b/an;->e:I

    iget v8, v0, Lcom/estrongs/fs/b/an;->f:I

    add-int/2addr v5, v8

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/estrongs/a/a/m;->c:J

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v4, Lcom/estrongs/a/a/m;->e:J

    iget-wide v8, v0, Lcom/estrongs/fs/b/an;->c:J

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/estrongs/a/a/m;->e:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v2, v0, Lcom/estrongs/a/a/m;->l:Z

    :cond_2
    move v0, v2

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
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/ab;->n:Z

    return-void
.end method

.method public a(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ab;->n:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/bc;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/estrongs/fs/b/ab;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/util/bd;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->h:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->b(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/impl/media/d;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->c(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/k/b;->c()Lcom/estrongs/fs/impl/k/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/k/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/i/b;->c()Lcom/estrongs/fs/impl/i/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/i/b;->c(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/fs/impl/q/b;->c()Lcom/estrongs/fs/impl/q/b;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/q/b;->c(Ljava/util/List;)V

    goto :goto_0
.end method

.method public b(Ljava/io/File;)Z
    .locals 12

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/ab;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v6}, Lcom/estrongs/android/util/am;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/estrongs/android/util/am;->bE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/estrongs/android/util/am;->bT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    :goto_1
    iget-wide v8, p0, Lcom/estrongs/fs/b/ab;->o:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.nomedia"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    :cond_3
    invoke-direct {p0, v6}, Lcom/estrongs/fs/b/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/local/h;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    :goto_4
    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_5

    :cond_6
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    goto :goto_4

    :cond_8
    invoke-static {v6}, Lcom/estrongs/android/util/am;->bW(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v5, p0, Lcom/estrongs/fs/b/ab;->p:Z

    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    goto/16 :goto_0

    :cond_a
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_1
.end method

.method public c()Z
    .locals 4

    iget-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->f:J

    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v6

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected postTask()V
    .locals 4

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_0
    iget-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->p:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    const-string v1, "recycle://"

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/a/b;->d(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    iget-wide v0, p0, Lcom/estrongs/fs/b/ab;->o:J

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/l/a;->b(J)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    if-ne v1, v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->h(Z)V

    :cond_4
    return-void

    :cond_5
    invoke-static {}, Lcom/estrongs/fs/impl/l/a;->a()V

    goto :goto_0
.end method

.method public task()Z
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ad;->aW()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->d:Z

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/fs/b/ab;->m:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->o:Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    invoke-direct {p0}, Lcom/estrongs/fs/b/ab;->e()Z
    :try_end_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iget v3, p0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/ab;->onProgress(Lcom/estrongs/a/a/m;)V

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->hasProgressListener()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/fs/b/ac;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/ac;-><init>(Lcom/estrongs/fs/b/ab;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ac;->start()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ab;->q:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->a:Lcom/estrongs/fs/d;

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/fs/d;->a(Ljava/util/List;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/am;->aO(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-static {v0}, Lcom/estrongs/fs/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v4, "item_count"

    invoke-interface {v0, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/bd;->a(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/estrongs/android/util/am;->aN(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/estrongs/fs/a/b;->b(Lcom/estrongs/fs/h;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iget v5, p0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {v0, v4, v5}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    move-object v0, v3

    :goto_2
    if-nez v2, :cond_b

    if-nez v0, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v4, 0x7f0b01b9

    invoke-virtual {v1, v4}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_9

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v1

    iget v1, v1, Lcom/estrongs/a/p;->a:I

    const/4 v4, 0x4

    if-ne v1, v4, :cond_b

    :cond_a
    const/16 v1, 0xa

    new-instance v4, Lcom/estrongs/a/q;

    invoke-direct {v4, v0, v3}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v1, v4}, Lcom/estrongs/fs/b/ab;->setTaskResult(ILjava/lang/Object;)V

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/ab;->m:Z

    move v0, v2

    goto/16 :goto_0

    :cond_c
    :try_start_3
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    instance-of v5, v0, Lcom/estrongs/fs/impl/b/f;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_6

    :try_start_4
    check-cast v0, Lcom/estrongs/fs/impl/b/f;

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/f;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/f;->b()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/f;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0}, Lcom/estrongs/fs/impl/b/f;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/estrongs/fs/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Lcom/estrongs/fs/FileSystemException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Lcom/estrongs/fs/FileSystemException;->getMessage()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    iget-boolean v2, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_10
    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v2

    iget-object v4, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iget v5, p0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {v2, v4, v5}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    move v2, v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-boolean v0, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iget v4, p0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {v0, v2, v4}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    move-object v0, v3

    move v2, v1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Lcom/estrongs/fs/b/ab;->q:Z

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Lcom/estrongs/fs/b/ab;->b()V

    :cond_12
    iget-object v1, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/fs/b/ab;->c:Ljava/util/List;

    iget v3, p0, Lcom/estrongs/fs/b/ab;->i:I

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/fs/a/b;->c(Ljava/util/List;I)V

    :cond_13
    throw v0

    :cond_14
    const-string v0, ""

    goto/16 :goto_3

    :cond_15
    move-object v0, v3

    move v2, v1

    goto/16 :goto_2

    :cond_16
    move v2, v1

    goto/16 :goto_2

    :cond_17
    move-object v0, v3

    goto/16 :goto_2
.end method
