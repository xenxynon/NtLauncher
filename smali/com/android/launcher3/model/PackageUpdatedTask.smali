.class public Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# static fields
.field private static DEBUG:Z = false


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mUser:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 1
    .param p2    # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    sget-boolean p0, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PackageUpdatedTask mOp: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " packageCount: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " user: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "b/243688989"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/launcher3/model/PackageUpdatedTask;->DEBUG:Z

    :cond_0
    return-void
.end method

.method private addNewAppIconToHome(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/SessionCommitReceiver;->isEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method private checkAndUpdateIconStyle(Landroid/content/Context;Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, p1, p2}, Lo3/b;->N(Landroid/content/Context;Ljava/util/HashSet;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne v1, p2, :cond_1

    iget-object p0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lo3/b;->L(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$execute$1(Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_e

    move-object v7, p1

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v8

    const/4 v9, 0x3

    if-eqz v8, :cond_0

    iget v8, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object/from16 v10, p2

    invoke-virtual {v10, v8}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v8, v9, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->isPromise()Z

    move-result v8

    const/4 v10, 0x2

    if-eqz v8, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "."

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    iget v11, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    new-instance v11, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v11, v1, v12}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-array v12, v6, [Ljava/lang/String;

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-virtual {v11, v4, v12}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;[Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    move v4, v5

    move v8, v4

    goto :goto_0

    :cond_1
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    move v4, v6

    goto :goto_0

    :cond_2
    if-eqz v8, :cond_3

    const-class v8, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/LauncherApps;

    iget-object v11, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v11}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v8

    :cond_3
    move v4, v5

    :goto_0
    if-nez v8, :cond_5

    invoke-virtual {v3, v9}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-direct {p0, v1, v3, v7}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void

    :cond_5
    if-nez v8, :cond_6

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored shortcut no longer valid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageUpdatedTask"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    iput v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_1

    :cond_7
    if-eqz p3, :cond_8

    move-object/from16 v2, p6

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0, v1, v3, v7}, Lcom/android/launcher3/model/PackageUpdatedTask;->updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_8
    move v4, v5

    :cond_9
    :goto_2
    if-eqz p3, :cond_c

    move-object/from16 v1, p7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_a
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v1

    goto :goto_4

    :cond_b
    :goto_3
    const/16 v1, 0x64

    :goto_4
    invoke-virtual {v3, v1, v10}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_c

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    move-object/from16 v2, p8

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    move v4, v6

    :cond_c
    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eq v2, v1, :cond_d

    goto :goto_5

    :cond_d
    move v6, v5

    :goto_5
    move v5, v4

    goto :goto_6

    :cond_e
    move v6, v5

    :goto_6
    if-nez v5, :cond_f

    if-eqz v6, :cond_10

    :cond_f
    invoke-virtual/range {p10 .. p11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    if-eqz v5, :cond_11

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_11
    return-void
.end method

.method private static synthetic lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->bindWidgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$2(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method

.method public static synthetic n(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$0(Ljava/util/HashSet;Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/launcher3/model/PackageUpdatedTask;->lambda$execute$1(Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method private updateWorkspaceItemIntent(Landroid/content/Context;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;)Z
    .locals 3

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p3, p0}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    iput-object p0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput v1, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 27
    .param p1    # Lcom/android/launcher3/LauncherAppState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/launcher3/model/BgDataModel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/launcher3/model/AllAppsList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v10

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v12, v15

    new-instance v11, Ljava/util/HashSet;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofUser(Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v11, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    :goto_0
    move-object v3, v2

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x2

    const/16 v16, 0x0

    packed-switch v2, :pswitch_data_0

    move-object/from16 v20, v11

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    :goto_1
    move-object v11, v1

    goto/16 :goto_a

    :pswitch_0
    new-instance v2, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v2}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    sget-object v4, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, v14}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/pm/UserCache;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v14, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    sget-object v4, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/16 v5, 0x8

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v7

    invoke-interface {v4, v5, v7}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    invoke-virtual {v2}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v6, v2}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    move-object/from16 v20, v11

    move-object v11, v4

    goto/16 :goto_a

    :pswitch_1
    sget-object v4, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v5, 0x5

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move/from16 v2, v16

    :goto_2
    const/4 v7, 0x4

    invoke-interface {v4, v7, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    sget-boolean v4, Lcom/android/launcher3/model/PackageUpdatedTask;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "PackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAllAppsList.(un)suspend "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    move-object/from16 v20, v11

    move-object v11, v2

    goto/16 :goto_a

    :pswitch_2
    move/from16 v2, v16

    :goto_3
    if-ge v2, v12, :cond_3

    const-string v4, "PackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing app icon"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v15, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    :pswitch_3
    move/from16 v2, v16

    :goto_4
    if-ge v2, v12, :cond_5

    sget-boolean v4, Lcom/android/launcher3/model/PackageUpdatedTask;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "PackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAllAppsList.removePackage "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v15, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    invoke-interface {v1, v6}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    move-object/from16 v20, v11

    goto/16 :goto_1

    :pswitch_4
    new-instance v2, Ln/l2;

    invoke-direct {v2, v9}, Ln/l2;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Ljava/util/function/Consumer;)Lcom/android/launcher3/util/SafeCloseable;

    move-result-object v2

    move/from16 v4, v16

    :goto_5
    if-ge v4, v12, :cond_a

    :try_start_0
    sget-boolean v5, Lcom/android/launcher3/model/PackageUpdatedTask;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "PackageUpdatedTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList.updatePackage "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    aget-object v5, v15, v4

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v6}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v5, v15, v4

    aget-object v6, v15, v4

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v6, v7}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v5}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    sget-boolean v6, Lcom/android/launcher3/testing/shared/TestProtocol;->sDebugTracing:Z

    if-eqz v6, :cond_7

    const-string v6, "b/243688989"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    const-string v11, "launcher: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    move-object/from16 v20, v11

    :goto_6
    if-eqz v5, :cond_8

    new-instance v6, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v7, v15, v4

    iget-object v11, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v6, v7, v11}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, v20

    const/4 v6, 0x2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_9

    :try_start_1
    invoke-interface {v2}, Lcom/android/launcher3/util/SafeCloseable;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9
    :goto_7
    throw v1

    :cond_a
    move-object/from16 v20, v11

    if-eqz v2, :cond_d

    invoke-interface {v2}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    goto :goto_9

    :pswitch_5
    move-object/from16 v20, v11

    move/from16 v2, v16

    :goto_8
    if-ge v2, v12, :cond_d

    sget-boolean v4, Lcom/android/launcher3/model/PackageUpdatedTask;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "PackageUpdatedTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList.addPackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_c

    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_c
    aget-object v4, v15, v2

    aget-object v5, v15, v2

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v5, v6}, Lcom/android/launcher3/model/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v0, v14, v4, v5}, Lcom/android/launcher3/model/PackageUpdatedTask;->addNewAppIconToHome(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/FlagOp;

    move-result-object v1

    goto/16 :goto_1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    new-instance v21, Lcom/android/launcher3/util/IntSet;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v22, Lcom/android/launcher3/util/IntSet;

    invoke-direct/range {v22 .. v22}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_f

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    if-eq v11, v1, :cond_e

    goto :goto_b

    :cond_e
    move-object/from16 v25, v9

    move/from16 v26, v12

    move-object/from16 v23, v14

    move-object/from16 v19, v15

    const/4 v3, 0x2

    goto/16 :goto_10

    :cond_f
    :goto_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x2

    if-eq v1, v5, :cond_11

    if-ne v1, v4, :cond_10

    goto :goto_c

    :cond_10
    move/from16 v17, v16

    goto :goto_d

    :cond_11
    :goto_c
    move/from16 v17, v5

    :goto_d
    monitor-enter p2

    :try_start_2
    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v1, Ln/k2;

    move-object/from16 p3, v1

    move-object/from16 v1, p3

    move-object/from16 v19, v15

    move-object v15, v2

    move-object/from16 v2, p0

    move/from16 v23, v4

    move-object/from16 v4, v22

    move/from16 v5, v17

    move-object/from16 v24, v6

    move-object v6, v14

    move-object/from16 v17, v7

    const/16 v18, 0x4

    move-object/from16 v7, v21

    move-object/from16 v23, v8

    move-object v8, v9

    move-object/from16 v25, v9

    move-object/from16 v9, v23

    move-object/from16 v23, v14

    move-object/from16 v14, v20

    move/from16 v26, v12

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Ln/k2;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v15, v1}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    iget-object v1, v13, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v3, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v4, v4, -0xb

    or-int/lit8 v4, v4, 0x4

    iput v4, v2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v4, v24

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_f

    :cond_12
    move-object/from16 v4, v24

    goto :goto_f

    :cond_13
    move-object/from16 v4, v24

    const/4 v3, 0x2

    :goto_f
    move-object/from16 v24, v4

    goto :goto_e

    :cond_14
    move-object/from16 v4, v24

    const/4 v3, 0x2

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-static/range {v21 .. v21}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v1

    const-string v2, "removed because the target component is invalid"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    new-instance v1, Ln/j2;

    invoke-direct {v1, v4}, Ln/j2;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_16
    :goto_10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_17

    move-object/from16 v4, v19

    invoke-static {v1, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_12

    :cond_17
    move-object/from16 v4, v19

    if-ne v2, v3, :cond_19

    const-class v2, Landroid/content/pm/LauncherApps;

    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    move/from16 v6, v16

    move/from16 v5, v26

    :goto_11
    if-ge v6, v5, :cond_1a

    aget-object v7, v4, v6

    iget-object v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v7, v8}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_18

    aget-object v7, v4, v6

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_19
    :goto_12
    move-object/from16 v3, v23

    move/from16 v5, v26

    :cond_1a
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_1b
    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v2

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    move-object/from16 v7, v25

    invoke-static {v7, v6}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removed because the corresponding package or component is removed. mOp="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " removedPackages="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    const-string v9, ","

    const-string v10, "["

    const-string v11, "]"

    invoke-static {v9, v10, v11}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " removedComponents="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/folder/w;->a:Lcom/android/launcher3/folder/w;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Ln/m2;->a:Ln/m2;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    const-string v8, ","

    const-string v9, "["

    const-string v10, "]"

    invoke-static {v8, v9, v10}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    sget-object v2, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v6, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v6}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    :cond_1c
    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1e

    move/from16 v2, v16

    :goto_13
    if-ge v2, v5, :cond_1d

    iget-object v6, v13, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v7, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v8, v4, v2

    iget-object v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v8, p1

    invoke-virtual {v6, v8, v7}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    invoke-virtual {v0, v13}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_1e
    invoke-direct {v0, v3, v1}, Lcom/android/launcher3/model/PackageUpdatedTask;->checkAndUpdateIconStyle(Landroid/content/Context;Ljava/util/HashSet;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
