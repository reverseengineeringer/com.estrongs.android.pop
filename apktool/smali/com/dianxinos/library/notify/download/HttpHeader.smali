.class public Lcom/dianxinos/library/notify/download/HttpHeader;
.super Landroid/util/Pair;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2205f51f0426f383L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/dianxinos/library/notify/download/HttpHeader;
    .locals 1

    new-instance v0, Lcom/dianxinos/library/notify/download/HttpHeader;

    invoke-direct {v0, p0, p1}, Lcom/dianxinos/library/notify/download/HttpHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
