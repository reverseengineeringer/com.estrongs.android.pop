.class Lcom/estrongs/android/view/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/compress/aw;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ao;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/app/compress/ai;)V
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/fs/impl/local/f;

    invoke-direct {v1, v0}, Lcom/estrongs/fs/impl/local/f;-><init>(Ljava/io/File;)V

    new-instance v0, Lcom/estrongs/fs/impl/d/a;

    invoke-direct {v0, v1}, Lcom/estrongs/fs/impl/d/a;-><init>(Lcom/estrongs/fs/h;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    iget-object v1, v1, Lcom/estrongs/android/view/ao;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    invoke-static {}, Lcom/estrongs/android/view/ak;->v()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/estrongs/android/pop/app/compress/ai;->a:Ljava/lang/String;

    new-instance v2, Lcom/estrongs/android/pop/app/compress/ax;

    iget-object v3, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    iget-object v3, v3, Lcom/estrongs/android/view/ao;->b:Lcom/estrongs/android/view/ak;

    iget-object v3, v3, Lcom/estrongs/android/view/ak;->ag:Landroid/app/Activity;

    invoke-direct {v2, v3, p1}, Lcom/estrongs/android/pop/app/compress/ax;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/compress/ai;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    iget-object v0, v0, Lcom/estrongs/android/view/ao;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    iget-object v1, v1, Lcom/estrongs/android/view/ao;->b:Lcom/estrongs/android/view/ak;

    iget-object v1, v1, Lcom/estrongs/android/view/ak;->H:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ak;->a_(Ljava/util/List;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ap;->a:Lcom/estrongs/android/view/ao;

    iget-object v0, v0, Lcom/estrongs/android/view/ao;->b:Lcom/estrongs/android/view/ak;

    iget-object v0, v0, Lcom/estrongs/android/view/ak;->i:Lcom/estrongs/android/view/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ck;->notifyDataSetChanged()V

    return-void
.end method
