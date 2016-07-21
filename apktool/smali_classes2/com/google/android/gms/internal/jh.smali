.class Lcom/google/android/gms/internal/jh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/jg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jh;->a:Lcom/google/android/gms/internal/jg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jh;->a:Lcom/google/android/gms/internal/jg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jg;->a(Z)V

    return-void
.end method
