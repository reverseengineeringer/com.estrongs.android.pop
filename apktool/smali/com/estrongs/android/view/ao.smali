.class Lcom/estrongs/android/view/ao;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/am;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/am;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ao;->a:Lcom/estrongs/android/view/am;

    iget-object v0, v0, Lcom/estrongs/android/view/am;->a:Lcom/estrongs/android/view/ak;

    invoke-static {v0}, Lcom/estrongs/android/view/ak;->y(Lcom/estrongs/android/view/ak;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
