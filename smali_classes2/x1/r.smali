.class public final Lx1/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# instance fields
.field private final a:Lx1/d;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx1/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx1/i;Lx1/d;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lx1/r;->a:Lx1/d;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lx1/r;->b:Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lx1/t;

    const-string v0, "view_info"

    invoke-static {p0, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lx1/t;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lx1/a;

    const-string v0, "action_info"

    invoke-static {p0, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lx1/a;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lx1/c;

    const-string v0, "anim_info"

    invoke-static {p0, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p1, v0}, Lx1/c;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lx1/g;

    const-string v0, "custom_info"

    invoke-static {p0, v0}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lx1/g;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lx1/h;

    const-string v0, "extra_info"

    invoke-static {p0, v0}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p1, v0}, Lx1/h;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lx1/s;

    const-string v0, "schedule_info"

    invoke-static {p0, v0}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Lx1/s;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
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

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    instance-of v2, v1, Lx1/r$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/r$a;

    iget v3, v2, Lx1/r$a;->s:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/r$a;->s:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/r$a;

    invoke-direct {v2, v0, v1}, Lx1/r$a;-><init>(Lx1/r;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/r$a;->q:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/r$a;->s:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget v0, v2, Lx1/r$a;->p:I

    iget-object v2, v2, Lx1/r$a;->g:Ljava/lang/Object;

    check-cast v2, Lx1/m;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v2, Lx1/r$a;->p:I

    iget-object v4, v2, Lx1/r$a;->o:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v7, v2, Lx1/r$a;->n:Ljava/lang/Object;

    check-cast v7, Lx1/m;

    iget-object v8, v2, Lx1/r$a;->m:Ljava/lang/Object;

    check-cast v8, Lw1/a;

    iget-object v9, v2, Lx1/r$a;->l:Ljava/lang/Object;

    check-cast v9, Lx1/e;

    iget-object v10, v2, Lx1/r$a;->k:Ljava/lang/Object;

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v2, Lx1/r$a;->j:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    iget-object v12, v2, Lx1/r$a;->i:Ljava/lang/Object;

    check-cast v12, Landroid/view/View;

    iget-object v13, v2, Lx1/r$a;->h:Ljava/lang/Object;

    check-cast v13, Landroid/content/Context;

    iget-object v14, v2, Lx1/r$a;->g:Ljava/lang/Object;

    check-cast v14, Lx1/r;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v1, v13

    move-object v13, v4

    move-object v4, v10

    move-object v10, v2

    move-object v2, v12

    move-object v12, v3

    move-object v3, v11

    move v11, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v7

    move-object v7, v15

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-interface/range {p7 .. p7}, Lx1/m;->c()I

    move-result v1

    move-object/from16 v4, p7

    invoke-interface {v4, v6}, Lx1/m;->a(I)V

    iget-object v7, v0, Lx1/r;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object/from16 v8, p6

    move v11, v1

    move-object v10, v2

    move-object v12, v3

    move-object v9, v4

    move-object v13, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    :cond_4
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lx1/n;

    iput-object v0, v10, Lx1/r$a;->g:Ljava/lang/Object;

    iput-object v1, v10, Lx1/r$a;->h:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->i:Ljava/lang/Object;

    iput-object v3, v10, Lx1/r$a;->j:Ljava/lang/Object;

    iput-object v4, v10, Lx1/r$a;->k:Ljava/lang/Object;

    iput-object v7, v10, Lx1/r$a;->l:Ljava/lang/Object;

    iput-object v8, v10, Lx1/r$a;->m:Ljava/lang/Object;

    iput-object v9, v10, Lx1/r$a;->n:Ljava/lang/Object;

    iput-object v13, v10, Lx1/r$a;->o:Ljava/lang/Object;

    iput v11, v10, Lx1/r$a;->p:I

    iput v6, v10, Lx1/r$a;->s:I

    move-object/from16 p0, v14

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    invoke-interface/range {p0 .. p7}, Lx1/n;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v12, :cond_4

    return-object v12

    :cond_5
    invoke-interface {v9, v5}, Lx1/m;->a(I)V

    iget-object v0, v0, Lx1/r;->a:Lx1/d;

    if-eqz v0, :cond_7

    iput-object v9, v10, Lx1/r$a;->g:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v10, Lx1/r$a;->h:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->i:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->j:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->k:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->l:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->m:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->n:Ljava/lang/Object;

    iput-object v2, v10, Lx1/r$a;->o:Ljava/lang/Object;

    iput v11, v10, Lx1/r$a;->p:I

    iput v5, v10, Lx1/r$a;->s:I

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v9

    move-object/from16 p7, v10

    invoke-virtual/range {p0 .. p7}, Lx1/d;->o(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_6

    return-object v12

    :cond_6
    move-object v2, v9

    move v0, v11

    :goto_2
    move v11, v0

    move-object v9, v2

    :cond_7
    invoke-interface {v9, v11}, Lx1/m;->a(I)V

    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
