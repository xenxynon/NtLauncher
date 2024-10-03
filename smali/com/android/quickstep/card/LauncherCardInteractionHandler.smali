.class public final Lcom/android/quickstep/card/LauncherCardInteractionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/a;


# instance fields
.field private final launcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/uioverrides/QuickstepLauncher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 1

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/quickstep/card/LauncherCardInteractionHandler;->launcherRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final findHostViewAncestor(Landroid/view/View;)Lcom/nothing/launcher/card/r;
    .locals 1

    :goto_0
    const/4 p0, 0x0

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/nothing/launcher/card/r;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nothing/launcher/card/r;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p1, p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private final logAppLaunch(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    const-string p1, "launcher.statsLogManager.logger()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p1, p2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz p1, :cond_0

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_0
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method


# virtual methods
.method public onCardInteraction(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/app/PendingIntent;",
            "Ln5/k<",
            "+",
            "Landroid/content/Intent;",
            "+",
            "Landroid/app/ActivityOptions;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pendingIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/card/LauncherCardInteractionHandler;->launcherRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0, p1}, Lcom/android/quickstep/card/LauncherCardInteractionHandler;->findHostViewAncestor(Landroid/view/View;)Lcom/nothing/launcher/card/r;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz p3, :cond_4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getAppTransitionManager()Lcom/android/launcher3/QuickstepTransitionManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/QuickstepTransitionManager;->getActivityLaunchOptions(Landroid/view/View;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p1

    const-string v2, "launcher.appTransitionMa\u2026tyLaunchOptions(hostView)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v2, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->getLaunchCookie(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v4, v3}, Landroid/app/ActivityOptions;->setLaunchCookie(Landroid/os/IBinder;)V

    :cond_1
    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-nez v4, :cond_2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v4

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    iget-object v3, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    iget-object v3, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActivityOptions;->setSplashScreenStyle(I)Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "itemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/android/quickstep/card/LauncherCardInteractionHandler;->logAppLaunch(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Ljava/lang/Object;)V

    :cond_3
    sget-object p0, Lcom/nothing/cardparser/CardView;->Companion:Lcom/nothing/cardparser/CardView$Companion;

    new-instance v0, Ln5/k;

    invoke-virtual {p3}, Ln5/k;->c()Ljava/lang/Object;

    move-result-object p3

    iget-object p1, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-direct {v0, p3, p1}, Ln5/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p2, v0}, Lcom/nothing/cardparser/CardView$Companion;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/nothing/cardparser/CardView;->Companion:Lcom/nothing/cardparser/CardView$Companion;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nothing/cardparser/CardView$Companion;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Ln5/k;)Z

    move-result p0

    return p0
.end method
