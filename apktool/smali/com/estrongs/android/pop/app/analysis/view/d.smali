.class Lcom/estrongs/android/pop/app/analysis/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/estrongs/android/pop/app/analysis/view/b;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/analysis/view/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/analysis/view/d;->b:Lcom/estrongs/android/pop/app/analysis/view/b;

    iput-boolean p2, p0, Lcom/estrongs/android/pop/app/analysis/view/d;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/analysis/view/d;->b:Lcom/estrongs/android/pop/app/analysis/view/b;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/analysis/view/b;->c(Lcom/estrongs/android/pop/app/analysis/view/b;)Lcom/estrongs/android/pop/app/analysis/view/i;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/analysis/view/d;->a:Z

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/analysis/view/i;->b(Z)V

    return-void
.end method
