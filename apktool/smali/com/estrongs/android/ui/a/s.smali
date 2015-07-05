.class Lcom/estrongs/android/ui/a/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/a/r;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/a/r;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/s;->a:Lcom/estrongs/android/ui/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/s;->a:Lcom/estrongs/android/ui/a/r;

    iget-object v0, v0, Lcom/estrongs/android/ui/a/r;->b:Lcom/estrongs/android/ui/a/q;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/a/q;->notifyDataSetChanged()V

    return-void
.end method
