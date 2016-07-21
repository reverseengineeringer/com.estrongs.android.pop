.class public Lcom/flurry/sdk/ku$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/ku;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/ku;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Lcom/flurry/sdk/ku$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/ku$a$2;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/ku;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/ku;-><init>(Lcom/flurry/sdk/ku$1;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    if-eqz v3, :cond_0

    new-array v0, v3, [B

    invoke-static {v1, v0}, Lcom/flurry/sdk/ku;->a(Lcom/flurry/sdk/ku;[B)[B

    invoke-static {v1}, Lcom/flurry/sdk/ku;->a(Lcom/flurry/sdk/ku;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    if-nez v0, :cond_2

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/ku;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/ku$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ku$a$1;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/ku;->a(Lcom/flurry/sdk/ku;)[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {p2}, Lcom/flurry/sdk/ku;->a(Lcom/flurry/sdk/ku;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/ku;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ku$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/ku;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/ku$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/ku;

    move-result-object v0

    return-object v0
.end method
