.class public Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;


# instance fields
.field protected mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method protected isEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarRecentAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method protected setApps([Lcom/android/launcher3/model/data/AppInfo;)V
    .locals 0

    return-void
.end method

.method protected updateHotseatItemInfos([Lcom/android/launcher3/model/data/ItemInfo;)[Lcom/android/launcher3/model/data/ItemInfo;
    .locals 0

    return-object p1
.end method

.method protected updateRunningApps(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
