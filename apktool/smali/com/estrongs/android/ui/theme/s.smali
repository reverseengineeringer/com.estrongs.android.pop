.class Lcom/estrongs/android/ui/theme/s;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/theme/ThemeActivity;

.field private b:Ljava/lang/String;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "package:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/s;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/theme/s;->a:Lcom/estrongs/android/ui/theme/ThemeActivity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/ThemeActivity;->c(Lcom/estrongs/android/ui/theme/ThemeActivity;)Lcom/estrongs/android/ui/a/db;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/theme/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/a/db;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
