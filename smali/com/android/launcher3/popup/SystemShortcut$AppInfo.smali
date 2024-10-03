.class public Lcom/android/launcher3/popup/SystemShortcut$AppInfo;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/SystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/popup/SystemShortcut<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const v1, 0x7f080375

    const v2, 0x7f120077

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p4, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    iget p1, p4, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->nodeId:I

    iput p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    return-void
.end method


# virtual methods
.method public createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo;->mSplitA11yInfo:Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->containsMultipleTasks:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120250

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, v0, Lcom/android/launcher3/popup/SystemShortcut$AppInfo$SplitAccessibilityInfo;->taskTitle:Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mAccessibilityActionId:I

    invoke-direct {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/popup/SystemShortcut;->createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/popup/SystemShortcut;->dismissTaskMenuView(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/util/PackageManagerHelper;

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->startDetailsActivityForInfo(Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_APP_INFO_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-object p0, Ly4/e;->h:Ly4/e;

    invoke-virtual {p0}, Ly4/e;->b()V

    return-void
.end method
