.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$4(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$2(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/shortcuts/DeepShortcutView;)V
    .locals 0

    invoke-static {p0}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$3(Lcom/android/launcher3/shortcuts/DeepShortcutView;)V

    return-void
.end method

.method private static convertViewToOneShortcutType(Landroid/content/Context;Lcom/android/launcher3/shortcuts/DeepShortcutView;I)Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .locals 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0e00fa

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    invoke-virtual {v0, p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static createUpdateRunnable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/os/Handler;",
            "Lcom/android/launcher3/popup/PopupContainerWithArrow;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/DeepShortcutView;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/notification/NotificationKeyData;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v7

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    new-instance v9, Lcom/android/launcher3/popup/y;

    move-object v0, v9

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/y;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-object v9
.end method

.method public static synthetic d(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupPopulator;->lambda$createUpdateRunnable$1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$0(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationInfo;
    .locals 1

    new-instance v0, Lcom/android/launcher3/notification/NotificationInfo;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/notification/NotificationInfo;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v0
.end method

.method private static synthetic lambda$createUpdateRunnable$1(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->applyNotificationInfos(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$2(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2, p0, p3}, Lcom/android/launcher3/popup/PopupPopulator;->convertViewToOneShortcutType(Landroid/content/Context;Lcom/android/launcher3/shortcuts/DeepShortcutView;I)Lcom/android/launcher3/shortcuts/DeepShortcutView;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p4, p3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    :cond_0
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$3(Lcom/android/launcher3/shortcuts/DeepShortcutView;)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$createUpdateRunnable$4(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/launcher3/notification/NotificationListener;->getNotificationsForKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/z;

    move-object/from16 v3, p2

    invoke-direct {v2, v9, v3}, Lcom/android/launcher3/popup/z;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_0
    new-instance v2, Lcom/android/launcher3/popup/v;

    move-object/from16 v12, p4

    invoke-direct {v2, v12, v1}, Lcom/android/launcher3/popup/v;-><init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;)V

    invoke-virtual {v10, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v12, p4

    :goto_1
    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-object/from16 v2, p5

    invoke-direct {v1, v9, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->withContainer(Landroid/content/ComponentName;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v1

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/notification/NotificationKeyData;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationKeyData;->shortcutId:Ljava/lang/String;

    :goto_2
    invoke-static {v1, v0}, Lcom/android/launcher3/popup/PopupPopulator;->sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v15

    move v8, v13

    :goto_3
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    new-instance v6, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v6, v7, v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    invoke-virtual {v15, v6, v7}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    iput v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    const/16 v0, -0x6b

    iput v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_4

    :cond_3
    move v2, v13

    :goto_4
    new-instance v5, Lcom/android/launcher3/popup/x;

    move-object v0, v5

    move-object/from16 v3, p1

    move v4, v8

    move-object v13, v5

    move-object/from16 v5, p7

    move v9, v8

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/popup/x;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;ZLandroid/content/Context;ILjava/util/List;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/android/launcher3/popup/PopupContainerWithArrow;)V

    invoke-virtual {v10, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    :cond_4
    move v9, v8

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    new-instance v1, Lcom/android/launcher3/popup/w;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/w;-><init>(Lcom/android/launcher3/shortcuts/DeepShortcutView;)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    add-int/lit8 v8, v9, 0x1

    move-object/from16 v9, p1

    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    sget-object p1, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_2

    return-object p0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v0, :cond_3

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    if-ge v3, v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v5, v3

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object p1
.end method
