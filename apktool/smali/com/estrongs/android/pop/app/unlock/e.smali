.class Lcom/estrongs/android/pop/app/unlock/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/k/d;

.field final synthetic b:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/unlock/UnLockCardView;Lcom/estrongs/android/k/d;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/unlock/e;->b:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/unlock/e;->a:Lcom/estrongs/android/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/e;->b:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a:Lcom/estrongs/android/pop/app/unlock/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/unlock/e;->b:Lcom/estrongs/android/pop/app/unlock/UnLockCardView;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/unlock/UnLockCardView;->a:Lcom/estrongs/android/pop/app/unlock/g;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/unlock/e;->a:Lcom/estrongs/android/k/d;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/unlock/g;->a(Lcom/estrongs/android/k/d;)V

    :cond_0
    return-void
.end method
