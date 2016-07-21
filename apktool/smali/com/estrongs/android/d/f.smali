.class Lcom/estrongs/android/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/d/e;


# direct methods
.method constructor <init>(Lcom/estrongs/android/d/e;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/d/f;->a:Lcom/estrongs/android/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/d/f;->a:Lcom/estrongs/android/d/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/d/e;->a(Lcom/estrongs/android/d/e;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/d/f;->a:Lcom/estrongs/android/d/e;

    invoke-virtual {v0}, Lcom/estrongs/android/d/e;->dismiss()V

    return-void
.end method
