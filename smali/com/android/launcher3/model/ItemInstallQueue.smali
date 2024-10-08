.class public Lcom/android/launcher3/model/ItemInstallQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    }
.end annotation


# static fields
.field public static INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/model/ItemInstallQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mInstallQueueDisabledFlags:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorage:Lcom/android/launcher3/util/PersistedItemArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/PersistedItemArray<",
            "Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Ln/r0;->a:Ln/r0;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/PersistedItemArray;

    const-string v1, "apps_to_install"

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    iput-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$getPendingShortcuts$2(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method private addToQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/ItemInstallQueue;ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/model/ItemInstallQueue;->decode(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$getPendingShortcuts$3(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$removeFromInstallQueue$1(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z

    move-result p0

    return p0
.end method

.method private decode(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;
    .locals 3

    if-eqz p1, :cond_5

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p0, "InstallShortcutReceiver"

    const-string p1, "Unknown item type"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->buildRequest(Landroid/content/Context;)Lcom/android/launcher3/shortcuts/ShortcutRequest;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v2

    :cond_1
    new-instance p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutInfo;

    invoke-direct {p1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    return-object p1

    :cond_2
    const-string p1, "appWidgetId"

    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance p2, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    return-object p2

    :cond_4
    :goto_0
    return-object v2

    :cond_5
    new-instance p0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$queuePendingShortcutInfo$4(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    return-void
.end method

.method private ensureQueueLoaded()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    new-instance v2, Ln/s0;

    invoke-direct {v2, p0}, Ln/s0;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/PersistedItemArray;->read(Landroid/content/Context;Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->lambda$flushQueueInBackground$0(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private flushInstallQueue()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Ln/t0;

    invoke-direct {v1, p0}, Ln/t0;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private flushQueueInBackground()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/model/a0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/model/a0;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->addAndBindAddedWorkspaceItems(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/PersistedItemArray;->getFile(Landroid/content/Context;)Landroid/util/AtomicFile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/ItemInstallQueue;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static synthetic h(Lcom/android/launcher3/model/ItemInstallQueue;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushQueueInBackground()V

    return-void
.end method

.method private synthetic lambda$flushQueueInBackground$0(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getPendingShortcuts$2(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 2

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getPendingShortcuts$3(Landroid/os/UserHandle;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .locals 0

    iget-object p1, p1, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$queuePendingShortcutInfo$4(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->getItemInfo(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "ItemInstallQueue"

    if-nez v0, :cond_0

    const-string v0, "Adding PendingInstallShortcutInfo with no attached info to queue."

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding PendingInstallShortcutInfo to queue. Attached info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0, p2}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->addToQueue(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method private static synthetic lambda$removeFromInstallQueue$1(Landroid/os/UserHandle;Ljava/util/HashSet;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)Z
    .locals 1

    iget-object v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p2, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;->intent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->getIntentPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher3/model/y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/launcher3/model/y;-><init>(Lcom/android/launcher3/model/ItemInstallQueue;Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushInstallQueue()V

    return-void
.end method


# virtual methods
.method public getPendingShortcuts(Landroid/os/UserHandle;)Ljava/util/stream/Stream;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/b0;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/b0;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/model/z;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/z;-><init>(Landroid/os/UserHandle;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public pauseModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    return-void
.end method

.method public queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public queueItem(Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public queueItem(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queuePendingShortcutInfo(Lcom/android/launcher3/model/ItemInstallQueue$PendingInstallShortcutInfo;)V

    return-void
.end method

.method public removeFromInstallQueue(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->ensureQueueLoaded()V

    iget-object v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/launcher3/model/c0;

    invoke-direct {v1, p2, p1}, Lcom/android/launcher3/model/c0;-><init>(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mStorage:Lcom/android/launcher3/util/PersistedItemArray;

    iget-object p2, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mItems:Ljava/util/List;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/util/PersistedItemArray;->write(Landroid/content/Context;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public resumeModelPush(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/model/ItemInstallQueue;->mInstallQueueDisabledFlags:I

    invoke-direct {p0}, Lcom/android/launcher3/model/ItemInstallQueue;->flushInstallQueue()V

    return-void
.end method
