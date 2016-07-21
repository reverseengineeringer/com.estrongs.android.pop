.class public Lcom/estrongs/android/ui/e/d;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getDelegate()Landroid/support/v7/app/AppCompatDelegate;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :try_start_1
    const-string v3, "mWindow"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    if-nez v1, :cond_3

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    instance-of v2, v1, Lcom/estrongs/android/ui/e/e;

    if-nez v2, :cond_1

    new-instance v2, Lcom/estrongs/android/ui/e/e;

    invoke-direct {v2, p0, v1, p1}, Lcom/estrongs/android/ui/e/e;-><init>(Lcom/estrongs/android/ui/e/d;Landroid/view/Window$Callback;Landroid/support/v7/app/AppCompatActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/ui/e/d;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/e/d;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    return-void
.end method
