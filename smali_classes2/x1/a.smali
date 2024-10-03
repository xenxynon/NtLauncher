.class public final Lx1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/n;


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Lx1/i;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/a;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lx1/a;->b:Lx1/i;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p7}, Lx1/n$a;->a(Lx1/n;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Lq5/d<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lx1/a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/a$a;

    iget v3, v2, Lx1/a$a;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/a$a;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/a$a;

    invoke-direct {v2, p0, v1}, Lx1/a$a;-><init>(Lx1/a;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/a$a;->o:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/a$a;->q:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lx1/a$a;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/a$a;->m:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    iget-object v6, v2, Lx1/a$a;->l:Ljava/lang/Object;

    check-cast v6, Lx1/m;

    iget-object v7, v2, Lx1/a$a;->k:Ljava/lang/Object;

    check-cast v7, Lw1/a;

    iget-object v8, v2, Lx1/a$a;->j:Ljava/lang/Object;

    check-cast v8, Lx1/e;

    iget-object v9, v2, Lx1/a$a;->i:Ljava/lang/Object;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, v2, Lx1/a$a;->h:Ljava/lang/Object;

    check-cast v10, Landroid/view/View;

    iget-object v11, v2, Lx1/a$a;->g:Ljava/lang/Object;

    check-cast v11, Lx1/a;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lx1/a;->a:Lorg/json/JSONArray;

    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action Parse Array = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lx1/a;->a:Lorg/json/JSONArray;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Parse"

    invoke-static {v4, v1}, Lh2/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lx1/a;->a:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-static {v4, v6}, Le6/e;->i(II)Le6/d;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v6, p6

    move-object v10, v1

    move-object v8, v2

    move-object v9, v3

    move-object v7, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v7

    check-cast v11, Lo5/a0;

    invoke-virtual {v11}, Lo5/a0;->nextInt()I

    move-result v11

    invoke-static {v10, v11}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v11

    if-eqz v11, :cond_3

    new-instance v12, Ly1/f;

    iget-object v13, v0, Lx1/a;->b:Lx1/i;

    invoke-direct {v12, v11, v13}, Ly1/f;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    iput-object v0, v8, Lx1/a$a;->g:Ljava/lang/Object;

    iput-object v1, v8, Lx1/a$a;->h:Ljava/lang/Object;

    iput-object v2, v8, Lx1/a$a;->i:Ljava/lang/Object;

    iput-object v3, v8, Lx1/a$a;->j:Ljava/lang/Object;

    iput-object v4, v8, Lx1/a$a;->k:Ljava/lang/Object;

    iput-object v6, v8, Lx1/a$a;->l:Ljava/lang/Object;

    iput-object v10, v8, Lx1/a$a;->m:Ljava/lang/Object;

    iput-object v7, v8, Lx1/a$a;->n:Ljava/lang/Object;

    iput v5, v8, Lx1/a$a;->q:I

    move-object p0, v12

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    invoke-virtual/range {p0 .. p6}, Ly1/f;->g(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v9, :cond_4

    return-object v9

    :cond_4
    move-object v11, v0

    move-object v0, v7

    move-object v7, v4

    move-object v4, v10

    move-object v10, v1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v8

    move-object v8, v3

    move-object v3, v14

    :goto_2
    move-object v1, v10

    move-object v10, v4

    move-object v4, v7

    move-object v7, v0

    move-object v0, v11

    move-object v14, v8

    move-object v8, v2

    move-object v2, v9

    move-object v9, v3

    move-object v3, v14

    goto :goto_1

    :cond_5
    move-object/from16 v1, p2

    :cond_6
    return-object v1
.end method
