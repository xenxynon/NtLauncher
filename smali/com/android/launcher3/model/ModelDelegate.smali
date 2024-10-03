.class public Lcom/android/launcher3/model/ModelDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;


# instance fields
.field protected mApp:Lcom/android/launcher3/LauncherAppState;

.field protected mAppsList:Lcom/android/launcher3/model/AllAppsList;

.field protected mContext:Landroid/content/Context;

.field protected mDataModel:Lcom/android/launcher3/model/BgDataModel;

.field protected mIsPrimaryInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)V
    .locals 0

    iput-object p2, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    iput-object p3, p0, Lcom/android/launcher3/model/ModelDelegate;->mAppsList:Lcom/android/launcher3/model/AllAppsList;

    iput-object p4, p0, Lcom/android/launcher3/model/ModelDelegate;->mDataModel:Lcom/android/launcher3/model/BgDataModel;

    iput-boolean p5, p0, Lcom/android/launcher3/model/ModelDelegate;->mIsPrimaryInstance:Z

    iput-object p1, p0, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)Lcom/android/launcher3/model/ModelDelegate;
    .locals 7

    const-class v0, Lcom/android/launcher3/model/ModelDelegate;

    const v1, 0x7f12017a

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ModelDelegate;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/ModelDelegate;->init(Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/AllAppsList;Lcom/android/launcher3/model/BgDataModel;Z)V

    return-object v0
.end method


# virtual methods
.method public bindAllModelExtras([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p1    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public destroy()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public loadAndBindAllAppsItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/model/UserManagerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/UserManagerState;",
            "[",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public loadAndBindOtherItems([Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0
    .param p1    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public loadAndBindWorkspaceItems(Lcom/android/launcher3/model/UserManagerState;[Lcom/android/launcher3/model/BgDataModel$Callbacks;Ljava/util/Map;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/model/UserManagerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Lcom/android/launcher3/model/BgDataModel$Callbacks;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/model/UserManagerState;",
            "[",
            "Lcom/android/launcher3/model/BgDataModel$Callbacks;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public loadStringCache(Lcom/android/launcher3/model/StringCache;)V
    .locals 0
    .param p1    # Lcom/android/launcher3/model/StringCache;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/StringCache;->loadStrings(Landroid/content/Context;)V

    return-void
.end method

.method public markActive()V
    .locals 0

    return-void
.end method

.method public modelLoadComplete()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method

.method public validateData()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->hasShortcutsPermission(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDelegate;->mAppsList:Lcom/android/launcher3/model/AllAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/model/AllAppsList;->hasShortcutHostPermission()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDelegate;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherModel;->forceReload()V

    :cond_0
    return-void
.end method

.method public workspaceLoadComplete()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
