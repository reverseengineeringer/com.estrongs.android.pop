.class public Lcom/flurry/sdk/dj$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/dj;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/dj;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {}, Lcom/flurry/sdk/dj;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdsAsyncReportInfoSerializerV1 deserialize"

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/flurry/sdk/dj$a$1;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/dj$a$1;-><init>(Lcom/flurry/sdk/dj$a;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/dj;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/dj;-><init>(Lcom/flurry/sdk/dj$1;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/dj;->b(Lcom/flurry/sdk/dj;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dj;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/flurry/sdk/dj;->a(J)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/dj;->a(Lcom/flurry/sdk/dj;Z)Z

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dj;->b(Z)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dj;->b(I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/dj;)V
    .locals 3

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/dj;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdsAsyncReportInfoSerializerV1 serialize"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/kg;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Serialization not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/dj;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/dj$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/dj;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/dj$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/dj;

    move-result-object v0

    return-object v0
.end method
