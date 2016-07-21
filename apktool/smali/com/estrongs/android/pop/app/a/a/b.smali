.class Lcom/estrongs/android/pop/app/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a/a;->a(Lcom/estrongs/android/pop/app/a/a/a;)Lcom/estrongs/android/pop/app/a/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/a/a/b;->a:Lcom/estrongs/android/pop/app/a/a/a;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/a/a/a;->a(Lcom/estrongs/android/pop/app/a/a/a;)Lcom/estrongs/android/pop/app/a/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/a/a/d;->a()V

    :cond_0
    return-void
.end method
