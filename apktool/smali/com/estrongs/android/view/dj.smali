.class Lcom/estrongs/android/view/dj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/di;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/di;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dj;->a:Lcom/estrongs/android/view/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/dj;->a:Lcom/estrongs/android/view/di;

    iget-object v0, v0, Lcom/estrongs/android/view/di;->b:Lcom/estrongs/android/view/cr;

    invoke-static {v0}, Lcom/estrongs/android/view/cr;->b(Lcom/estrongs/android/view/cr;)V

    return-void
.end method
