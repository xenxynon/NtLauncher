.class public final Le2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# instance fields
.field private final a:Lorg/json/JSONObject;

.field private final b:Lx1/i;

.field private c:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "infoJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/h;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Le2/h;->b:Lx1/i;

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "layout_id"

    invoke-static {p1, v0, p2}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, Le2/h;->c:I

    return-void
.end method

.method private final e(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lx1/a;

    iget-object v1, p0, Le2/h;->a:Lorg/json/JSONObject;

    const-string v2, "action_info"

    invoke-static {v1, v2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object p0, p0, Le2/h;->b:Lx1/i;

    invoke-direct {v0, v1, p0}, Lx1/a;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lx1/a;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final f(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lx1/c;

    iget-object p0, p0, Le2/h;->a:Lorg/json/JSONObject;

    const-string v1, "anim_info"

    invoke-static {p0, v1}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-direct {v0, p0}, Lx1/c;-><init>(Lorg/json/JSONArray;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lx1/c;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final g(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lx1/g;

    iget-object v1, p0, Le2/h;->a:Lorg/json/JSONObject;

    const-string v2, "custom_info"

    invoke-static {v1, v2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object p0, p0, Le2/h;->b:Lx1/i;

    invoke-direct {v0, v1, p0}, Lx1/g;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lx1/g;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final h(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 8
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

    new-instance v0, Lx1/t;

    iget-object v1, p0, Le2/h;->a:Lorg/json/JSONObject;

    const-string v2, "view_info"

    invoke-static {v1, v2}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iget-object p0, p0, Le2/h;->b:Lx1/i;

    invoke-direct {v0, v1, p0}, Lx1/t;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lx1/t;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 16
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

    move-object/from16 v8, p0

    move-object/from16 v0, p7

    instance-of v1, v0, Le2/h$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le2/h$a;

    iget v2, v1, Le2/h$a;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le2/h$a;->p:I

    goto :goto_0

    :cond_0
    new-instance v1, Le2/h$a;

    invoke-direct {v1, v8, v0}, Le2/h$a;-><init>(Le2/h;Lq5/d;)V

    :goto_0
    move-object v9, v1

    iget-object v0, v9, Le2/h$a;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v10

    iget v1, v9, Le2/h$a;->p:I

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    if-eq v1, v13, :cond_3

    if-eq v1, v12, :cond_2

    if-ne v1, v11, :cond_1

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v9, Le2/h$a;->m:Ljava/lang/Object;

    check-cast v1, Lx1/m;

    iget-object v2, v9, Le2/h$a;->l:Ljava/lang/Object;

    check-cast v2, Lw1/a;

    iget-object v3, v9, Le2/h$a;->k:Ljava/lang/Object;

    check-cast v3, Lx1/e;

    iget-object v4, v9, Le2/h$a;->j:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v9, Le2/h$a;->i:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v9, Le2/h$a;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v7, v9, Le2/h$a;->g:Ljava/lang/Object;

    check-cast v7, Le2/h;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object v1, v9, Le2/h$a;->m:Ljava/lang/Object;

    check-cast v1, Lx1/m;

    iget-object v2, v9, Le2/h$a;->l:Ljava/lang/Object;

    check-cast v2, Lw1/a;

    iget-object v3, v9, Le2/h$a;->k:Ljava/lang/Object;

    check-cast v3, Lx1/e;

    iget-object v4, v9, Le2/h$a;->j:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v9, Le2/h$a;->i:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v9, Le2/h$a;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v7, v9, Le2/h$a;->g:Ljava/lang/Object;

    check-cast v7, Le2/h;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object v1, v9, Le2/h$a;->m:Ljava/lang/Object;

    check-cast v1, Lx1/m;

    iget-object v2, v9, Le2/h$a;->l:Ljava/lang/Object;

    check-cast v2, Lw1/a;

    iget-object v3, v9, Le2/h$a;->k:Ljava/lang/Object;

    check-cast v3, Lx1/e;

    iget-object v4, v9, Le2/h$a;->j:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v9, Le2/h$a;->i:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v9, Le2/h$a;->h:Ljava/lang/Object;

    check-cast v6, Landroid/content/Context;

    iget-object v7, v9, Le2/h$a;->g:Ljava/lang/Object;

    check-cast v7, Le2/h;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v15, v5

    move-object v14, v6

    move-object v8, v7

    goto :goto_1

    :cond_5
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    iput-object v8, v9, Le2/h$a;->g:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v9, Le2/h$a;->h:Ljava/lang/Object;

    move-object/from16 v15, p2

    iput-object v15, v9, Le2/h$a;->i:Ljava/lang/Object;

    move-object/from16 v7, p3

    iput-object v7, v9, Le2/h$a;->j:Ljava/lang/Object;

    move-object/from16 v6, p4

    iput-object v6, v9, Le2/h$a;->k:Ljava/lang/Object;

    move-object/from16 v5, p5

    iput-object v5, v9, Le2/h$a;->l:Ljava/lang/Object;

    move-object/from16 v4, p6

    iput-object v4, v9, Le2/h$a;->m:Ljava/lang/Object;

    iput v2, v9, Le2/h$a;->p:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Le2/h;->h(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    return-object v10

    :cond_6
    move-object/from16 v4, p3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    :goto_1
    iput-object v8, v9, Le2/h$a;->g:Ljava/lang/Object;

    iput-object v14, v9, Le2/h$a;->h:Ljava/lang/Object;

    iput-object v15, v9, Le2/h$a;->i:Ljava/lang/Object;

    iput-object v4, v9, Le2/h$a;->j:Ljava/lang/Object;

    iput-object v3, v9, Le2/h$a;->k:Ljava/lang/Object;

    iput-object v2, v9, Le2/h$a;->l:Ljava/lang/Object;

    iput-object v1, v9, Le2/h$a;->m:Ljava/lang/Object;

    iput v13, v9, Le2/h$a;->p:I

    move-object/from16 p0, v8

    move-object/from16 p1, v14

    move-object/from16 p2, v15

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-object/from16 p6, v1

    move-object/from16 p7, v9

    invoke-direct/range {p0 .. p7}, Le2/h;->e(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_7

    return-object v10

    :cond_7
    move-object v7, v8

    move-object v6, v14

    move-object v5, v15

    :goto_2
    iput-object v7, v9, Le2/h$a;->g:Ljava/lang/Object;

    iput-object v6, v9, Le2/h$a;->h:Ljava/lang/Object;

    iput-object v5, v9, Le2/h$a;->i:Ljava/lang/Object;

    iput-object v4, v9, Le2/h$a;->j:Ljava/lang/Object;

    iput-object v3, v9, Le2/h$a;->k:Ljava/lang/Object;

    iput-object v2, v9, Le2/h$a;->l:Ljava/lang/Object;

    iput-object v1, v9, Le2/h$a;->m:Ljava/lang/Object;

    iput v12, v9, Le2/h$a;->p:I

    move-object/from16 p0, v7

    move-object/from16 p1, v6

    move-object/from16 p2, v5

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-object/from16 p6, v1

    move-object/from16 p7, v9

    invoke-direct/range {p0 .. p7}, Le2/h;->f(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_8

    return-object v10

    :cond_8
    :goto_3
    const/4 v0, 0x0

    iput-object v0, v9, Le2/h$a;->g:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->h:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->i:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->j:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->k:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->l:Ljava/lang/Object;

    iput-object v0, v9, Le2/h$a;->m:Ljava/lang/Object;

    iput v11, v9, Le2/h$a;->p:I

    move-object/from16 p0, v7

    move-object/from16 p1, v6

    move-object/from16 p2, v5

    move-object/from16 p3, v4

    move-object/from16 p4, v3

    move-object/from16 p5, v2

    move-object/from16 p6, v1

    move-object/from16 p7, v9

    invoke-direct/range {p0 .. p7}, Le2/h;->g(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_9

    return-object v10

    :cond_9
    :goto_4
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Le2/h;->c:I

    return p0
.end method

.method public final c(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootParent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p0, p0, Le2/h;->c:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "layoutInflater.inflate(l\u2026outId, rootParent, false)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    instance-of v0, p6, Le2/h$b;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le2/h$b;

    iget v1, v0, Le2/h$b;->j:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le2/h$b;->j:I

    goto :goto_0

    :cond_0
    new-instance v0, Le2/h$b;

    invoke-direct {v0, p0, p6}, Le2/h$b;-><init>(Le2/h;Lq5/d;)V

    :goto_0
    move-object v8, v0

    iget-object p6, v8, Le2/h$b;->h:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v0

    iget v1, v8, Le2/h$b;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    iget-object p0, v8, Le2/h$b;->g:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {p6}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p6}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    invoke-virtual {p6, p1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p6

    iget v1, p0, Le2/h;->c:I

    const/4 v3, 0x0

    invoke-virtual {p6, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p6

    const-string v1, "this"

    invoke-static {p6, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p6, v8, Le2/h$b;->g:Ljava/lang/Object;

    iput v2, v8, Le2/h$b;->j:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v8}, Le2/h;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, p6

    :goto_1
    const-string p1, "layoutInflater.inflate(l\u2026PlayController)\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
