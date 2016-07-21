.class Lcom/estrongs/android/scanner/d/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/m;

.field private final b:Lcom/estrongs/android/scanner/d/w;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/m;Lcom/estrongs/android/scanner/d/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/r;->b:Lcom/estrongs/android/scanner/d/w;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53bb\u6389\u6b8b\u7559\u7684\u76ee\u5f55:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/scanner/x;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/c;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v5, v5, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u8df3\u8fc7\u4e0d\u662f\u771f\u6b63\u7684\u6b8b\u7559\u76ee\u5f55:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v5, v5, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u53bb\u6389\u6b8b\u7559\u7684\u76ee\u5f55:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v4, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v4}, Lcom/estrongs/android/scanner/d/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Ljava/util/List;)Z

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    const-string v1, "flush trash directories from db"

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->d(Lcom/estrongs/android/scanner/d/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->c(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush new dirs into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/m;->c(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/util/Set;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/m;->c(Lcom/estrongs/android/scanner/d/m;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/r;->b:Lcom/estrongs/android/scanner/d/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/m;->b(Lcom/estrongs/android/scanner/d/w;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/r;->a:Lcom/estrongs/android/scanner/d/m;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/m;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->close()V

    return-void
.end method
