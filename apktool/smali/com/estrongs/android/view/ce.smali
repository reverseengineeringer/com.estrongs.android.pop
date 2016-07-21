.class Lcom/estrongs/android/view/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/bx;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/bx;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ce;->a:Lcom/estrongs/android/view/bx;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/bx;->b(Z)V

    return-void
.end method
