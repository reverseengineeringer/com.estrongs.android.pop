.class public final Lcom/google/android/gms/nearby/messages/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/nearby/messages/internal/MessageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/nearby/messages/b;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/b;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/b;->a:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/nearby/messages/internal/MessageType;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/nearby/messages/internal/MessageType;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/nearby/messages/b;
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/nearby/messages/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/nearby/messages/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/nearby/messages/MessageFilter;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "At least one of the include methods must be called."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/bn;->a(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/nearby/messages/MessageFilter;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/b;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/nearby/messages/MessageFilter;-><init>(Ljava/util/List;Lcom/google/android/gms/nearby/messages/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
