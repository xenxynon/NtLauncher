.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_END_ITEMS:I = 0x3

.field private static final SLIDER_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RowView"

.field private static final sCanSpecifyLargerRangeBarHeight:Z


# instance fields
.field private mActionSpinner:Landroid/widget/ProgressBar;

.field private mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowTwoLines:Z

.field private mContent:Landroid/widget/LinearLayout;

.field private mDivider:Landroid/view/View;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mIdealRangeHeight:I

.field private mImageSize:I

.field private mIsHeader:Z

.field mIsRangeSliding:Z

.field private mIsSingleItem:Z

.field mLastSentRangeUpdate:J

.field private mLastUpdatedText:Landroid/widget/TextView;

.field protected mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSmallHeight:I

.field private mMeasuredRangeHeight:I

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/widget/ProgressBar;

.field mRangeHasPendingUpdate:Z

.field private mRangeItem:Landroidx/slice/SliceItem;

.field mRangeMinValue:I

.field mRangeUpdater:Ljava/lang/Runnable;

.field mRangeUpdaterRunning:Z

.field mRangeValue:I

.field private mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field mRowContent:Landroidx/slice/widget/RowContent;

.field mRowIndex:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field mShowActionSpinner:Z

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    sget v0, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    sget v0, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    sget v0, Landroidx/slice/view/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    sget v0, Landroidx/slice/view/R$id;->action_sent_indicator:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/slice/view/R$dimen;->abc_slice_row_range_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    return-void
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 8

    new-instance v6, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result p3

    xor-int/lit8 v0, p3, 0x1

    if-eqz p3, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    new-instance v3, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v4

    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v3, v4, v0, v2, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    const/4 v7, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {v3, v1, v1, v7}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    :cond_2
    iget-object p4, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object v0, v6

    move-object v1, p1

    move-object v2, v3

    move-object v3, p4

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v6, v7}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    :cond_3
    if-eqz p3, :cond_4

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    :goto_1
    invoke-virtual {p0, p1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 6

    if-eqz p3, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v1

    const-string v4, "action"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "shortcut"

    invoke-virtual {p1, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v1, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v1, p2, v0, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    return v2

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_3

    return v3

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/slice/SliceItem;

    :cond_4
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p3

    const-string v1, "image"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_5

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p3

    const-string v4, "no_tint"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    move-object v5, v1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object p3

    const-string v4, "long"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    move-object v5, p1

    move-object p3, v1

    goto :goto_1

    :cond_6
    move-object p3, v1

    move-object v5, p3

    :goto_1
    move v4, v3

    :goto_2
    if-eqz p3, :cond_9

    xor-int/lit8 p1, v4, 0x1

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_7

    const/4 p3, -0x1

    if-eq p2, p3, :cond_7

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    iget p3, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_8

    iget p0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 p0, p0, 0x2

    goto :goto_3

    :cond_8
    move p0, v3

    :goto_3
    invoke-virtual {v1, p0, p0, p0, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    goto :goto_4

    :cond_9
    if-eqz v5, :cond_b

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v4

    invoke-static {p2, v4, v5}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p0, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    return v2
.end method

.method private addRange(Landroidx/slice/SliceItem;)V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_0
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const-string v2, "int"

    const-string v3, "max"

    invoke-static {p1, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result p1

    iget v2, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr p1, v2

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_3
    iget p1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object p1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    check-cast v0, Landroid/widget/SeekBar;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    if-eq v1, v4, :cond_5

    if-eqz p1, :cond_5

    invoke-static {p1, v1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_6
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateRangePadding()V

    return-void
.end method

.method private addSubtitle(Z)V
    .locals 9

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    :goto_0
    iget-boolean v2, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    iget-wide v5, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    const-wide/16 v7, -0x1

    cmp-long v2, v5, v7

    if-eqz v2, :cond_2

    invoke-direct {p0, v5, v6}, Landroidx/slice/widget/RowView;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/slice/view/R$string;->abc_slice_updated:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v2, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v5, "partial"

    invoke-virtual {v0, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v1

    :goto_3
    if-eqz v0, :cond_8

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v5, :cond_8

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_6

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v5

    goto :goto_4

    :cond_6
    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v5

    :goto_4
    int-to-float v5, v5

    invoke-virtual {v6, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v5, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getVerticalHeaderTextPadding()I

    move-result v5

    goto :goto_5

    :cond_7
    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getVerticalTextPadding()I

    move-result v5

    :goto_5
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v5, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    const/4 v5, 0x2

    if-eqz v2, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v3, v6, v4, v7, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v3, :cond_b

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_a

    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v3

    goto :goto_6

    :cond_a
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v3

    :goto_6
    int-to-float v3, v3

    invoke-virtual {v6, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v6, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/16 v7, 0x8

    if-eqz v6, :cond_c

    move v6, v7

    goto :goto_7

    :cond_c
    move v6, v4

    :goto_7
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    move v7, v4

    :cond_d
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v3, :cond_f

    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    move v3, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v3, v1

    :goto_9
    if-eqz v3, :cond_10

    if-nez p1, :cond_10

    if-eqz v0, :cond_10

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_a

    :cond_10
    move v5, v1

    :goto_a
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v5, v1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v4

    :goto_b
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private determineRangeValues(Landroidx/slice/SliceItem;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v1, "int"

    const-string v2, "min"

    invoke-static {p1, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v0

    :cond_1
    iput v0, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v2, "value"

    invoke-static {p1, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getInt()I

    move-result p1

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    :cond_2
    return-void
.end method

.method private getRelativeTimeString(J)Ljava/lang/CharSequence;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide p1, 0x7528ad000L

    cmp-long v2, v0, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    div-long/2addr v0, p1

    long-to-int p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_years:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/32 p1, 0x5265c00

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    div-long/2addr v0, p1

    long-to-int p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_days:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/32 p1, 0xea60

    cmp-long v2, v0, p1

    if-lez v2, :cond_2

    div-long/2addr v0, p1

    long-to-int p1, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Landroidx/slice/view/R$plurals;->abc_slice_duration_min:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRowContentHeight()I
    .locals 2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result v0

    :goto_1
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    sub-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method private populateViews(Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    :cond_1
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getLayoutDirItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    return-void

    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_5

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-lez v3, :cond_5

    move v3, v0

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    if-eqz v3, :cond_6

    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-direct {p0, v2, v3, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v3

    :cond_6
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v3, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v3, :cond_a

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_9

    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getHeaderTitleSize()I

    move-result v3

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Landroidx/slice/widget/SliceStyle;->getTitleSize()I

    move-result v3

    :goto_3
    int-to-float v3, v3

    invoke-virtual {v5, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v5, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v5}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    move v4, v1

    :cond_b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_c

    move v2, v0

    goto :goto_4

    :cond_c
    move v2, v1

    :goto_4
    invoke-direct {p0, v2}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v2, v3, :cond_d

    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v2, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v2, v3, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    :cond_d
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v2, :cond_e

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    :cond_e
    if-nez p1, :cond_f

    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->determineRangeValues(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v1}, Landroidx/slice/widget/RowView;->addRange(Landroidx/slice/SliceItem;)V

    goto :goto_5

    :cond_f
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    :goto_5
    return-void

    :cond_10
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method private resetViewState()V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    :cond_1
    iget-object p0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x101030e

    invoke-static {p0, v0}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private showSeeMore()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Landroidx/slice/widget/RowView$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    :cond_1
    return-void
.end method

.method private updateEndItems()V
    .locals 10

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object v0, v1

    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "action"

    const/4 v8, 0x1

    if-ge v3, v6, :cond_7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/slice/SliceItem;

    if-eqz v6, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    :goto_1
    const/4 v9, 0x3

    if-ge v4, v9, :cond_6

    iget v9, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    invoke-direct {p0, v6, v9, v2}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v1, :cond_4

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v1, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    if-ne v4, v8, :cond_6

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v5

    const-string v6, "image"

    invoke-static {v5, v6}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v8

    goto :goto_2

    :cond_5
    move v5, v2

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    if-lez v4, :cond_8

    move v6, v2

    goto :goto_3

    :cond_8
    move v6, v3

    :goto_3
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mDivider:Landroid/view/View;

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    move v3, v2

    :cond_9
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_a

    invoke-static {v0, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v8

    goto :goto_4

    :cond_a
    move v0, v2

    :goto_4
    if-eqz v1, :cond_b

    move v1, v8

    goto :goto_5

    :cond_b
    move v1, v2

    :goto_5
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v3, :cond_c

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v8}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_8

    :cond_c
    if-eq v1, v0, :cond_10

    if-eq v4, v8, :cond_d

    if-eqz v0, :cond_10

    :cond_d
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/core/SliceActionImpl;

    :goto_6
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_7

    :cond_e
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ne v0, v8, :cond_f

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    goto :goto_6

    :cond_f
    :goto_7
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v8}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    move v2, v8

    :cond_10
    :goto_8
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_11

    if-nez v2, :cond_11

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-boolean v8, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    :cond_11
    return-void
.end method

.method private updateRangePadding()V
    .locals 6

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    instance-of v1, v0, Landroid/widget/SeekBar;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getLineCount()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    :goto_1
    if-eqz v0, :cond_2

    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    div-int/lit8 v4, v0, 0x2

    if-lt v3, v4, :cond_2

    iget v5, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    if-lt v5, v4, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    iget p0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    invoke-virtual {v0, v3, v1, v5, p0}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    div-int/lit8 v2, v0, 0x2

    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    iget v3, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    add-int/2addr v3, v2

    iget v4, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    add-int/2addr v4, v2

    iget p0, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    invoke-virtual {v0, v3, v1, v4, p0}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget p0, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    invoke-virtual {v0, p0}, Landroidx/slice/widget/RowContent;->getActualHeight(I)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSmallHeight()I
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget p0, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    invoke-virtual {v0, p0}, Landroidx/slice/widget/RowContent;->getSmallHeight(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    :goto_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    if-eqz v0, :cond_2

    instance-of p1, p1, Landroidx/slice/widget/SliceActionView;

    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {p1, v0, v1}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "RowView"

    const-string v0, "PendingIntent for slice cannot be sent"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    iget p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iget p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    add-int/2addr p1, p2

    iget-object p2, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p3, p1

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p1

    const/4 p4, 0x0

    invoke-virtual {p2, p4, p4, p3, p1}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    iget p1, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    iget p2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result p2

    add-int/2addr p2, p1

    iget p1, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr p1, p2

    iget-object p0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p0, p4, p2, p3, p1}, Landroid/widget/ProgressBar;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceChildView;->getMode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSmallHeight()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getActualHeight()I

    move-result p2

    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_3

    sget-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/slice/widget/RowView;->mIdealRangeHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_2
    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v2, p1, v0}, Landroid/widget/FrameLayout;->measureChild(Landroid/view/View;II)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    :cond_3
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    return-void
.end method

.method sendSliderValue()V
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget p0, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "RowView"

    const-string v1, "PendingIntent for slice cannot be sent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public setInsets(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateRangePadding()V

    :cond_0
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    :cond_1
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/RowView;->mMaxSmallHeight:I

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public setSingleItem(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mIsSingleItem:Z

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    :cond_0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 3

    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result p5

    if-eqz p5, :cond_1

    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p5, :cond_0

    new-instance v0, Landroidx/slice/SliceStructure;

    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object p5

    invoke-direct {v0, p5}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {p5}, Landroidx/slice/widget/RowContent;->getSlice()Landroidx/slice/SliceItem;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p5

    new-instance v1, Landroidx/slice/SliceStructure;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    invoke-virtual {v1, v0}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p5, :cond_1

    if-eqz v0, :cond_1

    const/4 p5, 0x1

    goto :goto_1

    :cond_1
    move p5, p4

    :goto_1
    iput-boolean p4, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    new-instance p2, Landroidx/slice/widget/RowContent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-boolean v0, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    invoke-direct {p2, p4, p1, v0}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    iput-object p2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {p0, p5}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object p1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method updateActionSpinner()V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean p0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
