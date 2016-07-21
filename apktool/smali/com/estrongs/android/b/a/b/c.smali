.class Lcom/estrongs/android/b/a/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/android/b/a/b/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/b/a/b/a;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/b/a/b/c;->c:Lcom/estrongs/android/b/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/estrongs/android/b/a/b/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/b/a/b/c;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/estrongs/android/e/a;->a(Ljava/lang/String;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/c;->a:Ljava/lang/String;

    const-string v1, "intent@com.estrongs.android.SHOW_DISK_USAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/b/a/b/c;->c:Lcom/estrongs/android/b/a/b/a;

    iget-object v1, p0, Lcom/estrongs/android/b/a/b/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/estrongs/android/b/a/b/a;->a(Lcom/estrongs/android/b/a/b/a;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
