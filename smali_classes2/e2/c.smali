.class public final Le2/c;
.super Le2/u;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le2/c$a;
    }
.end annotation


# static fields
.field public static final o:Le2/c$a;


# instance fields
.field private final m:Lx1/i;

.field private n:Lw1/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le2/c$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Le2/c;->o:Le2/c$a;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lx1/i;)V
    .locals 1

    const-string v0, "actionHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Le2/u;-><init>(Lorg/json/JSONObject;)V

    iput-object p2, p0, Le2/c;->m:Lx1/i;

    return-void
.end method

.method public static synthetic F(Le2/c;Ln5/k;)V
    .locals 0

    invoke-static {p0, p1}, Le2/c;->J(Le2/c;Ln5/k;)V

    return-void
.end method

.method public static final synthetic G(Le2/c;Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Le2/c;->L(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final H(Landroid/view/View;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.nothing.action.BATTERY_DETAIL"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.nothing.hearthstone"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "device_address"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 p2, 0x1

    const/high16 v0, 0xc000000

    invoke-static {p1, p2, p0, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getActivity(view.context, 1, it, flags)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final I(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Le2/b;

    invoke-direct {v0, p0}, Le2/b;-><init>(Le2/c;)V

    const-class v3, Ljava/util/function/Consumer;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "setClickEventConsumer"

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Le2/t;->m(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private static final J(Le2/c;Ln5/k;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Ln5/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Le2/c;->K(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private final K(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Le2/c;->H(Landroid/view/View;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object p2

    iget-object p0, p0, Le2/c;->n:Lw1/a;

    if-eqz p0, :cond_0

    sget-object v0, Lw1/b;->a:Lw1/b;

    invoke-virtual {v0, p1}, Lw1/b;->a(Landroid/view/View;)Ln5/k;

    move-result-object v0

    invoke-interface {p0, p1, p2, v0}, Lw1/a;->onCardInteraction(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    :cond_0
    return-void
.end method

.method private final L(Landroid/view/View;Lq5/d;)Ljava/lang/Object;
    .locals 39
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "setBatteryInfo"

    instance-of v4, v0, Le2/c$b;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Le2/c$b;

    iget v5, v4, Le2/c$b;->k:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le2/c$b;->k:I

    goto :goto_0

    :cond_0
    new-instance v4, Le2/c$b;

    invoke-direct {v4, v1, v0}, Le2/c$b;-><init>(Le2/c;Lq5/d;)V

    :goto_0
    iget-object v0, v4, Le2/c$b;->i:Ljava/lang/Object;

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object v5

    iget v6, v4, Le2/c$b;->k:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v1, v4, Le2/c$b;->h:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, v4, Le2/c$b;->g:Ljava/lang/Object;

    check-cast v2, Le2/c;

    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    move-object v3, v5

    move-object/from16 v38, v2

    move-object v2, v1

    move-object/from16 v1, v38

    goto/16 :goto_a

    :cond_3
    invoke-static {v0}, Ln5/m;->b(Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Le2/t;->i()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setBatteryInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "SimulatedBatteryView"

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v0, v3}, Lv1/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v11, 0x0

    invoke-static {v11, v9}, Le6/e;->i(II)Le6/d;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v9

    check-cast v12, Lo5/a0;

    invoke-virtual {v12}, Lo5/a0;->nextInt()I

    move-result v12

    invoke-static {v0, v12}, Lv1/b;->c(Lorg/json/JSONArray;I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-static {v12}, Lv1/a;->g(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v12

    if-nez v12, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string v13, "battery_address"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v13, "battery_device_type"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "battery_device_name"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v8, "battery_main_battery"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string v8, "battery_ear_status"

    invoke-virtual {v12, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "battery_case_status"

    invoke-virtual {v12, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v7, "battery_case"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string v7, "battery_left"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string v7, "battery_right"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    const-string v7, "battery_is_active"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    move-object/from16 v31, v0

    const-string v0, "battery_connected_time"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v25

    const-string v0, "battery_left_image"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v32, v9

    const-string v9, "battery_left_image_aod"

    invoke-virtual {v12, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object/from16 v33, v5

    :try_start_1
    const-string v5, "battery_right_image"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    move-object/from16 v34, v3

    :try_start_2
    const-string v3, "battery_right_image_aod"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "battery_case_image"

    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "battery_case_image_aod"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v35, v4

    :try_start_3
    const-string v4, "battery_global_image"

    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v36, v6

    :try_start_4
    const-string v6, "battery_global_image_aod"

    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    new-instance v12, Lm2/a;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v37, v10

    :try_start_5
    const-string v10, "address"

    invoke-static {v15, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "deviceType"

    invoke-static {v13, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "deviceName"

    invoke-static {v14, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "batteryStatus"

    invoke-static {v8, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "caseBatteryStatus"

    invoke-static {v11, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_5

    const/4 v7, 0x2

    const/16 v24, 0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    const/16 v24, 0x0

    :goto_2
    new-array v10, v7, [Ljava/lang/Integer;

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x0

    aput-object v0, v10, v7

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v10, v7

    invoke-static {v10}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Integer;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v0, v7

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    invoke-static {v0}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v28

    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v29

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Integer;

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/b;->c(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lo5/j;->h([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    move-object v0, v14

    move-object v14, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v0

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    invoke-direct/range {v14 .. v30}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBatteryInfo CustomBattery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v1, v37

    :try_start_6
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v3, v36

    :try_start_7
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v3, v36

    move-object/from16 v1, v37

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v10

    :goto_3
    move-object/from16 v3, v36

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    move-object/from16 v34, v3

    :goto_4
    move-object/from16 v35, v4

    goto :goto_7

    :cond_6
    :goto_5
    move-object/from16 v31, v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v33, v5

    move-object v3, v6

    move-object/from16 v32, v9

    move-object v1, v10

    move v2, v11

    :goto_6
    move-object v10, v1

    move v11, v2

    move-object v6, v3

    move-object/from16 v0, v31

    move-object/from16 v9, v32

    move-object/from16 v5, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    const/4 v7, 0x2

    const/4 v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v34, v3

    move-object/from16 v33, v5

    move-object v3, v6

    move-object/from16 v1, p0

    goto :goto_9

    :catch_7
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move-object/from16 v33, v5

    :goto_7
    move-object v3, v6

    move-object v1, v10

    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle battery info parse on error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v4, v35

    :goto_9
    iput-object v1, v4, Le2/c$b;->g:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v4, Le2/c$b;->h:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v4, Le2/c$b;->k:I

    move-object/from16 v5, v34

    invoke-virtual {v1, v2, v5, v3, v4}, Le2/t;->l(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v3, v33

    if-ne v0, v3, :cond_8

    return-object v3

    :cond_8
    :goto_a
    const/4 v0, 0x0

    iput-object v0, v4, Le2/c$b;->g:Ljava/lang/Object;

    iput-object v0, v4, Le2/c$b;->h:Ljava/lang/Object;

    const/4 v5, 0x2

    iput v5, v4, Le2/c$b;->k:I

    invoke-direct {v1, v2, v4}, Le2/c;->I(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    return-object v3

    :cond_9
    :goto_b
    sget-object v0, Ln5/t;->a:Ln5/t;

    return-object v0
.end method


# virtual methods
.method public A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;
    .locals 0
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

    iput-object p4, p0, Le2/c;->n:Lw1/a;

    invoke-super/range {p0 .. p6}, Le2/t;->A(Landroid/view/View;Landroid/view/ViewGroup;Lx1/e;Lw1/a;Lx1/m;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method public p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "setBatteryInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p4}, Le2/c;->L(Landroid/view/View;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Le2/u;->p(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method
