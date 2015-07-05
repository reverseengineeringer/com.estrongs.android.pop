.class Lorg/simpleframework/xml/core/Hierarchy;
.super Ljava/util/LinkedList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/core/Hierarchy;->scan(Ljava/lang/Class;)V

    return-void
.end method

.method private scan(Ljava/lang/Class;)V
    .locals 1

    :goto_0
    if-nez p1, :cond_0

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/core/Hierarchy;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/Hierarchy;->addFirst(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0
.end method
