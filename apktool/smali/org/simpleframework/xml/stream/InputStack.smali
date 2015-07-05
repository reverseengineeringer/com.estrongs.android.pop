.class Lorg/simpleframework/xml/stream/InputStack;
.super Lorg/simpleframework/xml/stream/Stack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/stream/Stack",
        "<",
        "Lorg/simpleframework/xml/stream/InputNode;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/stream/Stack;-><init>(I)V

    return-void
.end method


# virtual methods
.method public isRelevant(Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/InputStack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputStack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
