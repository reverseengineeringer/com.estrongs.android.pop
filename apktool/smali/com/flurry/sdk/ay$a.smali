.class public Lcom/flurry/sdk/ay$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/ay;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/flurry/sdk/ax$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ax$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/ay$a;->a:Lcom/flurry/sdk/ax$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/ay;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/ay$a;->a:Lcom/flurry/sdk/ax$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Lcom/flurry/sdk/ay$a$2;

    invoke-direct {v3, p0, p1}, Lcom/flurry/sdk/ay$a$2;-><init>(Lcom/flurry/sdk/ay$a;Ljava/io/InputStream;)V

    new-instance v2, Lcom/flurry/sdk/ay;

    invoke-direct {v2, v0}, Lcom/flurry/sdk/ay;-><init>(Lcom/flurry/sdk/ay$1;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v2, v1}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;I)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;J)J

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-static {v2, v0}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v0}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;Ljava/util/List;)Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_3

    invoke-static {v2}, Lcom/flurry/sdk/ay;->d(Lcom/flurry/sdk/ay;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/ay$a;->a:Lcom/flurry/sdk/ax$a;

    invoke-virtual {v5, v3}, Lcom/flurry/sdk/ax$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ax;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/ay;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/ay$a;->a:Lcom/flurry/sdk/ax$a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/flurry/sdk/ay$a$1;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ay$a$1;-><init>(Lcom/flurry/sdk/ay$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/ay;->a(Lcom/flurry/sdk/ay;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/ay;->b(Lcom/flurry/sdk/ay;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/ay;->c(Lcom/flurry/sdk/ay;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/flurry/sdk/ay;->d(Lcom/flurry/sdk/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lcom/flurry/sdk/ay;->d(Lcom/flurry/sdk/ay;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ax;

    iget-object v3, p0, Lcom/flurry/sdk/ay$a;->a:Lcom/flurry/sdk/ax$a;

    invoke-virtual {v3, v1, v0}, Lcom/flurry/sdk/ax$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ax;)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/flurry/sdk/ay;->c(Lcom/flurry/sdk/ay;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/ay;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ay$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ay;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ay$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ay;

    move-result-object v0

    return-object v0
.end method
