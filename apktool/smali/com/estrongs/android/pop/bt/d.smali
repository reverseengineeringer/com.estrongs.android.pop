.class Lcom/estrongs/android/pop/bt/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/bt/c;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/d;->a:Lcom/estrongs/android/pop/bt/c;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/d;->a:Lcom/estrongs/android/pop/bt/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/c;->a()V

    return-void
.end method
