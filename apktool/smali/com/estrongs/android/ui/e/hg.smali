.class Lcom/estrongs/android/ui/e/hg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/view/a/b;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/e/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/e/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/hg;->a:Lcom/estrongs/android/ui/e/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/ui/e/cp;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/estrongs/android/pop/z;->ap:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/cp;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/cp;->K:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/estrongs/android/ui/e/cp;->N:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/estrongs/android/ui/e/cp;->P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->d()Lcom/estrongs/android/appinfo/AppFolderInfoManager;

    move-result-object v3

    iget-object v0, p1, Lcom/estrongs/android/ui/e/cp;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/fs/h;

    invoke-virtual {v3, v0}, Lcom/estrongs/android/appinfo/AppFolderInfoManager;->c(Lcom/estrongs/fs/h;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
