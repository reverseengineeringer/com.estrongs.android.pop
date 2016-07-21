.class public Lcom/flurry/sdk/be$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/be;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/be;
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/flurry/sdk/be$b$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/be$b$1;-><init>(Lcom/flurry/sdk/be$b;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/be;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/be;-><init>(Lcom/flurry/sdk/be$1;)V

    sget-object v0, Lcom/flurry/sdk/cw;->a:Lcom/flurry/sdk/cw;

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->a(Lcom/flurry/sdk/be;Lcom/flurry/sdk/cw;)Lcom/flurry/sdk/cw;

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/be;->a(Lcom/flurry/sdk/be;J)J

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/be;->b(Lcom/flurry/sdk/be;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->a(Lcom/flurry/sdk/be;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/be;->c(Lcom/flurry/sdk/be;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/be;->d(Lcom/flurry/sdk/be;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->a(Lcom/flurry/sdk/be;I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->b(Lcom/flurry/sdk/be;I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->c(Lcom/flurry/sdk/be;I)I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/be;->d(Lcom/flurry/sdk/be;I)I

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/be;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/be;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/be$b;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/be;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/be$b;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/be;

    move-result-object v0

    return-object v0
.end method
