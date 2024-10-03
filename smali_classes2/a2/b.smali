.class public final La2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/b$a;
    }
.end annotation


# static fields
.field public static final k:La2/b$a;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lx1/i;

.field private final i:I

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La2/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/b$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, La2/b;->k:La2/b$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionResponsive"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La2/b;->g:Lorg/json/JSONObject;

    iput-object p2, p0, La2/b;->h:Lx1/i;

    const/4 p2, -0x1

    if-eqz p1, :cond_0

    sget-object v0, Li2/d;->a:Li2/d$a;

    invoke-virtual {v0}, Li2/d$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lv1/c;->c(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    :cond_0
    iput p2, p0, La2/b;->i:I

    if-eqz p1, :cond_1

    const-string p2, "call_method"

    invoke-static {p1, p2}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, La2/b;->j:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static/range {p0 .. p5}, La2/b;->d(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static final d(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$method"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$handler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc2/e;

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p5

    :goto_0
    invoke-direct {v0, p0}, Lc2/e;-><init>(Lorg/json/JSONObject;)V

    iget-object p0, p1, La2/b;->h:Lx1/i;

    invoke-interface {p0, p2, p3, v0, p4}, Lx1/i;->e(Landroid/view/View;Ljava/lang/String;Lc2/e;Lw1/a;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p5}, Lx1/o$a;->b(Lx1/o;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    move-object v6, p0

    move-object/from16 v0, p6

    instance-of v1, v0, La2/b$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, La2/b$b;

    iget v2, v1, La2/b$b;->i:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, La2/b$b;->i:I

    goto :goto_0

    :cond_0
    new-instance v1, La2/b$b;

    invoke-direct {v1, p0, v0}, La2/b$b;-><init>(La2/b;Lq5/d;)V

    :goto_0
    move-object v7, v1

    iget-object v0, v7, La2/b$b;->g:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v8

    iget v1, v7, La2/b$b;->i:I

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v9, :cond_1

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    iget v0, v6, La2/b;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget-object v1, v6, La2/b;->j:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v1, p1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_8

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v6, La2/b;->g:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "callback_method"

    invoke-static {v0, v2}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_1

    :cond_3
    move-object v4, v1

    :goto_1
    if-eqz v4, :cond_5

    iget-object v0, v6, La2/b;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_4

    sget-object v1, Li2/d;->a:Li2/d$a;

    invoke-virtual {v1}, Li2/d$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv1/c;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v1, v0

    :cond_4
    new-instance v13, La2/a;

    move-object v0, v13

    move-object v2, p0

    move-object v3, v10

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, La2/a;-><init>(Lorg/json/JSONObject;La2/b;Landroid/view/View;Ljava/lang/String;Lw1/a;)V

    const-class v0, Ljava/util/function/Consumer;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_5
    iget-object v0, v6, La2/b;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    sget-object v1, Li2/d;->a:Li2/d$a;

    invoke-virtual {v1}, Li2/d$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_7

    invoke-static {v0, v1}, Lv1/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v3}, Lf2/a;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lf2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v0, v6, La2/b;->j:Ljava/lang/String;

    iput v9, v7, La2/b$b;->i:I

    move-object p1, v11

    move-object/from16 p2, v12

    move-object/from16 p3, v0

    move-object/from16 p4, v10

    move-object/from16 p5, v7

    invoke-virtual/range {p0 .. p5}, La2/b;->b(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v8, :cond_8

    return-object v8

    :cond_8
    :goto_3
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method
