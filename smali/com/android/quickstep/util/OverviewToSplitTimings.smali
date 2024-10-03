.class abstract Lcom/android/quickstep/util/OverviewToSplitTimings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/util/SplitAnimationTimings;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionsFadeEnd()I
    .locals 0

    const/16 p0, 0x53

    return p0
.end method

.method public getActionsFadeEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getActionsFadeEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getActionsFadeStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActionsFadeStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getActionsFadeStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getDuration()I
.end method

.method public abstract getGridSlideDuration()I
.end method

.method public getGridSlideDurationOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getGridSlideDuration()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getGridSlidePrimaryInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->EMPHASIZED:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public getGridSlideSecondaryInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    sget-object p0, Lcom/android/launcher3/anim/Interpolators;->INSTANT:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public abstract getGridSlideStagger()I
.end method

.method public getGridSlideStaggerOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getGridSlideStagger()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getGridSlideStart()I
.end method

.method public getGridSlideStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getGridSlideStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getIconFadeEnd()I
    .locals 0

    const/16 p0, 0x53

    return p0
.end method

.method public getIconFadeEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getIconFadeEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getIconFadeStart()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getIconFadeStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getIconFadeStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsContainerFadeInEnd()I
    .locals 0

    const/16 p0, 0xfa

    return p0
.end method

.method public getInstructionsContainerFadeInEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsContainerFadeInEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsContainerFadeInStart()I
    .locals 0

    const/16 p0, 0xa7

    return p0
.end method

.method public getInstructionsContainerFadeInStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsContainerFadeInStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsTextFadeInEnd()I
    .locals 0

    const/16 p0, 0x12c

    return p0
.end method

.method public getInstructionsTextFadeInEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsTextFadeInEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsTextFadeInStart()I
    .locals 0

    const/16 p0, 0xd9

    return p0
.end method

.method public getInstructionsTextFadeInStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsTextFadeInStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsUnfoldEnd()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method public getInstructionsUnfoldEndOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsUnfoldEnd()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getInstructionsUnfoldStart()I
    .locals 0

    const/16 p0, 0xa7

    return p0
.end method

.method public getInstructionsUnfoldStartOffset()F
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getInstructionsUnfoldStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/util/OverviewToSplitTimings;->getDuration()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public abstract getPlaceholderFadeInEnd()I
.end method

.method public abstract getPlaceholderFadeInStart()I
.end method

.method public abstract getPlaceholderIconFadeInEnd()I
.end method

.method public abstract getPlaceholderIconFadeInStart()I
.end method

.method public abstract getStagedRectScaleXInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectScaleYInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectSlideEnd()I
.end method

.method public abstract getStagedRectSlideStart()I
.end method

.method public abstract getStagedRectXInterpolator()Landroid/view/animation/Interpolator;
.end method

.method public abstract getStagedRectYInterpolator()Landroid/view/animation/Interpolator;
.end method
