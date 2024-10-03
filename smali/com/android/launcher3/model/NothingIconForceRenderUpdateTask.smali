.class public final Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$Companion;


# instance fields
.field private final isNothingForceRenderEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$Companion;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->Companion:Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->isNothingForceRenderEnable:Z

    return-void
.end method

.method private static final execute$lambda$0(Ly5/l;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static final execute$lambda$3$lambda$2(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 5

    const-string v0, "$adaptedIconPackages"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$packageNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$updatedWorkspaceItems"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$workspaceItemMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "si"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p5}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v2, "si.user"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lh6/l;->t(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v2

    :goto_1
    if-nez v4, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    if-nez v2, :cond_6

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    iget p0, p5, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz p0, :cond_5

    const/4 p1, 0x6

    if-eq p0, p1, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$1$1$items$1;->INSTANCE:Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$1$1$items$1;

    new-instance p1, Ln/b2;

    invoke-direct {p1, p0}, Ln/b2;-><init>(Ly5/l;)V

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "workspaceItemMap.compute\u2026ring -> mutableListOf() }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "   update application icon "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NothingIconForceRenderUpdateTask"

    invoke-static {p1, p0}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p5, v3}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    invoke-interface {p3, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    return-void
.end method

.method private static final execute$lambda$3$lambda$2$lambda$1(Ly5/l;Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final execute$lambda$4(Ly5/l;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static final execute$lambda$5(Ly5/l;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static final execute$lambda$6(Ly5/l;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic m(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$3$lambda$2(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic n(Ly5/l;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$5(Ly5/l;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic o(Ly5/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$6(Ly5/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic p(Ly5/l;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$4(Ly5/l;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Ly5/l;Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$3$lambda$2$lambda$1(Ly5/l;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ly5/l;Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->execute$lambda$0(Ly5/l;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "app"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "dataModel"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "apps"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v4, v3, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v2, "NothingIconForceRenderUpdateTask"

    const-string v3, "AllAppsList is empty\uff0cso we start a full load."

    invoke-static {v2, v3}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->fallback(Lcom/android/launcher3/LauncherAppState;)V

    return-void

    :cond_0
    const-string v5, "NothingIconForceRenderUpdateTask"

    const-string v7, "begin build adaptedIconPackages list."

    invoke-static {v5, v7}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v12, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v8, v7, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-boolean v9, v0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->isNothingForceRenderEnable:Z

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/android/launcher3/icons/BitmapInfo;->getMono()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_3

    :cond_2
    iget-boolean v9, v0, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->isNothingForceRenderEnable:Z

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher3/icons/BitmapInfo;->isNTMono()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_3
    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v10, "appInfo.user"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v8, :cond_5

    invoke-static {v8}, Lh6/l;->t(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_1

    :cond_4
    const/4 v12, 0x0

    :cond_5
    :goto_1
    if-nez v12, :cond_6

    sget-object v7, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$users$1;->INSTANCE:Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$users$1;

    new-instance v10, Ln/c2;

    invoke-direct {v10, v7}, Ln/c2;-><init>(Ly5/l;)V

    invoke-interface {v6, v8, v10}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    const-string v10, "adaptedIconPackages.comp\u2026f()\n                    }"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "NothingIconForceRenderUpdateTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   add package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v5, 0x1

    const-string v8, "NothingIconForceRenderUpdateTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "   badAppInfo appInfo "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-lez v5, :cond_8

    const-string v2, "NothingIconForceRenderUpdateTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bad AppInfo, fallback to total refresh."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ly2/e;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask;->fallback(Lcom/android/launcher3/LauncherAppState;)V

    return-void

    :cond_8
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v0, "NothingIconForceRenderUpdateTask"

    const-string v1, "adaptedIconPackages is empty, nothing to do."

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string v4, "NothingIconForceRenderUpdateTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "iconAdaptedPackages build finished.size "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lo5/j;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v5, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v13}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v8, v6}, Lcom/android/launcher3/icons/IconCache;->updateAllIconsForPackages(Ljava/util/Map;)V

    invoke-virtual {v3, v6}, Lcom/android/launcher3/model/AllAppsList;->updateIconsAndLabels(Ljava/util/Map;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-enter p2

    :try_start_0
    new-instance v10, Ln/y1;

    move-object v5, v10

    move-object v7, v4

    move-object v9, v3

    move-object v11, v10

    move-object v10, v15

    invoke-direct/range {v5 .. v10}, Ln/y1;-><init>(Ljava/util/Map;Ljava/util/List;Lcom/android/launcher3/icons/IconCache;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v2, v11}, Lcom/android/launcher3/model/BgDataModel;->forAllUserWorkspaceItemInfos(Ljava/util/function/Consumer;)V

    sget-object v5, Ln5/t;->a:Ln5/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    new-instance v2, Lkotlin/jvm/internal/z;

    invoke-direct {v2}, Lkotlin/jvm/internal/z;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v15, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_c

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_3

    :cond_b
    const/4 v7, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    move v7, v12

    :goto_4
    if-eqz v7, :cond_d

    goto :goto_2

    :cond_d
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$allLauncherKnownIds$1;->INSTANCE:Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$allLauncherKnownIds$1;

    new-instance v9, Ln/a2;

    invoke-direct {v9, v8}, Ln/a2;-><init>(Ly5/l;)V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    new-instance v11, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    invoke-direct {v11, v13, v10}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v11, v5, v7}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v10

    const-string v11, "ShortcutRequest(context,\u2026uery(ShortcutRequest.ALL)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_e
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v8

    if-nez v8, :cond_f

    goto :goto_6

    :cond_f
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$2;

    invoke-direct {v10, v8}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$2;-><init>(Ljava/lang/String;)V

    new-instance v8, Ln/d2;

    invoke-direct {v8, v10}, Ln/d2;-><init>(Ly5/l;)V

    invoke-interface {v9, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;

    invoke-direct {v9, v2, v1, v7, v3}, Lcom/android/launcher3/model/NothingIconForceRenderUpdateTask$execute$3;-><init>(Lkotlin/jvm/internal/z;Lcom/android/launcher3/LauncherAppState;Landroid/content/pm/ShortcutInfo;Ljava/util/List;)V

    new-instance v7, Ln/z1;

    invoke-direct {v7, v9}, Ln/z1;-><init>(Ly5/l;)V

    invoke-interface {v8, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_6

    :cond_10
    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2

    throw v0
.end method

.method public final fallback(Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    const-string p0, "app"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->refreshAndReloadLauncher()V

    return-void
.end method
