.class public Lcom/estrongs/fs/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/estrongs/fs/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/fs/a/d;->c:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/fs/a/d;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/estrongs/fs/a/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/a/d;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Lcom/estrongs/fs/a/d;->c:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/fs/a/d;->d:Ljava/util/List;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/estrongs/fs/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/fs/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/estrongs/fs/a/d;->d:Ljava/util/List;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/estrongs/fs/a/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/a/d;

    return-object v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/fs/a/d;->d:Ljava/util/List;

    return-void
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/estrongs/fs/a/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/fs/a/d;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
