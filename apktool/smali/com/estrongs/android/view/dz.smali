.class Lcom/estrongs/android/view/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/dy;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/dz;->a:Lcom/estrongs/android/view/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/dz;->a:Lcom/estrongs/android/view/dy;

    iget-object v1, v1, Lcom/estrongs/android/view/dy;->ag:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/finder/a;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/app/finder/a;->a()Lcom/estrongs/android/pop/app/finder/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/finder/a;->c()V

    goto :goto_0
.end method
