.class public abstract Landroidx/slice/widget/SliceChildView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected mInsetBottom:I

.field protected mInsetEnd:I

.field protected mInsetStart:I

.field protected mInsetTop:I

.field protected mLastUpdated:J

.field protected mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

.field protected mMode:I

.field protected mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field protected mShowLastUpdated:Z

.field protected mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field protected mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLoadingActions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    iget p0, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    return p0
.end method

.method public getSmallHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract resetView()V
.end method

.method public setActionLoading(Landroidx/slice/SliceItem;)V
    .locals 0

    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 0

    return-void
.end method

.method public setInsets(IIII)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mInsetStart:I

    iput p2, p0, Landroidx/slice/widget/SliceChildView;->mInsetTop:I

    iput p3, p0, Landroidx/slice/widget/SliceChildView;->mInsetEnd:I

    iput p4, p0, Landroidx/slice/widget/SliceChildView;->mInsetBottom:I

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/slice/widget/SliceChildView;->mLastUpdated:J

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

    return-void
.end method

.method public setMaxSmallHeight(I)V
    .locals 0

    return-void
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mMode:I

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/widget/SliceChildView;->mShowLastUpdated:Z

    return-void
.end method

.method public setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    return-void
.end method

.method public setSliceActionLoadingListener(Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

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

    return-void
.end method

.method public setSliceContent(Landroidx/slice/widget/ListContent;)V
    .locals 0

    return-void
.end method

.method public setSliceItem(Landroidx/slice/SliceItem;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceChildView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroidx/slice/widget/SliceChildView;->mTintColor:I

    return-void
.end method
