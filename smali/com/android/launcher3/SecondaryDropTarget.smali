.class public Lcom/android/launcher3/SecondaryDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;
    }
.end annotation


# instance fields
.field private mButtonType:I

.field private final mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

.field protected mCurrentAccessibilityAction:I

.field private mHadPendingAlarm:Z

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mUninstallDisabledCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/UserHandle;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/SecondaryDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/util/ArrayMap;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    iput p2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mButtonType:I

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/SecondaryDropTarget;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method public static synthetic b()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/SecondaryDropTarget;->lambda$performDropAction$0()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/SecondaryDropTarget;->lambda$performDropAction$1(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_0
    iget p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const p2, 0x7f0b0067

    if-ne p0, p2, :cond_1

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_UNINSTALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_1

    :cond_1
    const p2, 0x7f0b0042

    if-ne p0, p2, :cond_2

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROPPED_ON_DONT_SUGGEST:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I
    .locals 4

    invoke-static {p2}, Lb3/x;->e(Landroid/view/View;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lb3/x;->b(Landroid/view/View;)I

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0b005d

    return p0

    :cond_0
    return v1

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "no_control_apps"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "no_uninstall_apps"

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    :cond_5
    instance-of p2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p2, :cond_7

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v0, 0xc0

    if-eqz v2, :cond_7

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lq2/m;

    sget-object v2, Ly3/b;->a:Ly3/b;

    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->isUninstallableSystemApp(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    const p0, 0x7f0b0067

    return p0
.end method

.method private getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    check-cast p0, Lq2/m;

    sget-object v2, Ly3/b;->a:Ly3/b;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ly3/b;->b(Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lq2/m;->getOSCoreProxy()Lcom/nothing/launcher/ossupport/core/NothingOSCore;

    move-result-object p0

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nothing/launcher/ossupport/core/NothingOSCore;->isUninstallableSystemApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    iput-boolean v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->isUninstallableSystemApp:Z

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0
.end method

.method private getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/DropTargetHandler;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$performDropAction$0()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$performDropAction$1(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method


# virtual methods
.method public completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/DropTargetHandler;->onSecondaryTargetCompleteDrop(Landroid/content/ComponentName;Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public getAccessibilityAction()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    return p0
.end method

.method public getButtonType()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mButtonType:I

    return p0
.end method

.method public onAccessibilityDrop(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher3/SecondaryDropTarget;->doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/SecondaryDropTarget;->performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;

    return-void
.end method

.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mUninstallDisabledCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCacheExpireAlarm:Lcom/android/launcher3/Alarm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mHadPendingAlarm:Z

    :cond_0
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-interface {v0, p0, p1}, Lcom/android/launcher3/DragSource;->onPreDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)V

    new-instance v0, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/SecondaryDropTarget$DeferredOnComplete;-><init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/DragSource;Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p2, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    iget-object p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, p2, p1}, Lcom/android/launcher3/SecondaryDropTarget;->doLog(Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SecondaryDropTarget;->setupUi(I)V

    return-void
.end method

.method protected performDropAction(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)Landroid/content/ComponentName;
    .locals 4

    iget v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const/4 v1, 0x0

    const v2, 0x7f0b005d

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetHandler;->getMLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lb3/x;->j(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-object v1

    :cond_0
    const v2, 0x7f0b0042

    if-ne v0, v2, :cond_2

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DISMISS_PREDICTION_UNDO:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f12013d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    sget-object v2, Lcom/android/launcher3/c4;->g:Lcom/android/launcher3/c4;

    new-instance v3, Lcom/android/launcher3/b4;

    invoke-direct {v3, p0, p3, p2}, Lcom/android/launcher3/b4;-><init>(Lcom/android/launcher3/SecondaryDropTarget;Lcom/android/launcher3/logging/InstanceId;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/launcher3/DropTargetHandler;->dismissPrediction(Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/launcher3/SecondaryDropTarget;->getUninstallTarget(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/content/ComponentName;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f12027c

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object v1

    :cond_3
    sget-object v0, Lz4/b;->a:Lz4/b;

    iget-object p0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetHandler:Lcom/android/launcher3/DropTargetHandler;

    invoke-virtual {p0}, Lcom/android/launcher3/DropTargetHandler;->getMLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3, p1}, Lz4/b;->d(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/ComponentName;Landroid/view/View;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method protected setupItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mButtonType:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->setupUi(I)V

    :cond_0
    return-void
.end method

.method protected setupUi(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/SecondaryDropTarget;->mCurrentAccessibilityAction:I

    const v0, 0x7f0b0067

    if-ne p1, v0, :cond_1

    const p1, 0x7f0802eb

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setDrawable(I)V

    const p1, 0x7f12027b

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->updateText(I)V

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0042

    if-ne p1, v0, :cond_2

    const p1, 0x7f0802a2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setDrawable(I)V

    const p1, 0x7f1200ce

    goto :goto_0

    :cond_2
    const v0, 0x7f0b005d

    if-ne p1, v0, :cond_3

    const p1, 0x7f0802d6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->setDrawable(I)V

    const p1, 0x7f1200fe

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public supportsAccessibilityDrop(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected supportsDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/SecondaryDropTarget;->getViewUnderDrag(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/SecondaryDropTarget;->getButtonType(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
