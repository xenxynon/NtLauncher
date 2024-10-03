.class public final Lx1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# instance fields
.field private final a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/c;->a:Lorg/json/JSONArray;

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
    .locals 19
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

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lx1/c$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/c$a;

    iget v3, v2, Lx1/c$a;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/c$a;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/c$a;

    invoke-direct {v2, v0, v1}, Lx1/c$a;-><init>(Lx1/c;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/c$a;->o:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/c$a;->q:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lx1/c$a;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/c$a;->l:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    iget-object v10, v2, Lx1/c$a;->k:Ljava/lang/Object;

    check-cast v10, Lx1/m;

    iget-object v11, v2, Lx1/c$a;->j:Ljava/lang/Object;

    check-cast v11, Lw1/a;

    iget-object v12, v2, Lx1/c$a;->i:Ljava/lang/Object;

    check-cast v12, Lx1/e;

    iget-object v13, v2, Lx1/c$a;->h:Ljava/lang/Object;

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v14, v2, Lx1/c$a;->g:Ljava/lang/Object;

    check-cast v14, Landroid/view/View;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v2, Lx1/c$a;->n:Ljava/lang/Object;

    check-cast v0, Lz1/c;

    iget-object v4, v2, Lx1/c$a;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lx1/c$a;->l:Ljava/lang/Object;

    check-cast v10, Lorg/json/JSONArray;

    iget-object v11, v2, Lx1/c$a;->k:Ljava/lang/Object;

    check-cast v11, Lx1/m;

    iget-object v12, v2, Lx1/c$a;->j:Ljava/lang/Object;

    check-cast v12, Lw1/a;

    iget-object v13, v2, Lx1/c$a;->i:Ljava/lang/Object;

    check-cast v13, Lx1/e;

    iget-object v14, v2, Lx1/c$a;->h:Ljava/lang/Object;

    check-cast v14, Landroid/view/ViewGroup;

    iget-object v15, v2, Lx1/c$a;->g:Ljava/lang/Object;

    check-cast v15, Landroid/view/View;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v11

    move-object v11, v4

    move-object v4, v10

    move-object/from16 v10, v17

    goto/16 :goto_4

    :cond_3
    iget-object v0, v2, Lx1/c$a;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/c$a;->l:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    iget-object v10, v2, Lx1/c$a;->k:Ljava/lang/Object;

    check-cast v10, Lx1/m;

    iget-object v11, v2, Lx1/c$a;->j:Ljava/lang/Object;

    check-cast v11, Lw1/a;

    iget-object v12, v2, Lx1/c$a;->i:Ljava/lang/Object;

    check-cast v12, Lx1/e;

    iget-object v13, v2, Lx1/c$a;->h:Ljava/lang/Object;

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v14, v2, Lx1/c$a;->g:Ljava/lang/Object;

    check-cast v14, Landroid/view/View;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, v2, Lx1/c$a;->n:Ljava/lang/Object;

    check-cast v0, Lz1/b;

    iget-object v4, v2, Lx1/c$a;->m:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v10, v2, Lx1/c$a;->l:Ljava/lang/Object;

    check-cast v10, Lorg/json/JSONArray;

    iget-object v11, v2, Lx1/c$a;->k:Ljava/lang/Object;

    check-cast v11, Lx1/m;

    iget-object v12, v2, Lx1/c$a;->j:Ljava/lang/Object;

    check-cast v12, Lw1/a;

    iget-object v13, v2, Lx1/c$a;->i:Ljava/lang/Object;

    check-cast v13, Lx1/e;

    iget-object v14, v2, Lx1/c$a;->h:Ljava/lang/Object;

    check-cast v14, Landroid/view/ViewGroup;

    iget-object v15, v2, Lx1/c$a;->g:Ljava/lang/Object;

    check-cast v15, Landroid/view/View;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object/from16 v17, v11

    move-object v11, v4

    move-object v4, v10

    move-object/from16 v10, v17

    goto/16 :goto_2

    :cond_5
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    iget-object v0, v0, Lx1/c;->a:Lorg/json/JSONArray;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-static {v1, v4}, Le6/e;->i(II)Le6/d;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v4, p6

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    :cond_6
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_d

    move-object v14, v11

    check-cast v14, Lo5/a0;

    invoke-virtual {v14}, Lo5/a0;->nextInt()I

    move-result v14

    invoke-static {v10, v14}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v14

    if-eqz v14, :cond_6

    sget-object v15, Li2/b;->a:Li2/b$a;

    invoke-virtual {v15}, Li2/b$a;->a()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    sget-object v16, Lj2/b;->a:Lj2/b$a;

    invoke-virtual/range {v16 .. v16}, Lj2/b$a;->a()I

    move-result v5

    if-ne v15, v5, :cond_9

    new-instance v5, Lz1/b;

    invoke-direct {v5, v14}, Lz1/b;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, v12, Lx1/c$a;->g:Ljava/lang/Object;

    iput-object v1, v12, Lx1/c$a;->h:Ljava/lang/Object;

    iput-object v2, v12, Lx1/c$a;->i:Ljava/lang/Object;

    iput-object v3, v12, Lx1/c$a;->j:Ljava/lang/Object;

    iput-object v4, v12, Lx1/c$a;->k:Ljava/lang/Object;

    iput-object v10, v12, Lx1/c$a;->l:Ljava/lang/Object;

    iput-object v11, v12, Lx1/c$a;->m:Ljava/lang/Object;

    iput-object v5, v12, Lx1/c$a;->n:Ljava/lang/Object;

    iput v7, v12, Lx1/c$a;->q:I

    move-object/from16 p0, v5

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v12

    invoke-virtual/range {p0 .. p6}, Lz1/b;->o(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_7

    return-object v13

    :cond_7
    move-object v15, v0

    move-object v14, v1

    move-object v0, v5

    move-object/from16 v17, v13

    move-object v13, v2

    move-object v2, v12

    move-object v12, v3

    move-object/from16 v3, v17

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    :goto_2
    iput-object v15, v2, Lx1/c$a;->g:Ljava/lang/Object;

    iput-object v14, v2, Lx1/c$a;->h:Ljava/lang/Object;

    iput-object v13, v2, Lx1/c$a;->i:Ljava/lang/Object;

    iput-object v12, v2, Lx1/c$a;->j:Ljava/lang/Object;

    iput-object v10, v2, Lx1/c$a;->k:Ljava/lang/Object;

    iput-object v4, v2, Lx1/c$a;->l:Ljava/lang/Object;

    iput-object v11, v2, Lx1/c$a;->m:Ljava/lang/Object;

    iput-object v9, v2, Lx1/c$a;->n:Ljava/lang/Object;

    iput v8, v2, Lx1/c$a;->q:I

    invoke-virtual {v0, v2}, Lz1/b;->p(Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    move-object v0, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    :goto_3
    const/4 v5, 0x4

    goto/16 :goto_5

    :cond_9
    invoke-virtual/range {v16 .. v16}, Lj2/b$a;->b()I

    move-result v5

    if-ne v15, v5, :cond_c

    new-instance v5, Lz1/c;

    invoke-direct {v5, v14}, Lz1/c;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, v12, Lx1/c$a;->g:Ljava/lang/Object;

    iput-object v1, v12, Lx1/c$a;->h:Ljava/lang/Object;

    iput-object v2, v12, Lx1/c$a;->i:Ljava/lang/Object;

    iput-object v3, v12, Lx1/c$a;->j:Ljava/lang/Object;

    iput-object v4, v12, Lx1/c$a;->k:Ljava/lang/Object;

    iput-object v10, v12, Lx1/c$a;->l:Ljava/lang/Object;

    iput-object v11, v12, Lx1/c$a;->m:Ljava/lang/Object;

    iput-object v5, v12, Lx1/c$a;->n:Ljava/lang/Object;

    iput v6, v12, Lx1/c$a;->q:I

    move-object/from16 p0, v5

    move-object/from16 p1, v0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v12

    invoke-virtual/range {p0 .. p6}, Lz1/c;->o(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v13, :cond_a

    return-object v13

    :cond_a
    move-object v15, v0

    move-object v14, v1

    move-object v0, v5

    move-object/from16 v17, v13

    move-object v13, v2

    move-object v2, v12

    move-object v12, v3

    move-object/from16 v3, v17

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    :goto_4
    iput-object v15, v2, Lx1/c$a;->g:Ljava/lang/Object;

    iput-object v14, v2, Lx1/c$a;->h:Ljava/lang/Object;

    iput-object v13, v2, Lx1/c$a;->i:Ljava/lang/Object;

    iput-object v12, v2, Lx1/c$a;->j:Ljava/lang/Object;

    iput-object v10, v2, Lx1/c$a;->k:Ljava/lang/Object;

    iput-object v4, v2, Lx1/c$a;->l:Ljava/lang/Object;

    iput-object v11, v2, Lx1/c$a;->m:Ljava/lang/Object;

    iput-object v9, v2, Lx1/c$a;->n:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, v2, Lx1/c$a;->q:I

    invoke-virtual {v0, v2}, Lz1/c;->p(Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_b

    return-object v3

    :cond_b
    move-object v0, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    move-object v14, v15

    :goto_5
    move-object v1, v13

    move-object v13, v3

    move-object v3, v11

    move-object v11, v0

    move-object v0, v14

    move-object/from16 v17, v12

    move-object v12, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v10

    move-object v10, v4

    move-object/from16 v4, v18

    goto/16 :goto_1

    :cond_c
    new-instance v0, Lcom/nothing/cardparser/exception/OutOfTypeParserException;

    const-string v1, "Unexpected animator info type."

    invoke-direct {v0, v1, v9, v8, v9}, Lcom/nothing/cardparser/exception/OutOfTypeParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/i;)V

    throw v0

    :cond_d
    return-object v9
.end method
