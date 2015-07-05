.class final Lcom/estrongs/android/pop/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/b/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/estrongs/android/pop/b/b;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/estrongs/android/pop/b/a;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/b/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/b/b;->c:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
