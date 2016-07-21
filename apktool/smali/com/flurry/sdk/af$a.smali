.class public Lcom/flurry/sdk/af$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/sdk/lb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/lb",
        "<",
        "Lcom/flurry/sdk/af;",
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
.method public a(Ljava/io/InputStream;)Lcom/flurry/sdk/af;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/flurry/sdk/af$a$2;

    invoke-direct {v2, p0, p1}, Lcom/flurry/sdk/af$a$2;-><init>(Lcom/flurry/sdk/af$a;Ljava/io/InputStream;)V

    new-instance v1, Lcom/flurry/sdk/af;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/af;-><init>(Lcom/flurry/sdk/af$1;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/af;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/as;->a(I)Lcom/flurry/sdk/as;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/as;)Lcom/flurry/sdk/as;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/af;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/af;->b(Lcom/flurry/sdk/af;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/al;->a(I)Lcom/flurry/sdk/al;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/af;Lcom/flurry/sdk/al;)Lcom/flurry/sdk/al;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/flurry/sdk/af;->c(Lcom/flurry/sdk/af;J)J

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/af;->d(Lcom/flurry/sdk/af;J)J

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Lcom/flurry/sdk/af;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/flurry/sdk/af$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/af$a$1;-><init>(Lcom/flurry/sdk/af$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->a(Lcom/flurry/sdk/af;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->b(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/as;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->c(Lcom/flurry/sdk/af;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->d(Lcom/flurry/sdk/af;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->e(Lcom/flurry/sdk/af;)Lcom/flurry/sdk/al;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/al;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->f(Lcom/flurry/sdk/af;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/flurry/sdk/af;->g(Lcom/flurry/sdk/af;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/flurry/sdk/af;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/af$a;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/af;)V

    return-void
.end method

.method public synthetic b(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/flurry/sdk/af$a;->a(Ljava/io/InputStream;)Lcom/flurry/sdk/af;

    move-result-object v0

    return-object v0
.end method
