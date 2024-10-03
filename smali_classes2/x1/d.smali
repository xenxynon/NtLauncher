.class public final Lx1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/k;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/d$a;,
        Lx1/d$b;
    }
.end annotation


# static fields
.field public static final i:Lx1/d$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Z

.field private final d:I

.field private e:Lx1/f;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx1/n;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ln5/e;

.field private h:Lx1/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/d$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lx1/d;->i:Lx1/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;ZI)V
    .locals 1

    const-string v0, "hostContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/d;->a:Landroid/content/Context;

    iput p2, p0, Lx1/d;->b:I

    iput-boolean p4, p0, Lx1/d;->c:Z

    iput p5, p0, Lx1/d;->d:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lx1/d;->f:Ljava/util/List;

    new-instance p2, Lx1/d$c;

    invoke-direct {p2, p0}, Lx1/d$c;-><init>(Lx1/d;)V

    invoke-static {p2}, Ln5/f;->b(Ly5/a;)Ln5/e;

    move-result-object p2

    iput-object p2, p0, Lx1/d;->g:Ln5/e;

    if-eqz p3, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p3, Lx1/f;

    const-string p5, "config_info"

    invoke-static {p2, p5}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    invoke-direct {p3, p5}, Lx1/f;-><init>(Lorg/json/JSONObject;)V

    iput-object p3, p0, Lx1/d;->e:Lx1/f;

    new-instance p3, Lx1/t;

    const-string p5, "view_info"

    invoke-static {p2, p5}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p5

    invoke-direct {p0}, Lx1/d;->m()Lx1/i;

    move-result-object v0

    invoke-direct {p3, p5, v0}, Lx1/t;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx1/a;

    const-string p5, "action_info"

    invoke-static {p2, p5}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p5

    invoke-direct {p0}, Lx1/d;->m()Lx1/i;

    move-result-object v0

    invoke-direct {p3, p5, v0}, Lx1/a;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx1/c;

    const-string p5, "anim_info"

    invoke-static {p2, p5}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p5

    invoke-direct {p3, p5}, Lx1/c;-><init>(Lorg/json/JSONArray;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx1/g;

    const-string p5, "custom_info"

    invoke-static {p2, p5}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p5

    invoke-direct {p0}, Lx1/d;->m()Lx1/i;

    move-result-object v0

    invoke-direct {p3, p5, v0}, Lx1/g;-><init>(Lorg/json/JSONArray;Lx1/i;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx1/h;

    const-string p5, "extra_info"

    invoke-static {p2, p5}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    invoke-direct {p3, p5}, Lx1/h;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p3, Lx1/s;

    const-string p5, "schedule_info"

    invoke-static {p2, p5}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p5

    invoke-direct {p0}, Lx1/d;->m()Lx1/i;

    move-result-object v0

    invoke-direct {p3, p5, v0}, Lx1/s;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "simple_card_info"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p2}, Lx1/d;->j(Lorg/json/JSONObject;)Lx1/d;

    move-result-object p1

    iput-object p1, p0, Lx1/d;->h:Lx1/d;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;ZIILkotlin/jvm/internal/i;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lx1/d;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    return-void
.end method

.method public static final synthetic e(Lx1/d;Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lx1/d;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lx1/d;->l(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lx1/d;)I
    .locals 0

    iget p0, p0, Lx1/d;->d:I

    return p0
.end method

.method public static final synthetic h(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lx1/d;->n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic i(Lx1/d;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lx1/d;->s(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final j(Lorg/json/JSONObject;)Lx1/d;
    .locals 7

    new-instance v6, Lx1/d;

    iget-object v1, p0, Lx1/d;->a:Landroid/content/Context;

    iget v2, p0, Lx1/d;->b:I

    const-string p0, "simple_card_info"

    invoke-static {p1, p0}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lx1/d;-><init>(Landroid/content/Context;ILjava/lang/String;ZI)V

    return-object v6
.end method

.method private final k(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 13
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

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lx1/d$d;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/d$d;

    iget v3, v2, Lx1/d$d;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/d$d;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/d$d;

    invoke-direct {v2, p0, v1}, Lx1/d$d;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/d$d;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/d$d;->p:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lx1/d$d;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/d$d;->l:Ljava/lang/Object;

    check-cast v4, Lx1/m;

    iget-object v6, v2, Lx1/d$d;->k:Ljava/lang/Object;

    check-cast v6, Lw1/a;

    iget-object v7, v2, Lx1/d$d;->j:Ljava/lang/Object;

    check-cast v7, Lx1/e;

    iget-object v8, v2, Lx1/d$d;->i:Ljava/lang/Object;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, v2, Lx1/d$d;->h:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    iget-object v10, v2, Lx1/d$d;->g:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v1, v9

    move-object v9, v3

    move-object v3, v7

    move-object v7, v0

    move-object v0, v10

    move-object v11, v8

    move-object v8, v2

    move-object v2, v11

    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lx1/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx1/n;

    iput-object v0, v8, Lx1/d$d;->g:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$d;->h:Ljava/lang/Object;

    iput-object v2, v8, Lx1/d$d;->i:Ljava/lang/Object;

    iput-object v3, v8, Lx1/d$d;->j:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$d;->k:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$d;->l:Ljava/lang/Object;

    iput-object v7, v8, Lx1/d$d;->m:Ljava/lang/Object;

    iput v5, v8, Lx1/d$d;->p:I

    move-object p0, v10

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move-object/from16 p7, v8

    invoke-interface/range {p0 .. p7}, Lx1/n;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_4
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method private final l(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 18
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

    move-object/from16 v7, p0

    move-object/from16 v0, p6

    instance-of v1, v0, Lx1/d$e;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lx1/d$e;

    iget v2, v1, Lx1/d$e;->p:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lx1/d$e;->p:I

    goto :goto_0

    :cond_0
    new-instance v1, Lx1/d$e;

    invoke-direct {v1, v7, v0}, Lx1/d$e;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Lx1/d$e;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v9

    iget v1, v8, Lx1/d$e;->p:I

    const/4 v10, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    if-ne v1, v10, :cond_1

    iget-object v1, v8, Lx1/d$e;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v2, v8, Lx1/d$e;->l:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, v8, Lx1/d$e;->k:Ljava/lang/Object;

    check-cast v3, Lx1/m;

    iget-object v4, v8, Lx1/d$e;->j:Ljava/lang/Object;

    check-cast v4, Lw1/a;

    iget-object v5, v8, Lx1/d$e;->i:Ljava/lang/Object;

    check-cast v5, Lx1/e;

    iget-object v6, v8, Lx1/d$e;->h:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v8, Lx1/d$e;->g:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v0, v2

    move-object v15, v3

    move-object v14, v4

    move-object v13, v5

    move-object v12, v6

    move-object v11, v7

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v8, Lx1/d$e;->l:Ljava/lang/Object;

    check-cast v1, Lx1/m;

    iget-object v2, v8, Lx1/d$e;->k:Ljava/lang/Object;

    check-cast v2, Lw1/a;

    iget-object v3, v8, Lx1/d$e;->j:Ljava/lang/Object;

    check-cast v3, Lx1/e;

    iget-object v4, v8, Lx1/d$e;->i:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewGroup;

    iget-object v5, v8, Lx1/d$e;->h:Ljava/lang/Object;

    check-cast v5, Landroid/content/Context;

    iget-object v6, v8, Lx1/d$e;->g:Ljava/lang/Object;

    check-cast v6, Lx1/d;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v15, v1

    move-object v14, v2

    move-object v13, v3

    move-object v12, v4

    move-object v11, v5

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    iput-object v7, v8, Lx1/d$e;->g:Ljava/lang/Object;

    move-object/from16 v11, p1

    iput-object v11, v8, Lx1/d$e;->h:Ljava/lang/Object;

    move-object/from16 v12, p2

    iput-object v12, v8, Lx1/d$e;->i:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v8, Lx1/d$e;->j:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v8, Lx1/d$e;->k:Ljava/lang/Object;

    move-object/from16 v15, p5

    iput-object v15, v8, Lx1/d$e;->l:Ljava/lang/Object;

    iput v2, v8, Lx1/d$e;->p:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lx1/d;->n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4

    return-object v9

    :cond_4
    move-object v6, v7

    :goto_1
    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v1, v6, Lx1/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object/from16 v17, v9

    move-object v9, v8

    move-object/from16 v8, v17

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx1/n;

    iput-object v11, v9, Lx1/d$e;->g:Ljava/lang/Object;

    iput-object v12, v9, Lx1/d$e;->h:Ljava/lang/Object;

    iput-object v13, v9, Lx1/d$e;->i:Ljava/lang/Object;

    iput-object v14, v9, Lx1/d$e;->j:Ljava/lang/Object;

    iput-object v15, v9, Lx1/d$e;->k:Ljava/lang/Object;

    iput-object v0, v9, Lx1/d$e;->l:Ljava/lang/Object;

    iput-object v1, v9, Lx1/d$e;->m:Ljava/lang/Object;

    iput v10, v9, Lx1/d$e;->p:I

    move-object v3, v11

    move-object v4, v0

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v10, v8

    move-object v8, v15

    move-object/from16 v16, v9

    invoke-interface/range {v2 .. v9}, Lx1/n;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_5

    return-object v10

    :cond_5
    move-object v8, v10

    move-object/from16 v9, v16

    :goto_3
    const/4 v10, 0x2

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method private final m()Lx1/i;
    .locals 0

    iget-object p0, p0, Lx1/d;->g:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx1/i;

    return-object p0
.end method

.method private final n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 12
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

    move-object v0, p0

    move-object/from16 v1, p6

    instance-of v2, v1, Lx1/d$f;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/d$f;

    iget v3, v2, Lx1/d$f;->i:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/d$f;->i:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/d$f;

    invoke-direct {v2, p0, v1}, Lx1/d$f;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    move-object v10, v2

    iget-object v1, v10, Lx1/d$f;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v2

    iget v3, v10, Lx1/d$f;->i:I

    const/4 v11, 0x0

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object v1, Ln5/l;->h:Ln5/l$a;

    iget-object v0, v0, Lx1/d;->e:Lx1/f;

    if-nez v0, :cond_3

    const-string v0, "configParser"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v3, v11

    goto :goto_1

    :cond_3
    move-object v3, v0

    :goto_1
    const/4 v5, 0x0

    iput v4, v10, Lx1/d$f;->i:I

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v10}, Lx1/f;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    return-object v2

    :cond_4
    :goto_2
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    sget-object v1, Ln5/l;->h:Ln5/l$a;

    invoke-static {v0}, Ln5/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln5/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln5/l;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "CardInfoParser"

    const-string v3, "Inflate card view error."

    invoke-static {v2, v3, v1}, Lh2/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    invoke-static {v0}, Ln5/l;->f(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move-object v11, v0

    :goto_4
    return-object v11
.end method

.method private final s(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
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

    iget v0, p0, Lx1/d;->d:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lx1/d;->h:Lx1/d;

    if-eqz v2, :cond_1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v2 .. v8}, Lx1/d;->l(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CardInfoParser"

    const-string p1, "performParseSimpleCard method should only run for the simple style card."

    invoke-static {p0, p1}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx1/d;->e:Lx1/f;

    if-nez p0, :cond_0

    const-string p0, "configParser"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lx1/f;->c()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lx1/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lx1/d;->b:I

    return p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lx1/d;->e:Lx1/f;

    if-nez p0, :cond_0

    const-string p0, "configParser"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lx1/f;->d()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final o(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 13
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

    move-object v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lx1/d$g;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/d$g;

    iget v3, v2, Lx1/d$g;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/d$g;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/d$g;

    invoke-direct {v2, p0, v1}, Lx1/d$g;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/d$g;->n:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/d$g;->p:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lx1/d$g;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/d$g;->l:Ljava/lang/Object;

    check-cast v4, Lx1/m;

    iget-object v6, v2, Lx1/d$g;->k:Ljava/lang/Object;

    check-cast v6, Lw1/a;

    iget-object v7, v2, Lx1/d$g;->j:Ljava/lang/Object;

    check-cast v7, Lx1/e;

    iget-object v8, v2, Lx1/d$g;->i:Ljava/lang/Object;

    check-cast v8, Landroid/view/ViewGroup;

    iget-object v9, v2, Lx1/d$g;->h:Ljava/lang/Object;

    check-cast v9, Landroid/view/View;

    iget-object v10, v2, Lx1/d$g;->g:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v1, v9

    move-object v9, v3

    move-object v3, v7

    move-object v7, v0

    move-object v0, v10

    move-object v11, v8

    move-object v8, v2

    move-object v2, v11

    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v0, v0, Lx1/d;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v2

    move-object v9, v3

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lx1/n;

    iput-object v0, v8, Lx1/d$g;->g:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$g;->h:Ljava/lang/Object;

    iput-object v2, v8, Lx1/d$g;->i:Ljava/lang/Object;

    iput-object v3, v8, Lx1/d$g;->j:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$g;->k:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$g;->l:Ljava/lang/Object;

    iput-object v7, v8, Lx1/d$g;->m:Ljava/lang/Object;

    iput v5, v8, Lx1/d$g;->p:I

    move-object p0, v10

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v3

    move-object/from16 p5, v4

    move-object/from16 p6, v6

    move-object/from16 p7, v8

    invoke-interface/range {p0 .. p7}, Lx1/n;->b(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_4
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method

.method public final p(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;)Ln5/k;
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            ")",
            "Ln5/k<",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hostView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCollector"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lx1/d$h;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Lx1/d$h;-><init>(Lx1/d;Lx1/m;Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lq5/d;)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1, p0}, Li6/h;->d(Lq5/g;Ly5/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln5/k;

    return-object p0
.end method

.method public final q(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Ly5/p;Lq5/d;)Ljava/lang/Object;
    .locals 17
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Lx1/e;",
            "Lw1/a;",
            "Lx1/m;",
            "Ly5/p<",
            "-",
            "Lx1/d$b;",
            "-",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p7

    instance-of v1, v0, Lx1/d$i;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lx1/d$i;

    iget v2, v1, Lx1/d$i;->t:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lx1/d$i;->t:I

    goto :goto_0

    :cond_0
    new-instance v1, Lx1/d$i;

    invoke-direct {v1, v7, v0}, Lx1/d$i;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    move-object v8, v1

    iget-object v0, v8, Lx1/d$i;->r:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v9

    iget v1, v8, Lx1/d$i;->t:I

    const/4 v10, 0x2

    const/4 v11, 0x1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v1, v8, Lx1/d$i;->p:J

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :pswitch_1
    iget v1, v8, Lx1/d$i;->q:I

    iget-wide v2, v8, Lx1/d$i;->p:J

    iget-object v4, v8, Lx1/d$i;->j:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, v8, Lx1/d$i;->i:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v8, Lx1/d$i;->h:Ljava/lang/Object;

    check-cast v6, Ly5/p;

    iget-object v7, v8, Lx1/d$i;->g:Ljava/lang/Object;

    check-cast v7, Lx1/m;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_2
    iget v1, v8, Lx1/d$i;->q:I

    iget-wide v2, v8, Lx1/d$i;->p:J

    iget-object v4, v8, Lx1/d$i;->o:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, v8, Lx1/d$i;->n:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget-object v6, v8, Lx1/d$i;->m:Ljava/lang/Object;

    check-cast v6, Ly5/p;

    iget-object v7, v8, Lx1/d$i;->l:Ljava/lang/Object;

    check-cast v7, Lx1/m;

    iget-object v11, v8, Lx1/d$i;->k:Ljava/lang/Object;

    check-cast v11, Lw1/a;

    iget-object v13, v8, Lx1/d$i;->j:Ljava/lang/Object;

    check-cast v13, Lx1/e;

    iget-object v14, v8, Lx1/d$i;->i:Ljava/lang/Object;

    check-cast v14, Landroid/view/ViewGroup;

    iget-object v15, v8, Lx1/d$i;->h:Ljava/lang/Object;

    check-cast v15, Landroid/content/Context;

    iget-object v12, v8, Lx1/d$i;->g:Ljava/lang/Object;

    check-cast v12, Lx1/d;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v0, v13

    move-object v13, v14

    move-object v14, v15

    goto/16 :goto_6

    :pswitch_3
    iget-wide v1, v8, Lx1/d$i;->p:J

    iget-object v3, v8, Lx1/d$i;->o:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, v8, Lx1/d$i;->n:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    iget-object v5, v8, Lx1/d$i;->m:Ljava/lang/Object;

    check-cast v5, Ly5/p;

    iget-object v6, v8, Lx1/d$i;->l:Ljava/lang/Object;

    check-cast v6, Lx1/m;

    iget-object v7, v8, Lx1/d$i;->k:Ljava/lang/Object;

    check-cast v7, Lw1/a;

    iget-object v12, v8, Lx1/d$i;->j:Ljava/lang/Object;

    check-cast v12, Lx1/e;

    iget-object v13, v8, Lx1/d$i;->i:Ljava/lang/Object;

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v14, v8, Lx1/d$i;->h:Ljava/lang/Object;

    check-cast v14, Landroid/content/Context;

    iget-object v15, v8, Lx1/d$i;->g:Ljava/lang/Object;

    check-cast v15, Lx1/d;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v0, v12

    move-object v12, v15

    goto/16 :goto_5

    :pswitch_4
    iget-wide v1, v8, Lx1/d$i;->p:J

    iget-object v3, v8, Lx1/d$i;->n:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v4, v8, Lx1/d$i;->m:Ljava/lang/Object;

    check-cast v4, Ly5/p;

    iget-object v5, v8, Lx1/d$i;->l:Ljava/lang/Object;

    check-cast v5, Lx1/m;

    iget-object v6, v8, Lx1/d$i;->k:Ljava/lang/Object;

    check-cast v6, Lw1/a;

    iget-object v7, v8, Lx1/d$i;->j:Ljava/lang/Object;

    check-cast v7, Lx1/e;

    iget-object v12, v8, Lx1/d$i;->i:Ljava/lang/Object;

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v13, v8, Lx1/d$i;->h:Ljava/lang/Object;

    check-cast v13, Landroid/content/Context;

    iget-object v14, v8, Lx1/d$i;->g:Ljava/lang/Object;

    check-cast v14, Lx1/d;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-wide v1, v8, Lx1/d$i;->p:J

    iget-object v3, v8, Lx1/d$i;->m:Ljava/lang/Object;

    check-cast v3, Ly5/p;

    iget-object v4, v8, Lx1/d$i;->l:Ljava/lang/Object;

    check-cast v4, Lx1/m;

    iget-object v5, v8, Lx1/d$i;->k:Ljava/lang/Object;

    check-cast v5, Lw1/a;

    iget-object v6, v8, Lx1/d$i;->j:Ljava/lang/Object;

    check-cast v6, Lx1/e;

    iget-object v7, v8, Lx1/d$i;->i:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v12, v8, Lx1/d$i;->h:Ljava/lang/Object;

    check-cast v12, Landroid/content/Context;

    iget-object v13, v8, Lx1/d$i;->g:Ljava/lang/Object;

    check-cast v13, Lx1/d;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v15, v7

    goto :goto_2

    :pswitch_6
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    iget v0, v7, Lx1/d;->d:I

    if-eq v0, v11, :cond_1

    const-string v0, "CardInfoParser"

    const-string v1, "performParseAsync method should only run for the normal style card."

    invoke-static {v0, v1}, Lh2/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iput-object v7, v8, Lx1/d$i;->g:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v8, Lx1/d$i;->h:Ljava/lang/Object;

    move-object/from16 v15, p2

    iput-object v15, v8, Lx1/d$i;->i:Ljava/lang/Object;

    move-object/from16 v6, p3

    iput-object v6, v8, Lx1/d$i;->j:Ljava/lang/Object;

    move-object/from16 v5, p4

    iput-object v5, v8, Lx1/d$i;->k:Ljava/lang/Object;

    move-object/from16 v4, p5

    iput-object v4, v8, Lx1/d$i;->l:Ljava/lang/Object;

    move-object/from16 v3, p6

    iput-object v3, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-wide v12, v8, Lx1/d$i;->p:J

    iput v11, v8, Lx1/d$i;->t:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lx1/d;->n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_2

    return-object v9

    :cond_2
    move-object/from16 v6, p3

    move-object/from16 v5, p4

    move-object/from16 v4, p5

    move-object/from16 v3, p6

    move-wide v1, v12

    move-object v12, v14

    move-object v13, v7

    :goto_2
    check-cast v0, Landroid/view/View;

    iget-object v7, v13, Lx1/d;->h:Lx1/d;

    if-eqz v7, :cond_4

    iput-object v13, v8, Lx1/d$i;->g:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->h:Ljava/lang/Object;

    iput-object v15, v8, Lx1/d$i;->i:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$i;->j:Ljava/lang/Object;

    iput-object v5, v8, Lx1/d$i;->k:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$i;->l:Ljava/lang/Object;

    iput-object v3, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-object v0, v8, Lx1/d$i;->n:Ljava/lang/Object;

    iput-wide v1, v8, Lx1/d$i;->p:J

    iput v10, v8, Lx1/d$i;->t:I

    move-object/from16 p0, v7

    move-object/from16 p1, v12

    move-object/from16 p2, v15

    move-object/from16 p3, v6

    move-object/from16 p4, v5

    move-object/from16 p5, v4

    move-object/from16 p6, v8

    invoke-direct/range {p0 .. p6}, Lx1/d;->n(Landroid/content/Context;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v13

    move-object v13, v12

    move-object v12, v15

    move-object/from16 v16, v3

    move-object v3, v0

    move-object v0, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, v16

    :goto_3
    check-cast v0, Landroid/view/View;

    move-object v15, v12

    move-object v12, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v16, v14

    move-object v14, v13

    move-object/from16 v13, v16

    goto :goto_4

    :cond_4
    move-object v7, v5

    move-object v14, v12

    move-object v5, v3

    move-object v12, v6

    move-object v6, v4

    move-object v4, v0

    const/4 v0, 0x0

    :goto_4
    new-instance v3, Lx1/d$b$a;

    invoke-direct {v3, v4, v0}, Lx1/d$b$a;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v13, v8, Lx1/d$i;->g:Ljava/lang/Object;

    iput-object v14, v8, Lx1/d$i;->h:Ljava/lang/Object;

    iput-object v15, v8, Lx1/d$i;->i:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->j:Ljava/lang/Object;

    iput-object v7, v8, Lx1/d$i;->k:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$i;->l:Ljava/lang/Object;

    iput-object v5, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$i;->n:Ljava/lang/Object;

    iput-object v0, v8, Lx1/d$i;->o:Ljava/lang/Object;

    iput-wide v1, v8, Lx1/d$i;->p:J

    const/4 v10, 0x3

    iput v10, v8, Lx1/d$i;->t:I

    invoke-interface {v5, v3, v8}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_5

    return-object v9

    :cond_5
    move-object v3, v0

    move-object v0, v12

    move-object v12, v13

    move-object v13, v15

    :goto_5
    invoke-interface {v6}, Lx1/m;->c()I

    move-result v10

    invoke-interface {v6, v11}, Lx1/m;->a(I)V

    iput-object v12, v8, Lx1/d$i;->g:Ljava/lang/Object;

    iput-object v14, v8, Lx1/d$i;->h:Ljava/lang/Object;

    iput-object v13, v8, Lx1/d$i;->i:Ljava/lang/Object;

    iput-object v0, v8, Lx1/d$i;->j:Ljava/lang/Object;

    iput-object v7, v8, Lx1/d$i;->k:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$i;->l:Ljava/lang/Object;

    iput-object v5, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$i;->n:Ljava/lang/Object;

    iput-object v3, v8, Lx1/d$i;->o:Ljava/lang/Object;

    iput-wide v1, v8, Lx1/d$i;->p:J

    iput v10, v8, Lx1/d$i;->q:I

    const/4 v11, 0x4

    iput v11, v8, Lx1/d$i;->t:I

    move-object/from16 p0, v12

    move-object/from16 p1, v14

    move-object/from16 p2, v4

    move-object/from16 p3, v13

    move-object/from16 p4, v0

    move-object/from16 p5, v7

    move-object/from16 p6, v6

    move-object/from16 p7, v8

    invoke-direct/range {p0 .. p7}, Lx1/d;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v9, :cond_6

    return-object v9

    :cond_6
    move-object v11, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-wide v2, v1

    move v1, v10

    const/4 v10, 0x2

    :goto_6
    invoke-interface {v7, v10}, Lx1/m;->a(I)V

    iget-object v10, v12, Lx1/d;->h:Lx1/d;

    if-eqz v10, :cond_7

    iput-object v7, v8, Lx1/d$i;->g:Ljava/lang/Object;

    iput-object v6, v8, Lx1/d$i;->h:Ljava/lang/Object;

    iput-object v5, v8, Lx1/d$i;->i:Ljava/lang/Object;

    iput-object v4, v8, Lx1/d$i;->j:Ljava/lang/Object;

    const/4 v12, 0x0

    iput-object v12, v8, Lx1/d$i;->k:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->l:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->n:Ljava/lang/Object;

    iput-object v12, v8, Lx1/d$i;->o:Ljava/lang/Object;

    iput-wide v2, v8, Lx1/d$i;->p:J

    iput v1, v8, Lx1/d$i;->q:I

    const/4 v12, 0x5

    iput v12, v8, Lx1/d$i;->t:I

    move-object/from16 p0, v10

    move-object/from16 p1, v14

    move-object/from16 p2, v4

    move-object/from16 p3, v13

    move-object/from16 p4, v0

    move-object/from16 p5, v11

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    invoke-direct/range {p0 .. p7}, Lx1/d;->k(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_7

    return-object v9

    :cond_7
    :goto_7
    invoke-interface {v7, v1}, Lx1/m;->a(I)V

    new-instance v0, Lx1/d$b$b;

    invoke-direct {v0, v5, v4}, Lx1/d$b$b;-><init>(Landroid/view/View;Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, v8, Lx1/d$i;->g:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->h:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->i:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->j:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->k:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->l:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->m:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->n:Ljava/lang/Object;

    iput-object v1, v8, Lx1/d$i;->o:Ljava/lang/Object;

    iput-wide v2, v8, Lx1/d$i;->p:J

    const/4 v1, 0x6

    iput v1, v8, Lx1/d$i;->t:I

    invoke-interface {v6, v0, v8}, Ly5/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_8

    return-object v9

    :cond_8
    move-wide v1, v2

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    sget-object v0, Lh2/a;->a:Lh2/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform async parse cost time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lh2/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    instance-of v3, v2, Lx1/d$j;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lx1/d$j;

    iget v4, v3, Lx1/d$j;->i:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lx1/d$j;->i:I

    goto :goto_0

    :cond_0
    new-instance v3, Lx1/d$j;

    invoke-direct {v3, p0, v2}, Lx1/d$j;-><init>(Lx1/d;Lq5/d;)V

    :goto_0
    move-object v12, v3

    iget-object v2, v12, Lx1/d$j;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v12, Lx1/d$j;->i:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v2}, Ln5/m;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Ln5/m;->b(Ljava/lang/Object;)V

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    const/4 v4, 0x2

    const-string v6, "simple_card_info"

    const/4 v7, 0x0

    invoke-static {p1, v6, v2, v4, v7}, Lh6/l;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lx1/d;->j(Lorg/json/JSONObject;)Lx1/d;

    move-result-object v7

    :cond_3
    new-instance v4, Lx1/r;

    invoke-direct {p0}, Lx1/d;->m()Lx1/i;

    move-result-object v0

    invoke-direct {v4, p1, v0, v7}, Lx1/r;-><init>(Ljava/lang/String;Lx1/i;Lx1/d;)V

    iput v5, v12, Lx1/d$j;->i:I

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v4 .. v12}, Lx1/r;->a(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
