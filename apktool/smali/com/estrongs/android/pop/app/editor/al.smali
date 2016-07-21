.class Lcom/estrongs/android/pop/app/editor/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/editor/ak;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/editor/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/editor/al;->a:Lcom/estrongs/android/pop/app/editor/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/editor/al;->a:Lcom/estrongs/android/pop/app/editor/ak;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/editor/al;->a:Lcom/estrongs/android/pop/app/editor/ak;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/editor/ak;->a(Lcom/estrongs/android/pop/app/editor/ak;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/editor/ak;->a(Lcom/estrongs/android/pop/app/editor/ak;I)I

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
