.class Lcom/estrongs/android/ui/g/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/g/c;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/ui/g/c;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/g/f;->a:Lcom/estrongs/android/ui/g/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/ui/g/f;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/g/f;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/g/f;->a:Lcom/estrongs/android/ui/g/c;

    invoke-static {v1}, Lcom/estrongs/android/ui/g/c;->d(Lcom/estrongs/android/ui/g/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/g/g;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/g/g;-><init>(Lcom/estrongs/android/ui/g/f;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/g/g;->start()V

    :cond_0
    return-void
.end method
