.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$SliceMode;,
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final MODE_LARGE:I = 0x2

.field public static final MODE_SHORTCUT:I = 0x3

.field public static final MODE_SMALL:I = 0x1

.field private static final REFRESH_LAST_UPDATED_IN_MILLIS:I = 0xea60

.field public static final SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceView"


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

.field mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDownX:I

.field private mDownY:I

.field mHandler:Landroid/os/Handler;

.field mInLongpress:Z

.field private mIsScrollable:Z

.field private mLargeHeight:I

.field mListContent:Landroidx/slice/widget/ListContent;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMinTemplateHeight:I

.field private mMode:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mPressing:Z

.field mRefreshLastUpdated:Ljava/lang/Runnable;

.field private mShortcutSize:I

.field private mShowActions:Z

.field private mShowLastUpdated:Z

.field private mSliceMetadata:Landroidx/slice/SliceMetadata;

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/slice/widget/SliceView$3;

    invoke-direct {v0}, Landroidx/slice/widget/SliceView$3;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyConfigurations()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v1, v0, Landroidx/slice/widget/LargeTemplateView;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/slice/widget/LargeTemplateView;

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    invoke-virtual {v0, v1}, Landroidx/slice/widget/LargeTemplateView;->setScrollable(Z)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    instance-of p1, p1, Landroidx/slice/widget/ShortcutView;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p0, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-direct {p1, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p1

    :cond_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getHeightForMode(I)I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    return p0

    :cond_1
    if-lez p1, :cond_2

    iget v2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt p1, v2, :cond_2

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1, v2}, Landroidx/slice/widget/ListContent;->setMaxSmallHeight(I)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget v1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    invoke-virtual {p1, v1}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    move p1, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/ListContent;->setMaxSmallHeight(I)V

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v1}, Landroidx/slice/widget/SliceChildView;->setMaxSmallHeight(I)V

    :goto_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    invoke-virtual {v0, p1, p0}, Landroidx/slice/widget/ListContent;->getLargeHeight(IZ)I

    move-result p0

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getSmallHeight()I

    move-result p0

    :goto_1
    return p0

    :cond_4
    :goto_2
    return v1
.end method

.method private getTimeToExpiry()J
    .locals 8

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const-wide/16 v6, -0x1

    cmp-long p0, v2, v6

    if-eqz p0, :cond_2

    cmp-long p0, v4, v2

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    sub-long v0, v2, v4

    :cond_2
    :goto_0
    return-wide v0
.end method

.method private getTintColor()I
    .locals 3

    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr p1, v1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    iget p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v0, p1, :cond_3

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    :goto_0
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_1
    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    new-instance v0, Landroidx/slice/widget/SliceStyle;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    new-instance p1, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/slice/widget/LargeTemplateView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    new-instance p1, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, -0x111112

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .locals 3
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceMetrics;->getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    :cond_3
    return-void
.end method

.method private isNeverExpired()Z
    .locals 5

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    iget p2, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroidx/slice/widget/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logVisible()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceMetrics;->logHidden()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_1
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MODE SHORTCUT"

    return-object p0

    :cond_1
    const-string p0, "MODE LARGE"

    return-object p0

    :cond_2
    const-string p0, "MODE SMALL"

    return-object p0
.end method

.method private refreshLastUpdatedLabel(Z)V
    .locals 6

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->isNeverExpired()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isExpired()Z

    move-result v1

    const-wide/32 v2, 0xea60

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTimeToExpiry()J

    move-result-wide v4

    add-long/2addr v2, v4

    :goto_0
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateActions()V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v3, :cond_1

    iget v3, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewConfig()V
    .locals 6

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v2, v1, Landroidx/slice/widget/ShortcutView;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceChildView;->getLoadingActions()Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Landroidx/slice/widget/ShortcutView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/slice/widget/ShortcutView;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    if-eq v0, v4, :cond_1

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    new-instance v2, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/slice/widget/LargeTemplateView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v0}, Landroidx/slice/widget/SliceChildView;->setMode(I)V

    if-eqz v3, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    :cond_3
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceView;->mMode:I

    return p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    return-object p0
.end method

.method isExpired()Z
    .locals 7

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getExpiry()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    const-wide/16 v5, -0x1

    cmp-long p0, v1, v5

    if-eqz p0, :cond_1

    cmp-long p0, v3, v1

    if-lez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isScrollable()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    return p0
.end method

.method public isShowingActionRow()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    return p0
.end method

.method public isSliceViewClickable()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_0
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Landroidx/slice/core/SliceActionImpl;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceChildView;->setActionLoading(Landroidx/slice/SliceItem;)V

    :cond_0
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_2

    new-instance p1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v1

    const/4 v2, 0x3

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    aget v0, v3, v0

    invoke-direct {p1, v1, v2, v4, v0}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-interface {v1, p1, v0}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v0, p1}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SliceView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    const/4 p3, 0x0

    add-int/2addr p2, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p4

    add-int/2addr p2, p4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    invoke-virtual {p1, p3, p3, p2, p4}, Landroid/view/View;->layout(IIII)V

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    const/16 p4, 0x8

    if-eq p2, p4, :cond_0

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    add-int/2addr p4, p3

    iget-object p5, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, p3

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2, p3, p4, p5, p1}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Landroidx/slice/widget/SliceView;->mMode:I

    const/4 v2, 0x3

    if-ne v2, v1, :cond_0

    iget p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    iget v1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    :cond_2
    if-nez p2, :cond_4

    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_1
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->getHeightForMode(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    add-int v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    if-ge v3, v6, :cond_9

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result p2

    const/4 v6, 0x2

    if-ne p2, v6, :cond_6

    iget p2, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int/2addr p2, v1

    if-lt v3, p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result p2

    if-ne p2, v2, :cond_7

    iget v4, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    goto :goto_3

    :cond_7
    iget p2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt v5, p2, :cond_8

    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    :goto_2
    if-ne p2, v7, :cond_a

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr p1, v2

    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr p2, v2

    invoke-static {p2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0, v2, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    add-int/2addr v1, p1

    add-int/2addr v4, v1

    invoke-virtual {p0, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_2
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceStyle;->setTintColor(I)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    return-void
.end method

.method public setClickInfo([I)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    return-void
.end method

.method public setMode(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/SliceView;->setMode(IZ)V

    return-void
.end method

.method public setMode(IZ)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "SliceView"

    if-eqz p2, :cond_0

    const-string p2, "Animation not supported yet"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p2, p0, Landroidx/slice/widget/SliceView;->mMode:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v1, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    :cond_2
    iput p1, p0, Landroidx/slice/widget/SliceView;->mMode:I

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateViewConfig()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1    # Landroidx/slice/widget/SliceView$OnSliceActionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mIsScrollable:Z

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v0, p0, Landroidx/slice/widget/LargeTemplateView;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/slice/widget/LargeTemplateView;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/LargeTemplateView;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public setShowActionRow(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 6
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {v2, v4}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {v4}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceChildView;->resetView()V

    :cond_2
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    new-instance p1, Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-direct {p1, v2, v4, v5}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroidx/slice/widget/SliceStyle;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceChildView;->resetView()V

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void

    :cond_3
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, v2}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {p1, v2}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {p1}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {p1}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v4

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, v4, v5}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->isPermissionSlice()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :goto_1
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set an action that isn\'t available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to set actions on a view without a slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTint(I)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setAccentColor(I)V

    return-void
.end method
