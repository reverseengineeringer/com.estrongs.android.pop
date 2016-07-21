.class public Lcom/jcraft/jsch/jce/Random;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Random;


# instance fields
.field private a:[B

.field private b:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 2

    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    array-length v0, v0

    if-le p3, v0, :cond_0

    new-array v0, p3, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->b:Ljava/security/SecureRandom;

    iget-object v1, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/jce/Random;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
