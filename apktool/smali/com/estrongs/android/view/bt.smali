.class Lcom/estrongs/android/view/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/br;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/br;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/view/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/bt;->a:Lcom/estrongs/android/view/br;

    iget-object v0, v0, Lcom/estrongs/android/view/br;->a:Lcom/estrongs/android/view/bo;

    invoke-static {v0}, Lcom/estrongs/android/view/bo;->y(Lcom/estrongs/android/view/bo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
