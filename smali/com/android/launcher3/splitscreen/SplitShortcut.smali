.class public abstract Lcom/android/launcher3/splitscreen/SplitShortcut;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source "SourceFile"


# annotations
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
.field private final TAG:Ljava/lang/String;

.field private final position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;


# direct methods
.method public constructor <init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Landroid/view/View;",
            "Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;",
            ")V"
        }
    .end annotation

    const-string v0, "position"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    iput-object p6, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    const-class p1, Lcom/android/launcher3/popup/SystemShortcut;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final getPosition()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    return-object p0
.end method

.method protected final getSplitSelectSource()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;
    .locals 10

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const-string v2, "workspaceItemInfo.bitmap.icon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const-string v2, "workspaceItemInfo.intent"

    :goto_0
    invoke-static {v0, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    const-string v2, "appInfo.bitmap.icon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/launcher3/model/data/AppInfo;->intent:Landroid/content/Intent;

    const-string v2, "appInfo.intent"

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    invoke-static {v0}, Lcom/android/launcher3/util/SplitConfigurationOptions;->getLogEventForPosition(I)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;

    move-result-object v9

    new-instance v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    iget-object v4, p0, Lcom/android/launcher3/popup/SystemShortcut;->mOriginalView:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v7, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget-object v8, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/splitscreen/SplitShortcut;->TAG:Ljava/lang/String;

    const-string v0, "unknown item type"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/splitscreen/SplitShortcut;->getSplitSelectSource()Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/android/launcher3/popup/QuickstepSystemShortcut;->TAG:Ljava/lang/String;

    const-string p1, "no split selection source"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    invoke-static {p0}, Lkotlin/jvm/internal/n;->b(Ljava/lang/Object;)V

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->startSplitSelection(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;)V

    return-void
.end method
