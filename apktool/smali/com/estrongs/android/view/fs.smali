.class Lcom/estrongs/android/view/fs;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/fp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/fp;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v0}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "WIFI_AP_STATE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v1}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v1}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "EXTRA_WIFI_AP_STATE"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v3, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v3}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v3}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "WIFI_AP_STATE_FAILED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-static {v4}, Lcom/estrongs/android/view/fp;->e(Lcom/estrongs/android/view/fp;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/fs;->a:Lcom/estrongs/android/view/fp;

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/view/fp;->a(Lcom/estrongs/android/view/fp;I)V
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
