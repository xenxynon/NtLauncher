.class public final Lcom/nothing/cardwidget/battery/BatteryStateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

.field private static batteryStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;",
            ">;"
        }
    .end annotation
.end field

.field private static caseBatteryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static currentHandleBatteryInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lm2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-direct {v0}, Lcom/nothing/cardwidget/battery/BatteryStateManager;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->caseBatteryInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->currentHandleBatteryInfo:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearBatteryState(Ljava/lang/String;)V
    .locals 0

    const-string p0, "uniqueId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final clearOldCachedBatteryInfo(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "newAddresses"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->currentHandleBatteryInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/nothing/cardwidget/battery/BatteryStateManager;->currentHandleBatteryInfo:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm2/a;

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->caseBatteryInfo:Ljava/util/HashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v1, Lcom/nothing/cardwidget/battery/BatteryStateManager;->caseBatteryInfo:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    return-void
.end method

.method public final earProductsOnCombine(Lm2/a;)Lm2/a;
    .locals 22

    const-string v0, "<this>"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->NOTHINGX_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->AIRPODS:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerViewKt;->isSingleBattery(Lm2/a;)Z

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->i()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->n()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->k()Ljava/util/List;

    move-result-object v2

    :goto_1
    move v7, v0

    move-object/from16 v19, v2

    new-instance v0, Lm2/a;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x3800

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/nothing/cardwidget/battery/entity/DeviceType;->FASTPAIR_DEVICE:Lcom/nothing/cardwidget/battery/entity/DeviceType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static/range {p1 .. p1}, Lcom/nothing/cardwidget/battery/view/BatteryContainerViewKt;->isSingleBattery(Lm2/a;)Z

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v0, Lm2/a;

    move-object v3, v0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lm2/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lm2/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lm2/a;->d()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lm2/a;->c()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lm2/a;->j()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lm2/a;->m()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lm2/a;->o()Z

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lm2/a;->f()J

    move-result-wide v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lm2/a;->i()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x3800

    const/16 v21, 0x0

    invoke-direct/range {v3 .. v21}, Lm2/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIZJLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/i;)V

    goto :goto_2

    :cond_4
    move-object v0, v1

    :goto_2
    return-object v0
.end method

.method public final getBatteryStateInfo()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getCaseBatteryInfo()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->caseBatteryInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final getCurrentHandleBatteryInfo()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lm2/a;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->currentHandleBatteryInfo:Ljava/util/HashMap;

    return-object p0
.end method

.method public final initState(Lm2/a;Ljava/lang/String;)Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uniqueId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lm2/a;->c()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->INIT_IN_CASE:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;->NORMAL:Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V

    return-object p1
.end method

.method public final queryBatteryState(Lm2/a;Ljava/lang/String;)Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uniqueId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    if-nez p0, :cond_0

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->INSTANCE:Lcom/nothing/cardwidget/battery/BatteryStateManager;

    invoke-virtual {p0, p1, p2}, Lcom/nothing/cardwidget/battery/BatteryStateManager;->initState(Lm2/a;Ljava/lang/String;)Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final setBatteryState(Ljava/lang/String;Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;)V
    .locals 0

    const-string p0, "uniqueId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "state"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBatteryStateInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nothing/cardwidget/battery/BatteryConfig$BatteryState;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nothing/cardwidget/battery/BatteryStateManager;->batteryStateInfo:Ljava/util/HashMap;

    return-void
.end method

.method public final setCaseBatteryInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nothing/cardwidget/battery/BatteryStateManager;->caseBatteryInfo:Ljava/util/HashMap;

    return-void
.end method

.method public final setCurrentHandleBatteryInfo(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lm2/a;",
            ">;)V"
        }
    .end annotation

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/nothing/cardwidget/battery/BatteryStateManager;->currentHandleBatteryInfo:Ljava/util/HashMap;

    return-void
.end method
