.class Lcom/estrongs/chromecast/ChromeCastImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/cast/at;


# instance fields
.field final synthetic this$0:Lcom/estrongs/chromecast/ChromeCastImpl;


# direct methods
.method constructor <init>(Lcom/estrongs/chromecast/ChromeCastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/chromecast/ChromeCastImpl$3;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/chromecast/ChromeCastImpl$3;->this$0:Lcom/estrongs/chromecast/ChromeCastImpl;

    # getter for: Lcom/estrongs/chromecast/ChromeCastImpl;->mRemoteMediaPlayer:Lcom/google/android/gms/cast/ak;
    invoke-static {v0}, Lcom/estrongs/chromecast/ChromeCastImpl;->access$1400(Lcom/estrongs/chromecast/ChromeCastImpl;)Lcom/google/android/gms/cast/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/cast/ak;->d()Lcom/google/android/gms/cast/aa;

    return-void
.end method
