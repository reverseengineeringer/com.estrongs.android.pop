.class Lcom/estrongs/android/pop/app/unlock/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duapps/ad/b;

.field final synthetic b:Lcom/estrongs/android/pop/app/unlock/j;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/j;Lcom/duapps/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/k;->b:Lcom/estrongs/android/pop/app/unlock/j;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/k;->a:Lcom/duapps/ad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/k;->b:Lcom/estrongs/android/pop/app/unlock/j;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;->a(Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;)Lcom/estrongs/android/pop/app/unlock/q;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/k;->a:Lcom/duapps/ad/b;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/unlock/q;->a(Lcom/duapps/ad/b;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorCode"

    iget-object v2, p0, Lcom/estrongs/android/pop/app/unlock/k;->a:Lcom/duapps/ad/b;

    invoke-virtual {v2}, Lcom/duapps/ad/b;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/k;->b:Lcom/estrongs/android/pop/app/unlock/j;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/unlock/j;->a:Lcom/estrongs/android/pop/app/unlock/UnLockDialogActivity;

    invoke-static {v1}, Lcom/estrongs/android/j/c;->a(Landroid/content/Context;)Lcom/estrongs/android/j/c;

    move-result-object v1

    const-string v2, "unlockad"

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/j/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
