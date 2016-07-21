.class Lcom/estrongs/android/ui/controller/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/cr;

.field final synthetic b:Lcom/estrongs/android/ui/controller/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/controller/a;Lcom/estrongs/android/view/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/controller/c;->b:Lcom/estrongs/android/ui/controller/a;

    iput-object p2, p0, Lcom/estrongs/android/ui/controller/c;->a:Lcom/estrongs/android/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/c;->a:Lcom/estrongs/android/view/cr;

    instance-of v0, v0, Lcom/estrongs/android/view/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/controller/c;->a:Lcom/estrongs/android/view/cr;

    check-cast v0, Lcom/estrongs/android/view/ak;

    invoke-virtual {v0}, Lcom/estrongs/android/view/ak;->t()V

    :cond_0
    return-void
.end method
