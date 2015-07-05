.class Lcom/estrongs/android/pop/app/jp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/jo;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/jo;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/jp;->a:Lcom/estrongs/android/pop/app/jo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/jp;->a:Lcom/estrongs/android/pop/app/jo;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jo;->b:Lcom/estrongs/android/pop/app/jn;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jn;->c:Lcom/estrongs/android/pop/app/jl;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/jl;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    return-void
.end method
