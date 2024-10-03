.class public Lcom/android/launcher3/dragndrop/AddItemActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field private mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/views/BaseDragLayer<",
            "Lcom/android/launcher3/dragndrop/AddItemActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mFinishOnPause:Z

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

.field private mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return-void
.end method

.method private acceptWidget(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    sget-object p0, Ly4/g;->a:Ly4/g;

    invoke-virtual {p0, v0}, Ly4/g;->c(Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "acceptWidget -> exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AddItemActivity"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/dragndrop/AddItemActivity;)Lcom/android/launcher3/widget/WidgetCell;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    return-object p0
.end method

.method private applyWidgetItemAsync(Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$setupShortcut$0(Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setupShortcut$0(Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 2

    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method private synthetic lambda$setupWidget$1(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 3

    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v2

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;Landroid/content/Context;)V

    return-object v0
.end method

.method private logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$setupWidget$1(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method private sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120060

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private setupShortcut()Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 3

    new-instance v0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Li/a;

    invoke-direct {v1, p0, v0}, Li/a;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    new-instance v0, Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method private setupWidget()Lcom/android/launcher3/model/data/PackageItemInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v3, :cond_1

    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetCell;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-static {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    new-instance v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/16 v2, -0x71

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Li/b;

    invoke-direct {v1, p0, v0}, Li/b;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/launcher3/model/WidgetsModel;->newPendingItemInfo(Landroid/content/Context;Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    if-eqz p3, :cond_0

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V

    iput p3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    :goto_0
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_BACK:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lj3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const v0, 0x7f0e002a

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDragLayer:Lcom/android/launcher3/views/BaseDragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    const v0, 0x7f0b042b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupWidget()Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupShortcut()Lcom/android/launcher3/model/data/PackageItemInfo;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v3, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher3/util/PackageManagerHelper;->getApplicationInfo(Ljava/lang/String;Landroid/os/UserHandle;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    const v4, 0x7f0b0431

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/WidgetCellPreview;

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez p1, :cond_5

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_START:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_5
    const p1, 0x7f0b0429

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v3, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {p0}, Lcom/android/launcher3/widget/WidgetSections;->getWidgetSections(Landroid/content/Context;)Landroid/util/SparseArray;

    move-result-object v2

    iget v0, v0, Lcom/android/launcher3/model/data/PackageItemInfo;->widgetCategory:I

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_7
    iget v0, v2, Lcom/android/launcher3/widget/WidgetSections$WidgetSection;->mSectionTitle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b006d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/AbstractSlideInView;->addOnCloseListener(Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;->show()V

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupNavBarColor()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    return v3

    :cond_0
    if-eqz v1, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v6}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewScale()F

    move-result v9

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {v2, v4, v1, v5, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    move-object v0, v2

    :goto_0
    new-instance v1, Landroid/content/ClipDescription;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, ""

    invoke-direct {v1, v5, v4}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v4, Landroid/content/ClipData;

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v4, v1, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/AddItemActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    const v0, 0x10a0001

    invoke-static {p0, v3, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return v3
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mSlideInView:Lcom/android/launcher3/widget/AddItemWidgetsBottomSheet;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaceAutomaticallyClick -> mRequest.accept() -> exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AddItemActivity"

    invoke-static {p1, p0}, Ly2/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->allocateAppWidgetId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHolder:Lcom/android/launcher3/widget/LauncherWidgetHolder;

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v2, v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string v0, "state.widget.id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSlideInViewClosed()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method protected setupNavBarColor()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    return-void
.end method
