.class Lcom/estrongs/android/ui/dialog/jb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/a/a;

.field final synthetic b:Lcom/estrongs/android/ui/dialog/ja;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ja;Lcom/estrongs/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jb;->b:Lcom/estrongs/android/ui/dialog/ja;

    iput-object p2, p0, Lcom/estrongs/android/ui/dialog/jb;->a:Lcom/estrongs/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jb;->b:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->j(Lcom/estrongs/android/ui/dialog/ix;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jb;->b:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->i(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/ui/notification/e;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/dialog/ix;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jb;->a:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jb;->b:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ix;->i(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/android/ui/notification/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/notification/e;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jb;->b:Lcom/estrongs/android/ui/dialog/ja;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/ja;->a:Lcom/estrongs/android/ui/dialog/ix;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/e;

    :cond_0
    return-void
.end method
