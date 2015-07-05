.class Lcom/estrongs/android/pop/app/editor/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/as;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/as;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/at;->a:Lcom/estrongs/android/pop/app/editor/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/at;->a:Lcom/estrongs/android/pop/app/editor/as;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/at;->a:Lcom/estrongs/android/pop/app/editor/as;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/as;->a(Lcom/estrongs/android/pop/app/editor/as;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/as;->a(Lcom/estrongs/android/pop/app/editor/as;I)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
