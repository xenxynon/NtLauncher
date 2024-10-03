.class public Lcom/android/launcher3/appprediction/AppsDividerView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;
.implements Ls3/d;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;
    }
.end annotation


# instance fields
.field private mAllAppsLabelLayout:Landroid/text/Layout;

.field private final mAllAppsLabelTextColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final mDividerSize:[I

.field private mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

.field private mIsScrolledOut:Z

.field private final mPaint:Landroid/text/TextPaint;

.field private mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

.field private mShowAllAppsLabel:Z

.field private mStrokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private mSupportAppLabelTypeConfig:Z

.field private mTabsHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appprediction/AppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    sget-object p2, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    iput-object p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object p2, Lcom/android/launcher3/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    const p3, 0x7f0402a4

    invoke-static {p1, p3}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    aput v1, v0, p2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    sget-object v0, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz3/d;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mStrokeColor:I

    if-eqz p3, :cond_0

    const p3, 0x7f060028

    goto :goto_0

    :cond_0
    const p3, 0x7f060027

    :goto_0
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelTextColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f05000c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mSupportAppLabelTypeConfig:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p1

    const-string p3, "launcher.all_apps_visited_count"

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/OnboardingPrefs;->hasReachedMaxCount(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    move p2, v2

    :cond_1
    iput-boolean p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    return-void
.end method

.method private getAllAppsLabelLayout()Landroid/text/Layout;
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    const-string v2, "google-sans"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070079

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120064

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v3, v2, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelLayout:Landroid/text/Layout;

    return-object p0
.end method

.method private updateDividerType()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mTabsHidden:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    if-ne v6, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Lcom/android/launcher3/allapps/FloatingHeaderRow;->shouldDraw()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    goto :goto_2

    :cond_5
    if-ne v5, v1, :cond_0

    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->LINE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    :goto_2
    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-eq v3, v0, :cond_8

    iput-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v3, Lcom/android/launcher3/appprediction/AppsDividerView$1;->$SwitchMap$com$android$launcher3$appprediction$AppsDividerView$DividerType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mAllAppsLabelTextColor:I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mStrokeColor:I

    :goto_3
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateViewVisibility()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    :cond_8
    return-void
.end method

.method private updateViewVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/appprediction/AppsDividerView;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/appprediction/AppsDividerView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->F(Ls3/d;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v0}, Lo3/b$b;->a()Lo3/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo3/b;->I(Ls3/d;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->LINE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerSize:[I

    const/4 v4, 0x1

    aget v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    aget v5, v3, v4

    int-to-float v7, v0

    int-to-float v8, v1

    aget v2, v3, v2

    add-int/2addr v0, v2

    int-to-float v9, v0

    aget v0, v3, v4

    add-int/2addr v1, v0

    int-to-float v10, v1

    int-to-float v12, v5

    iget-object v13, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    move-object v6, p1

    move v11, v12

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v1

    int-to-float v3, v2

    invoke-virtual {p1, p0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v1

    int-to-float p0, p0

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNewPackSelected(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object p1, Lz3/d;->a:Lz3/d;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lz3/d;->b(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mStrokeColor:I

    iget-object v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShowAllAppsLabel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mSupportAppLabelTypeConfig:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mShowAllAppsLabel:Z

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateDividerType()V

    :cond_1
    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iput-boolean p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mIsScrolledOut:Z

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateViewVisibility()V

    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    iput-boolean p3, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mTabsHidden:Z

    iput-object p2, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mRows:[Lcom/android/launcher3/allapps/FloatingHeaderRow;

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/AppsDividerView;->updateDividerType()V

    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/appprediction/AppsDividerView;->mDividerType:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    sget-object v0, Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;->NONE:Lcom/android/launcher3/appprediction/AppsDividerView$DividerType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
