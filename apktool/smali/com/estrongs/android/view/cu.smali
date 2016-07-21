.class Lcom/estrongs/android/view/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cs;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cu;->a:Lcom/estrongs/android/view/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cu;->a:Lcom/estrongs/android/view/cs;

    iget-object v0, v0, Lcom/estrongs/android/view/cs;->a:Lcom/estrongs/android/view/cr;

    invoke-virtual {v0}, Lcom/estrongs/android/view/cr;->g()V

    return-void
.end method
