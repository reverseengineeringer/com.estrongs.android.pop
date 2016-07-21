.class Lcom/estrongs/android/scanner/d/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/z;

.field private final b:Lcom/estrongs/android/scanner/d/w;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/z;Lcom/estrongs/android/scanner/d/w;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->b()V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/z;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53bb\u6389\u6b8b\u7559\u7684\u6587\u4ef6\u4ece:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->a(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/scanner/a/c;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v5, v1, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u53bb\u6389\u6b8b\u7559\u7684\u6587\u4ef6:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v1, v0

    check-cast v1, Lcom/estrongs/android/scanner/a/d;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/a/d;->i()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/estrongs/android/util/l;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/a/c;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->d(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush trash files from db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/z;->d(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->b(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/z;->d(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/scanner/d/w;->a(Ljava/util/List;)V

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->d(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush new files into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->a(Ljava/lang/String;Ljava/util/Set;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v1}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/estrongs/android/scanner/d/w;->a(Ljava/util/Set;)V

    :cond_5
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/d/z;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flush modify files into db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v2}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-virtual {v1}, Lcom/estrongs/android/scanner/d/z;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/scanner/d/a;->e(Ljava/lang/String;Ljava/util/List;)Z

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    invoke-static {v0}, Lcom/estrongs/android/scanner/d/z;->c(Lcom/estrongs/android/scanner/d/z;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v1, p0, Lcom/estrongs/android/scanner/d/ac;->b:Lcom/estrongs/android/scanner/d/w;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/scanner/d/z;->b(Lcom/estrongs/android/scanner/d/w;)V

    iget-object v0, p0, Lcom/estrongs/android/scanner/d/ac;->a:Lcom/estrongs/android/scanner/d/z;

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/z;->b:Lcom/estrongs/android/scanner/d/a;

    invoke-virtual {v0}, Lcom/estrongs/android/scanner/d/a;->close()V

    return-void
.end method
