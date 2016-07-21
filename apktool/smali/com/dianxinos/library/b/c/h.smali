.class public Lcom/dianxinos/library/b/c/h;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/dianxinos/library/b/c/g;

.field private b:J

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J


# direct methods
.method protected constructor <init>(Lcom/dianxinos/library/b/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/dianxinos/library/b/c/h;->a:Lcom/dianxinos/library/b/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/dianxinos/library/b/c/h;->d:J

    return-wide v0
.end method

.method a(J)V
    .locals 5

    iput-wide p1, p0, Lcom/dianxinos/library/b/c/h;->c:J

    iget-wide v0, p0, Lcom/dianxinos/library/b/c/h;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    iput-wide p1, p0, Lcom/dianxinos/library/b/c/h;->b:J

    return-void

    :cond_0
    iget-wide p1, p0, Lcom/dianxinos/library/b/c/h;->b:J

    goto :goto_0
.end method

.method b(J)J
    .locals 7

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Lcom/dianxinos/library/b/c/h;->c:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/dianxinos/library/b/c/h;->d:J

    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->e:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    iput-wide v0, p0, Lcom/dianxinos/library/b/c/h;->e:J

    :cond_1
    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->f:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    :cond_2
    iput-wide v0, p0, Lcom/dianxinos/library/b/c/h;->f:J

    :cond_3
    iget-wide v2, p0, Lcom/dianxinos/library/b/c/h;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/dianxinos/library/b/c/h;->g:J

    return-wide v0
.end method
