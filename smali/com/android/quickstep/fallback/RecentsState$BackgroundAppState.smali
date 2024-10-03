.class Lcom/android/quickstep/fallback/RecentsState$BackgroundAppState;
.super Lcom/android/quickstep/fallback/RecentsState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/fallback/RecentsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundAppState"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/fallback/RecentsState;-><init>(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getHistoryForState(Lcom/android/launcher3/statemanager/BaseState;)Lcom/android/launcher3/statemanager/BaseState;
    .locals 0

    check-cast p1, Lcom/android/quickstep/fallback/RecentsState;

    invoke-super {p0, p1}, Lcom/android/quickstep/fallback/RecentsState;->getHistoryForState(Lcom/android/quickstep/fallback/RecentsState;)Lcom/android/quickstep/fallback/RecentsState;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewScaleAndOffset(Lcom/android/quickstep/RecentsActivity;)[F
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/uioverrides/states/BackgroundAppState;->getOverviewScaleAndOffsetForBackgroundState(Lcom/android/launcher3/BaseDraggingActivity;)[F

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic shouldDisableRestore()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/statemanager/BaseState;->shouldDisableRestore()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic shouldPreserveDataStateOnReapply()Z
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/statemanager/BaseState;->shouldPreserveDataStateOnReapply()Z

    move-result p0

    return p0
.end method
