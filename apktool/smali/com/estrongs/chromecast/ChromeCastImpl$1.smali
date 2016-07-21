.class Lcom/estrongs/chromecast/ChromeCastImpl$1;
.super Lcom/google/android/gms/cast/k;


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$1;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Lcom/google/android/gms/cast/k;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplicationDisconnected(I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$1;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-virtual {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->teardown()V

    return-void
.end method

.method public onApplicationStatusChanged()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$1;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$500(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method public onVolumeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$1;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mApiClient:Lcom/google/android/gms/common/api/n;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$500(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/common/api/n;

    move-result-object v0

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method
