.class final Lcom/estrongs/android/ui/e/ie;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ci;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/estrongs/fs/h;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ci;Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/ie;->a:Lcom/estrongs/android/ui/dialog/ci;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/ie;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/ie;->c:Lcom/estrongs/fs/h;

    iput-object p4, p0, Lcom/estrongs/android/ui/e/ie;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ie;->a:Lcom/estrongs/android/ui/dialog/ci;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/dialog/ci;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/e/ie;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/ie;->c:Lcom/estrongs/fs/h;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/ie;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/e/ib;->a(Landroid/content/Context;Lcom/estrongs/fs/h;Ljava/lang/String;)V

    return-void
.end method
