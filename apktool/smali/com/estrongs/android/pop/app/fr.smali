.class Lcom/estrongs/android/pop/app/fr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/fq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fr;->a:Lcom/estrongs/android/pop/app/fq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fr;->a:Lcom/estrongs/android/pop/app/fq;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fq;->b:Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopAudioPlayer;->k()V

    return-void
.end method
