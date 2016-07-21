.class Lcom/estrongs/android/b/a/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/p;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/fs/b/ad;

.field final synthetic c:Lcom/estrongs/android/b/a/a;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lcom/estrongs/android/b/a/b/g;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Lcom/estrongs/fs/b/ad;Lcom/estrongs/android/b/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/i;->e:Lcom/estrongs/android/b/a/b/g;

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/b/a/b/i;->b:Lcom/estrongs/fs/b/ad;

    iput-object p4, p0, Lcom/estrongs/android/b/a/b/i;->c:Lcom/estrongs/android/b/a/a;

    iput-object p5, p0, Lcom/estrongs/android/b/a/b/i;->d:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;II)V
    .locals 3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/i;->e:Lcom/estrongs/android/b/a/b/g;

    invoke-static {v0}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/i;->b:Lcom/estrongs/fs/b/ad;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/ad;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/i;->c:Lcom/estrongs/android/b/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/b/a/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/i;->e:Lcom/estrongs/android/b/a/b/g;

    iget-object v2, p0, Lcom/estrongs/android/b/a/b/i;->d:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/i;->e:Lcom/estrongs/android/b/a/b/g;

    invoke-static {v0}, Lcom/estrongs/android/b/a/b/g;->a(Lcom/estrongs/android/b/a/b/g;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/i;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
