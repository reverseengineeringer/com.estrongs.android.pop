.class Lcom/estrongs/android/pop/app/gg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/gf;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/gf;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/gg;->a:Lcom/estrongs/android/pop/app/gf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/gg;->a:Lcom/estrongs/android/pop/app/gf;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/gf;->a:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->i(Lcom/estrongs/android/pop/app/PopAudioPlayer;)V

    return-void
.end method
