.class Lcom/estrongs/android/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/a/i;


# direct methods
.method constructor <init>(Lcom/estrongs/android/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/a/j;->a:Lcom/estrongs/android/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/a/j;->a:Lcom/estrongs/android/a/i;

    sget v1, Lcom/estrongs/android/a/i;->a:I

    invoke-static {v0, v1}, Lcom/estrongs/android/a/i;->a(Lcom/estrongs/android/a/i;I)I

    iget-object v0, p0, Lcom/estrongs/android/a/j;->a:Lcom/estrongs/android/a/i;

    invoke-virtual {v0}, Lcom/estrongs/android/a/i;->dismiss()V

    return-void
.end method
