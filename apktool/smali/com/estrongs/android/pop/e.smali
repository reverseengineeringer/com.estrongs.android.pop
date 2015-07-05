.class Lcom/estrongs/android/pop/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/FexApplication;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/FexApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/e;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSilentShare()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/pop/e;->a:Lcom/estrongs/android/pop/FexApplication;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.intent.action.SILENT_SHARE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/FexApplication;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->unregisterSilentShareListener()V

    return-void
.end method
