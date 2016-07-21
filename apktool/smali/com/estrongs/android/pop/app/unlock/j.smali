.class Lcom/estrongs/android/pop/app/unlock/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duapps/ad/e;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/duapps/ad/f;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===================================================================onClick, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duapps/ad/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/unlock/s;->a()Lcom/estrongs/android/pop/app/unlock/s;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duapps/ad/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duapps/ad/f;->l()Lcom/duapps/ad/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/unlock/s;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duapps/ad/c;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->c(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "from"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->c(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "feature"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->b(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "action"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlockd"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/duapps/ad/f;Lcom/duapps/ad/b;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==================================================================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duapps/ad/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/l;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/k;

    invoke-direct {v1, p0, p2}, Lcom/estrongs/android/pop/app/unlock/k;-><init>(Lcom/estrongs/android/pop/app/unlock/j;Lcom/duapps/ad/b;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/duapps/ad/f;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    new-instance v1, Lcom/estrongs/android/pop/app/unlock/l;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/unlock/l;-><init>(Lcom/estrongs/android/pop/app/unlock/j;Lcom/duapps/ad/f;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
