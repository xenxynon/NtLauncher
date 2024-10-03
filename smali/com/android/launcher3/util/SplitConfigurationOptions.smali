.class public final Lcom/android/launcher3/util/SplitConfigurationOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/SplitConfigurationOptions$SplitSelectSource;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$SplitStageInfo;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;,
        Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;
    }
.end annotation


# direct methods
.method public static getLogEventForPosition(I)Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_ICON_MENU_SPLIT_LEFT_TOP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_APP_ICON_MENU_SPLIT_RIGHT_BOTTOM:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_0
    return-object p0
.end method

.method public static getOppositeStagePosition(I)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
