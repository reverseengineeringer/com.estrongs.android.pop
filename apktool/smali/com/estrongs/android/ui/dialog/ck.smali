.class Lcom/estrongs/android/ui/dialog/ck;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/cg;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/ck;->a:Lcom/estrongs/android/ui/dialog/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/ck;->a:Lcom/estrongs/android/ui/dialog/cg;

    # invokes: Lcom/estrongs/android/ui/dialog/cg;->dismissNoException()V
    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/cg;->access$400(Lcom/estrongs/android/ui/dialog/cg;)V

    return-void
.end method
