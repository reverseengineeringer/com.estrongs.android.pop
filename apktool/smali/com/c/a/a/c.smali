.class Lcom/c/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/c/a/a/c;->a([B)V

    return-void
.end method


# virtual methods
.method a([B)V
    .locals 10

    const/4 v2, 0x1

    const/16 v9, 0x10

    const/4 v1, 0x0

    const-string v0, "authChallenge"

    invoke-static {v0, p1}, Lcom/c/a/a;->a(Ljava/lang/String;[B)V

    move v0, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_6

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v0, 0x2

    packed-switch v3, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid authChallenge tag "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a;->b(Ljava/lang/String;)V

    :goto_1
    add-int v0, v5, v4

    goto :goto_0

    :pswitch_0
    if-eq v4, v9, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "OBEX Digest Challenge error in tag Nonce"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-array v0, v9, [B

    iput-object v0, p0, Lcom/c/a/a/c;->a:[B

    iget-object v0, p0, Lcom/c/a/a/c;->a:[B

    invoke-static {p1, v5, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :pswitch_1
    aget-byte v3, p1, v5

    const-string v0, "authChallenge options"

    int-to-long v6, v3

    invoke-static {v0, v6, v7}, Lcom/c/a/a;->a(Ljava/lang/String;J)V

    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/c/a/a/c;->c:Z

    and-int/lit8 v0, v3, 0x2

    if-nez v0, :cond_2

    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/c/a/a/c;->d:Z

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_2
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v4, -0x1

    new-array v3, v3, [B

    add-int/lit8 v6, v5, 0x1

    array-length v7, v3

    invoke-static {p1, v6, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0xff

    if-ne v0, v6, :cond_3

    invoke-static {v3}, Lcom/c/a/a/v;->b([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    const-string v6, "ASCII"

    invoke-direct {v0, v3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v6, 0x9

    if-gt v0, v6, :cond_5

    new-instance v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ISO-8859-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, p0, Lcom/c/a/a/c;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported charset code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " in Challenge"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/c/a/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    add-int/lit8 v6, v4, -0x1

    const-string v7, "ASCII"

    invoke-direct {v0, v3, v1, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/c/a/a/c;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/a/c;->c:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/c/a/a/c;->d:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/c/a/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
