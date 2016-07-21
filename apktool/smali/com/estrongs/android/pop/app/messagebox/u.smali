.class Lcom/estrongs/android/pop/app/messagebox/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/messagebox/ah;

.field final synthetic b:Lcom/estrongs/android/pop/app/messagebox/s;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/messagebox/s;Lcom/estrongs/android/pop/app/messagebox/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/messagebox/u;->b:Lcom/estrongs/android/pop/app/messagebox/s;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/messagebox/u;->a:Lcom/estrongs/android/pop/app/messagebox/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/messagebox/u;->b:Lcom/estrongs/android/pop/app/messagebox/s;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/messagebox/s;->a:Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/messagebox/u;->a:Lcom/estrongs/android/pop/app/messagebox/ah;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;->a(Lcom/estrongs/android/pop/app/messagebox/MessageBoxActivity;Lcom/estrongs/android/pop/app/messagebox/ah;)V

    return-void
.end method
