.class final Lcom/estrongs/android/pop/utils/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/ui/dialog/dm;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/esclasses/ESActivity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/r;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/android/ui/pcs/r;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/aw;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/aw;->b:Lcom/estrongs/android/ui/pcs/r;

    iput-object p3, p0, Lcom/estrongs/android/pop/utils/aw;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/aw;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/ad;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/ad;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/ad;->F(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/aw;->b:Lcom/estrongs/android/ui/pcs/r;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/utils/aw;->a:Lcom/estrongs/android/pop/esclasses/ESActivity;

    iget-object v2, p0, Lcom/estrongs/android/pop/utils/aw;->c:Ljava/util/List;

    invoke-static {v0}, Lcom/estrongs/fs/d;->m(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/estrongs/android/pop/utils/aj;->a(Landroid/app/Activity;Ljava/util/List;Lcom/estrongs/fs/h;Z)V

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/am;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->h(Ljava/lang/String;)Lcom/estrongs/fs/h;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/estrongs/fs/a/b;->a()Lcom/estrongs/fs/a/b;

    move-result-object v1

    new-instance v2, Lcom/estrongs/fs/o;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/estrongs/fs/o;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/estrongs/fs/a/b;->a(Lcom/estrongs/fs/h;)V

    :cond_1
    return-void
.end method
