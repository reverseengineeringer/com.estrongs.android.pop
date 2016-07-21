.class Lcom/estrongs/android/pop/app/ke;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/kd;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/kd;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/kd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ke;->a:Lcom/estrongs/android/pop/app/kd;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/kd;->b:Lcom/estrongs/android/pop/app/kc;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/kc;->c:Lcom/estrongs/android/pop/app/ka;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ka;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void
.end method
