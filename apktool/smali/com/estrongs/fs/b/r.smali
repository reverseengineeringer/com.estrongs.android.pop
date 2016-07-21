.class public Lcom/estrongs/fs/b/r;
.super Lcom/estrongs/a/a;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private a:[B

.field private b:Z

.field protected c:Lcom/estrongs/fs/d;

.field protected d:I

.field protected e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/b/u;",
            ">;"
        }
    .end annotation
.end field

.field protected g:I

.field protected h:I

.field protected i:Z

.field protected j:Z

.field k:Lcom/estrongs/fs/b/v;

.field l:Z

.field m:Z

.field public final n:Lcom/estrongs/fs/h;

.field protected o:Z

.field public p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/String;

.field public v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public w:I

.field protected x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/estrongs/fs/b/ao;

.field z:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/fs/b/r;-><init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Lcom/estrongs/fs/h;Lcom/estrongs/fs/h;Ljava/lang/String;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    iput-object v1, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    iput v3, p0, Lcom/estrongs/fs/b/r;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    iput v3, p0, Lcom/estrongs/fs/b/r;->g:I

    iput v3, p0, Lcom/estrongs/fs/b/r;->h:I

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->i:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->j:Z

    new-instance v0, Lcom/estrongs/fs/b/v;

    invoke-direct {v0}, Lcom/estrongs/fs/b/v;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->k:Lcom/estrongs/fs/b/v;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->l:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->m:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->p:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->q:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->r:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->s:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->t:Ljava/util/List;

    iput-object v1, p0, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->v:Ljava/util/Set;

    iput v2, p0, Lcom/estrongs/fs/b/r;->w:I

    iput-object v1, p0, Lcom/estrongs/fs/b/r;->a:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->x:Ljava/util/List;

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->b:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->A:Z

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->B:Z

    iput-object v1, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    iput-boolean v3, p0, Lcom/estrongs/fs/b/r;->C:Z

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    iput-object p1, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    iput-object p3, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    iput v2, p0, Lcom/estrongs/fs/b/r;->g:I

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->x:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v4, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-object v0, v4, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    const-string v4, "item_paste_name"

    invoke-interface {p2, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v0, "item_paste_name"

    invoke-interface {p2, v0}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    new-instance v4, Lcom/estrongs/fs/b/u;

    invoke-direct {v4, p2, v0, v6, v7}, Lcom/estrongs/fs/b/u;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/r;->o:Z

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/fs/b/r;->d:I

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, v1, Lcom/estrongs/a/a/m;->l:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->l:Z

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->canRestart:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/estrongs/fs/b/r;->task_type:I

    const-string v0, "title"

    invoke-interface {p2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "items_ori_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->i()V

    return-void

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move-object p4, v0

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/estrongs/fs/d;Ljava/util/List;Lcom/estrongs/fs/h;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/estrongs/fs/d;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;",
            "Lcom/estrongs/fs/h;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/estrongs/a/a;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/fs/b/r;->d:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/fs/b/r;->g:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/estrongs/fs/b/r;->h:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->i:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->j:Z

    new-instance v2, Lcom/estrongs/fs/b/v;

    invoke-direct {v2}, Lcom/estrongs/fs/b/v;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->k:Lcom/estrongs/fs/b/v;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->l:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->m:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->o:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->p:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->q:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->r:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->s:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->t:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->u:Ljava/lang/String;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->v:Ljava/util/Set;

    const/4 v2, 0x1

    iput v2, p0, Lcom/estrongs/fs/b/r;->w:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->a:[B

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->x:Ljava/util/List;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->b:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->A:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->B:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->C:Z

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/estrongs/fs/b/r;->g:I

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->x:Ljava/util/List;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface/range {p3 .. p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p3 .. p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p3 .. p3}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v7, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    if-eq v2, v7, :cond_5

    const-string v2, " , "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    if-lt v4, v2, :cond_5

    const-string v2, "..."

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_3
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    const-string v9, "item_paste_name"

    invoke-interface {v2, v9}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    const-string v4, "item_paste_name"

    invoke-interface {v2, v4}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v4, v2

    :cond_2
    iget-object v9, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    new-instance v10, Lcom/estrongs/fs/b/u;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v12, 0x0

    invoke-direct {v10, v2, v4, v12, v13}, Lcom/estrongs/fs/b/u;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;J)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/estrongs/fs/b/r;->o:Z

    if-nez v2, :cond_4

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->o:Z

    :cond_4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_2

    :cond_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/estrongs/a/a/m;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->aQ(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_4
    iput-boolean v2, v3, Lcom/estrongs/a/a/m;->l:Z

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ap;->I(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/estrongs/fs/b/r;->d:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->l:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/estrongs/fs/b/r;->canRestart:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/estrongs/fs/b/r;->task_type:I

    const-string v3, ""

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    move v14, v2

    move-object v2, v3

    move v3, v14

    :goto_5
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    if-ne v3, v5, :cond_a

    :cond_7
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_8
    const-string v3, "title"

    invoke-virtual {p0, v3, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "items_ori_count"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->i()V

    return-void

    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v4

    goto :goto_5

    :cond_b
    move-object v4, v2

    goto/16 :goto_3

    :cond_c
    move-object v3, v2

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/fs/b/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->k()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

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
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/scanner/l;->b(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/l;->a(Z)V

    return-void

    :cond_2
    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/fs/b/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->C:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/fs/b/r;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->hasProgressListener()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    iget-wide v2, p0, Lcom/estrongs/fs/b/r;->startTime:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/estrongs/fs/b/r;->startTime:J

    :cond_0
    const-string v1, "task_id"

    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/estrongs/fs/b/r;->startTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "task_type"

    iget v2, p0, Lcom/estrongs/fs/b/r;->task_type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "restartable"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/fs/w;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getFileType()Lcom/estrongs/fs/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/fs/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "items_selected_count"

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "source"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "target"

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v1}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ap;->F(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "status"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "file_type"

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/bg;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Lcom/estrongs/fs/b/ao;

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    iget-object v4, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/estrongs/fs/b/ao;-><init>(Lcom/estrongs/fs/d;Ljava/util/List;)V

    iput-object v2, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->getProgressListeners()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/estrongs/fs/b/ao;->addProgressListeners(Ljava/util/List;)V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/ad;->aW()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/b/ao;->execute(Z)V

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    new-instance v2, Lcom/estrongs/fs/b/s;

    invoke-direct {v2, p0}, Lcom/estrongs/fs/b/s;-><init>(Lcom/estrongs/fs/b/r;)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/b/ao;->addTaskStatusChangeListener(Lcom/estrongs/a/a/p;)V

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v2, v1}, Lcom/estrongs/fs/b/ao;->execute(Z)V

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v2}, Lcom/estrongs/fs/b/ao;->getTaskStatus()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v2, v0, Lcom/estrongs/a/p;->a:I

    iget-object v0, v0, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->k()V

    goto :goto_0
.end method

.method private k()V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->a()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/ap;

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->c:J

    iget v6, v0, Lcom/estrongs/fs/b/ap;->e:I

    iget v7, v0, Lcom/estrongs/fs/b/ap;->f:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/estrongs/a/a/m;->c:J

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v3, Lcom/estrongs/a/a/m;->e:J

    iget-wide v6, v0, Lcom/estrongs/fs/b/ap;->c:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/estrongs/a/a/m;->e:J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v0, v0, Lcom/estrongs/a/a/m;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/a/a/m;->l:Z

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->l()Lcom/estrongs/a/q;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/estrongs/fs/b/r;->requestStop(ILjava/lang/Object;)V

    :cond_1
    const-string v0, "size"

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/fs/b/r;->recordSummary(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private l()Lcom/estrongs/a/q;
    .locals 14

    const/4 v1, 0x0

    const-wide/16 v8, 0x0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v2}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v8, v0, Lcom/estrongs/a/a/m;->f:J

    sub-long/2addr v6, v8

    mul-long v8, v4, v2

    cmp-long v0, v6, v8

    if-lez v0, :cond_2

    new-instance v0, Lcom/estrongs/a/q;

    const-string v6, "Error"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Long;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v10, v9, Lcom/estrongs/a/a/m;->e:J

    iget-object v9, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v12, v9, Lcom/estrongs/a/a/m;->f:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v8

    invoke-direct {v0, v6, v7}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->e:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->d:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iput-wide v2, v0, Lcom/estrongs/a/a/m;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/b/r;->l:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->m:Z

    return-void
.end method

.method public addProgressListener(Lcom/estrongs/a/a/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/ao;->addProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->i:Z

    return-void
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->a:[B

    return-object v0
.end method

.method public c()Ljava/util/List;
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

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->x:Ljava/util/List;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->j:Z

    return-void
.end method

.method public canPause()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->b:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->i:Z

    return v0
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->A:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->j:Z

    return v0
.end method

.method public f()Lcom/estrongs/a/a/m;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    iget-object v0, v0, Lcom/estrongs/fs/b/ao;->processData:Lcom/estrongs/a/a/m;

    goto :goto_0
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/fs/b/r;->B:Z

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->A:Z

    return v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/estrongs/fs/b/u;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public varargs handleMessage(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/a/a;->handleMessage(I[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->d:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->d:J

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->g:J

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/estrongs/a/a/m;->h:J

    goto :goto_1

    :pswitch_4
    array-length v0, p2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const-string v0, "RBT"

    aget-object v2, p2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->B:Z

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/estrongs/a/a/m;->f:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    aget-object v0, p2, v8

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v2, Lcom/estrongs/a/a/m;->f:J

    aget-object v0, p2, v1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v4

    iput-wide v0, v2, Lcom/estrongs/a/a/m;->f:J

    goto :goto_2

    :pswitch_5
    aget-object v0, p2, v1

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    :goto_3
    iget-object v2, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iput-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    goto/16 :goto_1

    :pswitch_6
    if-eqz p2, :cond_0

    array-length v0, p2

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aget-object v2, p2, v8

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :pswitch_7
    iget v0, p0, Lcom/estrongs/fs/b/r;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/fs/b/r;->h:I

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->k:Lcom/estrongs/fs/b/v;

    iput-boolean v8, v0, Lcom/estrongs/fs/b/v;->a:Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected postTask()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bJ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/ac;->a()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/estrongs/fs/impl/local/k;->a()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/bk;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->s:Ljava/util/List;

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->v:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/estrongs/fs/impl/media/e;->a(Ljava/util/List;Ljava/util/Set;)V
    :try_end_0
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    iget v0, v0, Lcom/estrongs/a/p;->a:I

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->g(Z)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-static {}, Lcom/estrongs/fs/impl/p/c;->b()Lcom/estrongs/fs/impl/p/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->p:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/p/c;->a(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-static {}, Lcom/estrongs/fs/impl/n/d;->b()Lcom/estrongs/fs/impl/n/d;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->q:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/n/d;->a(Ljava/util/List;)V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/impl/v/c;->b()Lcom/estrongs/fs/impl/v/c;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/fs/b/r;->r:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/impl/v/c;->a(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/estrongs/fs/impl/media/MediaStoreInsertException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/estrongs/fs/impl/media/MediaStoreInsertException;->printStackTrace()V

    invoke-static {}, Lcom/estrongs/android/pop/utils/cm;->b()V

    goto :goto_0
.end method

.method public removeProgressListener(Lcom/estrongs/a/a/l;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0, p1}, Lcom/estrongs/fs/b/ao;->removeProgressListener(Lcom/estrongs/a/a/l;)V

    :cond_0
    return-void
.end method

.method public requestStop()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->y:Lcom/estrongs/fs/b/ao;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ao;->requestStop()V

    :cond_0
    invoke-super {p0}, Lcom/estrongs/a/a;->requestStop()V

    return-void
.end method

.method public task()Z
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/estrongs/a/a/m;->l:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/estrongs/a/a/m;->m:Z

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/estrongs/a/a/m;->o:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/fs/b/r;->C:Z

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v4

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->a:[B

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->k:Lcom/estrongs/fs/b/v;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/estrongs/fs/b/v;->a:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->o:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    new-instance v4, Lcom/estrongs/a/q;

    const-string v5, "Error"

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v0, v4}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v4, v8

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->e:J

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->c:J

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/estrongs/a/a/m;->e:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->l()Lcom/estrongs/a/q;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v4, 0xc

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v4, v0, Lcom/estrongs/a/a/m;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/fs/b/r;->z:Ljava/lang/Long;

    new-instance v0, Lcom/estrongs/fs/b/t;

    invoke-direct {v0, p0}, Lcom/estrongs/fs/b/t;-><init>(Lcom/estrongs/fs/b/r;)V

    invoke-virtual {v0}, Lcom/estrongs/fs/b/t;->start()V

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v4, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/estrongs/a/a/m;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/r;->onProgress(Lcom/estrongs/a/a/m;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    const/4 v4, 0x2

    iput v4, v0, Lcom/estrongs/a/a/m;->i:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/estrongs/android/util/ap;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/estrongs/android/scanner/l;->a()Lcom/estrongs/android/scanner/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/l;->e()V

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->taskStopped()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, v4}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->aL(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    :try_start_5
    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/u;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/fs/impl/o/b;->k(Ljava/lang/String;)[J

    move-result-object v0

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    const/4 v6, 0x1

    aget-wide v6, v0, v6

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->e:J

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    const-wide v6, 0x10000000000L

    cmp-long v0, v4, v6

    if-gez v0, :cond_8

    const/16 v0, 0xf

    new-instance v6, Lcom/estrongs/a/q;

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v10, v10, Lcom/estrongs/a/a/m;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0xc

    :try_start_6
    new-instance v6, Lcom/estrongs/a/q;

    const-string v7, "Error"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v10, v10, Lcom/estrongs/a/a/m;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-direct {v6, v7, v8}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v6}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v4, 0x2710

    new-instance v5, Lcom/estrongs/a/q;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/estrongs/a/q;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p0, v4, v5}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->l()Lcom/estrongs/a/q;

    move-result-object v0

    if-eqz v0, :cond_9

    const/16 v4, 0xc

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_9
    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_a
    :try_start_9
    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->l:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/estrongs/fs/b/r;->l()Lcom/estrongs/a/q;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v4, 0xc

    invoke-virtual {p0, v4, v0}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v3, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_b
    :try_start_a
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->f:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/b/u;

    iget-object v5, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/util/ap;->aJ(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    const-string v6, "user_info"

    invoke-interface {v5, v6}, Lcom/estrongs/fs/h;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/estrongs/android/ui/pcs/u;->a()Lcom/estrongs/android/ui/pcs/u;

    move-result-object v6

    invoke-virtual {v6}, Lcom/estrongs/android/ui/pcs/u;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/bk;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v5

    if-nez v5, :cond_c

    invoke-direct {p0, v4}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_c
    :try_start_b
    iget-object v5, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/estrongs/android/util/ap;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/estrongs/fs/b/r;->c:Lcom/estrongs/fs/d;

    invoke-virtual {v5, v0}, Lcom/estrongs/fs/d;->a(Lcom/estrongs/fs/b/u;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/estrongs/fs/b/r;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v3

    iget v3, v3, Lcom/estrongs/a/p;->a:I

    if-eq v3, v1, :cond_d

    invoke-static {}, Lcom/estrongs/fs/d;->a()Lcom/estrongs/fs/d;

    move-result-object v3

    iget-object v5, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    invoke-interface {v5}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/estrongs/fs/d;->a(Ljava/lang/String;ZZ)Lcom/estrongs/fs/h;

    move-result-object v3

    if-eqz v3, :cond_e

    :cond_d
    new-instance v3, Lcom/estrongs/fs/z;

    iget-object v5, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_e
    invoke-direct {p0, v4}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v1, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v4, v1}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    goto/16 :goto_0

    :cond_f
    :try_start_c
    iget-object v5, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    iget-object v6, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v6}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    new-instance v5, Lcom/estrongs/fs/z;

    iget-object v6, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    iget-object v7, p0, Lcom/estrongs/fs/b/r;->e:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move-object v3, v4

    goto/16 :goto_4

    :cond_10
    iget-object v5, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    instance-of v5, v5, Lcom/estrongs/fs/impl/b/d;

    if-eqz v5, :cond_12

    new-instance v5, Lcom/estrongs/fs/z;

    iget-object v6, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v4

    :goto_5
    invoke-direct {p0, v3}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v1, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v1, :cond_11

    if-eqz v3, :cond_11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    iget v2, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v1, v3, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    :cond_11
    throw v0

    :cond_12
    :try_start_d
    new-instance v5, Lcom/estrongs/fs/z;

    iget-object v6, p0, Lcom/estrongs/fs/b/r;->n:Lcom/estrongs/fs/h;

    iget-object v0, v0, Lcom/estrongs/fs/b/u;->a:Lcom/estrongs/fs/h;

    invoke-interface {v0}, Lcom/estrongs/fs/h;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/estrongs/fs/z;-><init>(Lcom/estrongs/fs/h;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_2

    :cond_13
    if-eqz v3, :cond_14

    :try_start_e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v3

    if-ne v0, v3, :cond_19

    move v0, v1

    :goto_6
    if-nez v0, :cond_14

    const-wide/16 v6, 0x2710

    :try_start_f
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    :cond_14
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_15

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v3, Lcom/estrongs/a/a/m;->c:J

    iput-wide v6, v0, Lcom/estrongs/a/a/m;->d:J

    :cond_15
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v0, Lcom/estrongs/a/a/m;->e:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-object v3, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    iget-wide v6, v3, Lcom/estrongs/a/a/m;->e:J

    iput-wide v6, v0, Lcom/estrongs/a/a/m;->f:J

    :cond_16
    iget-object v0, p0, Lcom/estrongs/fs/b/r;->processData:Lcom/estrongs/a/a/m;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/r;->onProgress(Lcom/estrongs/a/a/m;)V

    const-class v0, Lcom/estrongs/a/a/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/fs/b/r;->getDecisionData(Ljava/lang/Class;)Lcom/estrongs/a/a/d;

    move-result-object v0

    check-cast v0, Lcom/estrongs/a/a/h;

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/estrongs/fs/b/r;->h:I

    iget v3, p0, Lcom/estrongs/fs/b/r;->g:I

    if-ne v0, v3, :cond_18

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :goto_7
    invoke-direct {p0, v4}, Lcom/estrongs/fs/b/r;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lcom/estrongs/fs/b/r;->C:Z

    iget-boolean v0, p0, Lcom/estrongs/fs/b/r;->b:Z

    if-eqz v0, :cond_17

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_17

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v0

    iget v2, p0, Lcom/estrongs/fs/b/r;->w:I

    invoke-virtual {v0, v4, v2}, Lcom/estrongs/fs/a/b;->b(Ljava/util/List;I)V

    :cond_17
    move v2, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    move v0, v2

    goto :goto_6

    :cond_18
    const/4 v0, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/estrongs/fs/b/r;->k:Lcom/estrongs/fs/b/v;

    invoke-virtual {p0, v0, v3}, Lcom/estrongs/fs/b/r;->setTaskResult(ILjava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    :cond_19
    move v0, v2

    goto :goto_6
.end method
