.class Lcom/estrongs/android/scanner/d/ap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/List",
        "<",
        "Lcom/estrongs/android/pop/app/b/b;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/scanner/d/ak;

.field private final b:I

.field private final c:J

.field private final d:J

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/scanner/d/ar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/estrongs/android/scanner/d/ak;IJJ)V
    .locals 1

    iput-object p1, p0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/estrongs/android/scanner/d/ap;->b:I

    iput-wide p3, p0, Lcom/estrongs/android/scanner/d/ap;->c:J

    iput-wide p5, p0, Lcom/estrongs/android/scanner/d/ap;->d:J

    invoke-static {p1}, Lcom/estrongs/android/scanner/d/ak;->c(Lcom/estrongs/android/scanner/d/ak;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/estrongs/android/scanner/d/ap;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/estrongs/android/pop/app/b/b;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/ak;->d(Lcom/estrongs/android/scanner/d/ak;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/estrongs/android/scanner/d/ap;->b:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    :goto_0
    return-object v17

    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ap;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/estrongs/android/scanner/d/ar;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ar;->e:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/estrongs/android/scanner/d/ap;->c:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_1

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ar;->d:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/estrongs/android/scanner/d/ap;->d:J

    cmp-long v2, v4, v6

    if-gtz v2, :cond_1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/estrongs/android/scanner/d/ar;->a:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ar;->c:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/estrongs/android/scanner/d/ap;->c:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/estrongs/android/scanner/d/ap;->d:J

    invoke-static/range {v2 .. v9}, Lcom/estrongs/android/scanner/d/ak;->a(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;JJJ)I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/estrongs/android/scanner/d/ap;->c:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/estrongs/android/scanner/d/ap;->d:J

    move-object v8, v3

    move-object/from16 v9, v20

    move-wide v10, v4

    invoke-static/range {v7 .. v15}, Lcom/estrongs/android/scanner/d/ak;->a(Lcom/estrongs/android/scanner/d/ak;Ljava/lang/String;Ljava/lang/String;JJJ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/estrongs/android/pop/app/b/b;

    invoke-direct {v5}, Lcom/estrongs/android/pop/app/b/b;-><init>()V

    iput v2, v5, Lcom/estrongs/android/pop/app/b/b;->j:I

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/estrongs/android/pop/app/b/b;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/ak;->e(Lcom/estrongs/android/scanner/d/ak;)Lcom/estrongs/android/scanner/g;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ap;->a:Lcom/estrongs/android/scanner/d/ak;

    invoke-static {v2}, Lcom/estrongs/android/scanner/d/ak;->e(Lcom/estrongs/android/scanner/d/ak;)Lcom/estrongs/android/scanner/g;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/estrongs/android/scanner/d/ar;->b:Ljava/lang/String;

    invoke-interface {v2, v6}, Lcom/estrongs/android/scanner/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/estrongs/android/scanner/d/ap;->c:J

    iput-wide v6, v5, Lcom/estrongs/android/pop/app/b/b;->b:J

    move-object/from16 v0, p0

    iget v2, v0, Lcom/estrongs/android/scanner/d/ap;->b:I

    iput v2, v5, Lcom/estrongs/android/pop/app/b/b;->c:I

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/estrongs/android/pop/app/b/i;

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/estrongs/android/scanner/d/ar;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/estrongs/android/pop/app/b/i;->a(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/estrongs/android/pop/app/b/b;->i:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/estrongs/android/scanner/d/ar;->b:Ljava/lang/String;

    iput-object v2, v5, Lcom/estrongs/android/pop/app/b/b;->d:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/estrongs/android/scanner/d/ap;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object/from16 v17, v2

    goto/16 :goto_0

    :cond_5
    move-object/from16 v2, v17

    goto :goto_4
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/scanner/d/ap;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
