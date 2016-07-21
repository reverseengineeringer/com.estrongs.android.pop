.class Lcom/estrongs/android/view/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dq;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dr;->a:Lcom/estrongs/android/view/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dr;->a:Lcom/estrongs/android/view/dq;

    iget-object v0, v0, Lcom/estrongs/android/view/dq;->e:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->e()V

    return-void
.end method
