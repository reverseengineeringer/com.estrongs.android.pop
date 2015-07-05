.class Lcom/estrongs/android/ui/dialog/jo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/dialog/ix;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/dialog/ix;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/android/ui/dialog/ix;

    iget-object v1, p0, Lcom/estrongs/android/ui/dialog/jo;->a:Lcom/estrongs/android/ui/dialog/ix;

    invoke-static {v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/android/ui/dialog/ix;)Lcom/estrongs/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/dialog/ix;->a(Lcom/estrongs/a/a;)V

    return-void
.end method
