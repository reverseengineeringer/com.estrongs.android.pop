.class Lcom/estrongs/android/ui/dialog/cm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/cm;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/cm;->a:Lcom/estrongs/android/ui/dialog/ci;

    # invokes: Lcom/estrongs/android/ui/dialog/ci;->dismissNoException()V
    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/ci;->access$400(Lcom/estrongs/android/ui/dialog/ci;)V

    return-void
.end method
