.class public final Lx1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1/n;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx1/t$a;
    }
.end annotation


# static fields
.field public static final c:Lx1/t$a;


# instance fields
.field private final a:Lorg/json/JSONArray;

.field private final b:Lx1/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lx1/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx1/t$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lx1/t;->c:Lx1/t$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONArray;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/t;->a:Lorg/json/JSONArray;

    iput-object p2, p0, Lx1/t;->b:Lx1/i;

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
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    instance-of v2, v1, Lx1/t$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lx1/t$b;

    iget v3, v2, Lx1/t$b;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lx1/t$b;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lx1/t$b;

    invoke-direct {v2, v0, v1}, Lx1/t$b;-><init>(Lx1/t;Lq5/d;)V

    :goto_0
    iget-object v1, v2, Lx1/t$b;->o:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v3

    iget v4, v2, Lx1/t$b;->q:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Lx1/t$b;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lx1/t$b;->m:Ljava/lang/Object;

    check-cast v4, Lorg/json/JSONArray;

    iget-object v7, v2, Lx1/t$b;->l:Ljava/lang/Object;

    check-cast v7, Lx1/m;

    iget-object v8, v2, Lx1/t$b;->k:Ljava/lang/Object;

    check-cast v8, Lw1/a;

    iget-object v9, v2, Lx1/t$b;->j:Ljava/lang/Object;

    check-cast v9, Lx1/e;

    iget-object v10, v2, Lx1/t$b;->i:Ljava/lang/Object;

    check-cast v10, Landroid/view/ViewGroup;

    iget-object v11, v2, Lx1/t$b;->h:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    iget-object v12, v2, Lx1/t$b;->g:Ljava/lang/Object;

    check-cast v12, Lx1/t;

    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v1, v11

    move-object v11, v4

    move-object v4, v8

    move-object v8, v0

    move-object v0, v12

    move-object v15, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v15

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Ln5/m;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lx1/t;->a:Lorg/json/JSONArray;

    if-eqz v1, :cond_18

    if-eqz p2, :cond_18

    const/4 v4, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-static {v4, v7}, Le6/e;->i(II)Le6/d;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v7, p6

    move-object v11, v1

    move-object v9, v2

    move-object v10, v3

    move-object v8, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    move-object v12, v8

    check-cast v12, Lo5/a0;

    invoke-virtual {v12}, Lo5/a0;->nextInt()I

    move-result v12

    invoke-static {v11, v12}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-static {v12}, Lv1/a;->g(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    goto :goto_2

    :cond_4
    move-object v12, v6

    :goto_2
    if-eqz v12, :cond_5

    const-string v13, "view_type"

    invoke-static {v12, v13}, Lv1/c;->e(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_5
    move-object v13, v6

    :goto_3
    if-eqz v13, :cond_17

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string v14, "round_corners_framelayout"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_4

    :cond_6
    new-instance v13, Le2/r;

    invoke-direct {v13, v12}, Le2/r;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_1
    const-string v14, "compound_button"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto/16 :goto_4

    :cond_7
    new-instance v13, Le2/e;

    invoke-direct {v13, v12}, Le2/e;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_2
    const-string v14, "constraint_layout"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    goto/16 :goto_4

    :cond_8
    new-instance v13, Le2/f;

    invoke-direct {v13, v12}, Le2/f;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_3
    const-string v14, "listView"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    goto/16 :goto_4

    :cond_9
    new-instance v13, Le2/i;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14}, Le2/i;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto/16 :goto_5

    :sswitch_4
    const-string v14, "progress_bar"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto/16 :goto_4

    :cond_a
    new-instance v13, Le2/n;

    invoke-direct {v13, v12}, Le2/n;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_5
    const-string v14, "aod_analog_clock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto/16 :goto_4

    :sswitch_6
    const-string v14, "lottie_animation_view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto/16 :goto_4

    :cond_b
    new-instance v13, Le2/k;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14, v7}, Le2/k;-><init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V

    goto/16 :goto_5

    :sswitch_7
    const-string v14, "battery_container_view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_4

    :cond_c
    new-instance v13, Le2/c;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14}, Le2/c;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto/16 :goto_5

    :sswitch_8
    const-string v14, "media_player_container_view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_d

    goto/16 :goto_4

    :cond_d
    new-instance v13, Le2/m;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14}, Le2/m;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto/16 :goto_5

    :sswitch_9
    const-string v14, "view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    goto/16 :goto_4

    :cond_e
    new-instance v13, Le2/t;

    invoke-direct {v13, v12}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_a
    const-string v14, "analog_clock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_f

    goto/16 :goto_4

    :cond_f
    new-instance v13, Le2/a;

    invoke-direct {v13, v12}, Le2/a;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_b
    const-string v14, "recyclerview"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto/16 :goto_4

    :cond_10
    new-instance v13, Le2/o;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14}, Le2/o;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto/16 :goto_5

    :sswitch_c
    const-string v14, "Chronometer"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11

    goto/16 :goto_4

    :cond_11
    new-instance v13, Le2/d;

    invoke-direct {v13, v12}, Le2/d;-><init>(Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :sswitch_d
    const-string v14, "textview"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto/16 :goto_4

    :sswitch_e
    const-string v14, "aod_text_clock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto/16 :goto_4

    :sswitch_f
    const-string v14, "nt_text_clock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_4

    :sswitch_10
    const-string v14, "flash_text"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_4

    :sswitch_11
    const-string v14, "remote_service_view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_12

    goto :goto_4

    :cond_12
    new-instance v13, Le2/q;

    invoke-direct {v13, v12}, Le2/q;-><init>(Lorg/json/JSONObject;)V

    goto :goto_5

    :sswitch_12
    const-string v14, "image_view"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_13

    goto :goto_4

    :cond_13
    new-instance v13, Le2/g;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14, v7}, Le2/g;-><init>(Lorg/json/JSONObject;Lx1/i;Lx1/m;)V

    goto :goto_5

    :sswitch_13
    const-string v14, "view_group"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    goto :goto_4

    :cond_14
    new-instance v13, Le2/u;

    invoke-direct {v13, v12}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    goto :goto_5

    :sswitch_14
    const-string v14, "viewPager"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15

    goto :goto_4

    :cond_15
    new-instance v13, Le2/v;

    iget-object v14, v0, Lx1/t;->b:Lx1/i;

    invoke-direct {v13, v12, v14}, Le2/v;-><init>(Lorg/json/JSONObject;Lx1/i;)V

    goto :goto_5

    :sswitch_15
    const-string v14, "text_clock"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_16

    goto :goto_4

    :cond_16
    new-instance v13, Le2/s;

    invoke-direct {v13, v12}, Le2/s;-><init>(Lorg/json/JSONObject;)V

    goto :goto_5

    :cond_17
    :goto_4
    new-instance v13, Le2/t;

    invoke-direct {v13, v12}, Le2/t;-><init>(Lorg/json/JSONObject;)V

    :goto_5
    iput-object v0, v9, Lx1/t$b;->g:Ljava/lang/Object;

    iput-object v1, v9, Lx1/t$b;->h:Ljava/lang/Object;

    iput-object v2, v9, Lx1/t$b;->i:Ljava/lang/Object;

    iput-object v3, v9, Lx1/t$b;->j:Ljava/lang/Object;

    iput-object v4, v9, Lx1/t$b;->k:Ljava/lang/Object;

    iput-object v7, v9, Lx1/t$b;->l:Ljava/lang/Object;

    iput-object v11, v9, Lx1/t$b;->m:Ljava/lang/Object;

    iput-object v8, v9, Lx1/t$b;->n:Ljava/lang/Object;

    iput v5, v9, Lx1/t$b;->q:I

    move-object/from16 p0, v13

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v7

    move-object/from16 p6, v9

    invoke-virtual/range {p0 .. p6}, Le2/t;->A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v10, :cond_3

    return-object v10

    :cond_18
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x7e16d184 -> :sswitch_15
        -0x5e9e5be2 -> :sswitch_14
        -0x5b3abb9b -> :sswitch_13
        -0x55fe14f7 -> :sswitch_12
        -0x49fc56b8 -> :sswitch_11
        -0x47367be4 -> :sswitch_10
        -0x446cc16b -> :sswitch_f
        -0x3bfaab9b -> :sswitch_e
        -0x3bc2deae -> :sswitch_d
        -0x3aac515a -> :sswitch_c
        -0x17de1c9c -> :sswitch_b
        -0x3b24c01 -> :sswitch_a
        0x373aa5 -> :sswitch_9
        0xd4ad2a6 -> :sswitch_8
        0xe429415 -> :sswitch_7
        0x1966b720 -> :sswitch_6
        0x27f803a8 -> :sswitch_5
        0x2aca8f01 -> :sswitch_4
        0x5035e063 -> :sswitch_3
        0x56d5ffcc -> :sswitch_2
        0x67f03446 -> :sswitch_1
        0x7f0514a5 -> :sswitch_0
    .end sparse-switch
.end method
