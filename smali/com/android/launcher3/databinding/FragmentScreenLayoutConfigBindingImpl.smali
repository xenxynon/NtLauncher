.class public Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;
.super Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mCallback1:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0b02e5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b02e0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0105

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0b0090

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11

    const/4 v0, 0x1

    aget-object v1, p3, v0

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    const/4 v1, 0x5

    aget-object v1, p3, v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x4

    aget-object v1, p3, v1

    move-object v8, v1

    check-cast v8, Landroidx/fragment/app/FragmentContainerView;

    const/4 v1, 0x3

    aget-object v1, p3, v1

    move-object v9, v1

    check-cast v9, Landroidx/constraintlayout/widget/Guideline;

    const/4 v1, 0x2

    aget-object v1, p3, v1

    move-object v10, v1

    check-cast v10, Landroidx/viewpager2/widget/ViewPager2;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/viewpager2/widget/ViewPager2;)V

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    iget-object p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->applyBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    new-instance p1, Lcom/android/launcher3/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/android/launcher3/generated/callback/OnClickListener;-><init>(Lcom/android/launcher3/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeViewModelShowApplyBt(Landroidx/databinding/ObservableBoolean;I)Z
    .locals 2

    if-nez p2, :cond_0

    monitor-enter p0

    :try_start_0
    iget-wide p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->mViewModel:Lcom/nothing/launcher/setting/screenlayout/a;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/nothing/launcher/setting/screenlayout/a;->m(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->mViewModel:Lcom/nothing/launcher/setting/screenlayout/a;

    const-wide/16 v6, 0x7

    and-long v8, v0, v6

    cmp-long v8, v8, v2

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/nothing/launcher/setting/screenlayout/a;->s()Landroidx/databinding/ObservableBoolean;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, v9, v4}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v9

    :goto_0
    if-eqz v8, :cond_3

    if-eqz v4, :cond_2

    const-wide/16 v10, 0x10

    goto :goto_1

    :cond_2
    const-wide/16 v10, 0x8

    :goto_1
    or-long/2addr v0, v10

    :cond_3
    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    move v9, v4

    :cond_5
    :goto_2
    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    cmp-long v4, v4, v2

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->applyBt:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->applyBt:Landroid/widget/Button;

    invoke-virtual {p0, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_7
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x4

    :try_start_0
    iput-wide v0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->onChangeViewModelShowApplyBt(Landroidx/databinding/ObservableBoolean;I)Z

    move-result p0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->setViewModel(Lcom/nothing/launcher/setting/screenlayout/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setViewModel(Lcom/nothing/launcher/setting/screenlayout/a;)V
    .locals 4
    .param p1    # Lcom/nothing/launcher/setting/screenlayout/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->mViewModel:Lcom/nothing/launcher/setting/screenlayout/a;

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBindingImpl;->mDirtyFlags:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
