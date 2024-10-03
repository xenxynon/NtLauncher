.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
.super Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
        "Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayContext;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnInvalidateHeaderListener:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected inflateSearchBox()Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->isSearchSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->inflateSearchBox()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->mHeader:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsFallbackSearchContainer;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsFallbackSearchContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p0, 0x7f0b032e

    invoke-virtual {v0, p0}, Landroid/view/View;->setId(I)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public invalidateHeader()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->invalidateHeader()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->mOnInvalidateHeaderListener:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/taskbar/allapps/a;->g:Lcom/android/launcher3/taskbar/allapps/a;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public isInAllApps()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isSearchSupported()Z
    .locals 0

    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_SEARCH_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p0

    return p0
.end method

.method setOnInvalidateHeaderListener(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;->mOnInvalidateHeaderListener:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView$OnInvalidateHeaderListener;

    return-void
.end method
