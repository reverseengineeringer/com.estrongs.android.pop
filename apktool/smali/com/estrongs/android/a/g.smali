.class Lcom/estrongs/android/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/g;->a:Lcom/estrongs/android/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/g;->a:Lcom/estrongs/android/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/estrongs/android/a/e;->a(Lcom/estrongs/android/a/e;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/a/g;->a:Lcom/estrongs/android/a/e;

    invoke-virtual {v0}, Lcom/estrongs/android/a/e;->dismiss()V

    return-void
.end method
