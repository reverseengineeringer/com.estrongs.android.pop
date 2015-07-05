.class Lcom/estrongs/android/pop/bt/j;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/bt/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/bt/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/bt/j;->a:Lcom/estrongs/android/pop/bt/i;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/bt/j;->a:Lcom/estrongs/android/pop/bt/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/bt/i;->a()V

    return-void
.end method
