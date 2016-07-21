.class Lcom/estrongs/android/ui/view/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/ESVideoView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/view/ESVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/view/as;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/view/as;->a:Lcom/estrongs/android/ui/view/ESVideoView;

    invoke-static {v0, p2}, Lcom/estrongs/android/ui/view/ESVideoView;->e(Lcom/estrongs/android/ui/view/ESVideoView;I)I

    return-void
.end method
