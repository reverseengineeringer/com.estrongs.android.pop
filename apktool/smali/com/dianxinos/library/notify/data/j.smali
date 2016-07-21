.class public Lcom/dianxinos/library/notify/data/j;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Z

.field public e:Lcom/dianxinos/library/notify/data/ShowRule;

.field public f:Lcom/dianxinos/library/notify/data/i;

.field public g:Lcom/dianxinos/library/notify/data/c;

.field public h:Lcom/dianxinos/library/notify/data/Works;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/dianxinos/library/notify/data/j;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dianxinos/library/notify/data/j;->f:Lcom/dianxinos/library/notify/data/i;

    invoke-virtual {v2}, Lcom/dianxinos/library/notify/data/i;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/dianxinos/library/notify/data/j;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/dianxinos/library/notify/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/j;->e:Lcom/dianxinos/library/notify/data/ShowRule;

    invoke-virtual {v1}, Lcom/dianxinos/library/notify/data/ShowRule;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    const-string v0, "pandoraapk"

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pandorajar"

    iget-object v1, p0, Lcom/dianxinos/library/notify/data/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
