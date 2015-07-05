.class Lcom/estrongs/android/ui/dialog/fp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/fn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/fp;->a:Lcom/estrongs/android/ui/dialog/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/estrongs/android/a/u;->a()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/fp;->a:Lcom/estrongs/android/ui/dialog/fn;

    iget-object v0, v0, Lcom/estrongs/android/ui/dialog/fn;->f:Lcom/estrongs/android/ui/dialog/fh;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/fh;->j(Lcom/estrongs/android/ui/dialog/fh;)Lcom/estrongs/android/ui/dialog/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/cg;->dismiss()V

    return-void
.end method
