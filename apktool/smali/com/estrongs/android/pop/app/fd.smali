.class Lcom/estrongs/android/pop/app/fd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/fc;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fc;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fd;->a:Lcom/estrongs/android/pop/app/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fd;->a:Lcom/estrongs/android/pop/app/fc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fc;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->g()V

    return-void
.end method
