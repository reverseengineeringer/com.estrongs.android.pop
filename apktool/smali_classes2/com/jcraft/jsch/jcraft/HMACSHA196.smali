.class public Lcom/jcraft/jsch/jcraft/HMACSHA196;
.super Lcom/jcraft/jsch/jcraft/HMACSHA1;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/jcraft/HMACSHA1;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a(I)V

    return-void
.end method

.method public bridge synthetic a([B)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a([B)V

    return-void
.end method

.method public a([BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    invoke-super {p0, v0, v2}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a([BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/HMACSHA196;->a:[B

    const/16 v1, 0xc

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public bridge synthetic a([BII)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/jcraft/jsch/jcraft/HMACSHA1;->a([BII)V

    return-void
.end method
