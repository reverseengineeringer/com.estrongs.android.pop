.class Lcom/estrongs/android/ui/dialog/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/o;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/o;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/q;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/q;->a:Lcom/estrongs/android/ui/dialog/o;

    invoke-static {v0}, Lcom/estrongs/android/ui/dialog/o;->a(Lcom/estrongs/android/ui/dialog/o;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/q;->a:Lcom/estrongs/android/ui/dialog/o;

    iget-object v1, v1, Lcom/estrongs/android/ui/dialog/o;->a:Lcom/estrongs/fs/impl/b/d;

    invoke-virtual {v1}, Lcom/estrongs/fs/impl/b/d;->h()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/utils/c;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method
