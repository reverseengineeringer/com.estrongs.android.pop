.class Lcom/estrongs/android/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/estrongs/android/a/k;

.field final synthetic c:Lcom/estrongs/android/a/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/b;Ljava/util/List;Lcom/estrongs/android/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    iput-object p2, p0, Lcom/estrongs/android/a/i;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/estrongs/android/a/i;->b:Lcom/estrongs/android/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/estrongs/android/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/estrongs/android/a/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/estrongs/fs/h;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    instance-of v0, v4, Lcom/estrongs/android/a/b/g;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/estrongs/android/a/b/l;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/estrongs/android/a/b/l;-><init>(Ljava/lang/String;J)V

    :cond_0
    :goto_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v0, v4, Lcom/estrongs/fs/impl/n/a;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/estrongs/android/a/b/p;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/p;-><init>(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_2
    instance-of v0, v4, Lcom/estrongs/fs/impl/p/a;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/estrongs/android/a/b/o;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/o;-><init>(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_3
    instance-of v0, v4, Lcom/estrongs/fs/impl/v/a;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/estrongs/android/a/b/w;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/w;-><init>(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_4
    instance-of v0, v4, Lcom/estrongs/fs/impl/f/a;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/estrongs/android/a/b/e;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/e;-><init>(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_5
    instance-of v0, v4, Lcom/estrongs/fs/x;

    if-eqz v0, :cond_6

    new-instance v0, Lcom/estrongs/android/a/b/l;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/estrongs/android/a/b/l;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v1}, Lcom/estrongs/android/a/b;->j(Lcom/estrongs/android/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v1}, Lcom/estrongs/android/a/b;->g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v1}, Lcom/estrongs/android/a/b;->g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/estrongs/android/a/ab;->a(Lcom/estrongs/fs/h;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/estrongs/android/a/b/k;

    invoke-interface {v4}, Lcom/estrongs/fs/h;->length()J

    move-result-wide v2

    invoke-interface {v4}, Lcom/estrongs/fs/h;->lastModified()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/a/b/k;-><init>(Ljava/lang/String;JJ)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->j(Lcom/estrongs/android/a/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->g(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/ab;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/a/ab;->a(Ljava/util/List;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/a/i;->b:Lcom/estrongs/android/a/k;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/a/i;->b:Lcom/estrongs/android/a/k;

    invoke-interface {v0}, Lcom/estrongs/android/a/k;->a()V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->e(Lcom/estrongs/android/a/b;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->c(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/v;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->c(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/v;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/a/v;->b(Ljava/util/List;)V

    :cond_b
    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->a(Lcom/estrongs/android/a/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/a/i;->c:Lcom/estrongs/android/a/b;

    invoke-static {v0}, Lcom/estrongs/android/a/b;->f(Lcom/estrongs/android/a/b;)Lcom/estrongs/android/a/q;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/estrongs/android/a/q;->a(Ljava/util/List;)V

    goto :goto_2
.end method
