.class Lcom/estrongs/android/pop/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiAccountManager$ReceiveShareListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/FexApplication;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/FexApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/f;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveShare()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/f;->a:Lcom/estrongs/android/pop/FexApplication;

    invoke-static {v0}, Lcom/estrongs/android/pop/FexApplication;->a(Landroid/content/Context;)V

    return-void
.end method
