.class Lcom/estrongs/android/pop/utils/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/a/a/o;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/estrongs/android/pop/utils/ap;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/utils/ap;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/utils/as;->b:Lcom/estrongs/android/pop/utils/ap;

    iput-object p2, p0, Lcom/estrongs/android/pop/utils/as;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/a/a;Z)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/estrongs/android/util/ap;->bl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->b:Lcom/estrongs/android/pop/utils/ap;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/pop/utils/as;->b:Lcom/estrongs/android/pop/utils/ap;

    iget-object v0, v0, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->O()Lcom/estrongs/android/view/cr;

    move-result-object v0

    instance-of v1, v0, Lcom/estrongs/android/ui/c/e;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/estrongs/android/view/er;

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/utils/as;->b:Lcom/estrongs/android/pop/utils/ap;

    iget-object v1, v1, Lcom/estrongs/android/pop/utils/ap;->b:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/pop/utils/at;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/utils/at;-><init>(Lcom/estrongs/android/pop/utils/as;Lcom/estrongs/android/view/cr;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
