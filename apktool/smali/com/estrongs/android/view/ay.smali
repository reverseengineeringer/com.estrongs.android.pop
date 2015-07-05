.class Lcom/estrongs/android/view/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ax;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ax;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ay;->a:Lcom/estrongs/android/view/ax;

    iget-object v0, v0, Lcom/estrongs/android/view/ax;->a:Lcom/estrongs/android/view/aw;

    invoke-virtual {v0}, Lcom/estrongs/android/view/aw;->g()V

    return-void
.end method
