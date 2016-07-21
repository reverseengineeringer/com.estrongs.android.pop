.class Lcom/estrongs/android/ui/pcs/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiWebView$OnFinishCallback;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/SocialLoginActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/pcs/SocialLoginActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/SocialLoginActivity;->finish()V

    return-void
.end method
