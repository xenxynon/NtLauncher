.class public abstract Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final applyBt:Landroid/widget/Button;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final applyBtGuideline:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final configPreferenceScreen:Landroidx/fragment/app/FragmentContainerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mViewModel:Lcom/nothing/launcher/setting/screenlayout/a;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final preferenceGuideline:Landroidx/constraintlayout/widget/Guideline;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final previewViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/Button;Landroidx/constraintlayout/widget/Guideline;Landroidx/fragment/app/FragmentContainerView;Landroidx/constraintlayout/widget/Guideline;Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->applyBt:Landroid/widget/Button;

    iput-object p5, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->applyBtGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->configPreferenceScreen:Landroidx/fragment/app/FragmentContainerView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->preferenceGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p8, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->previewViewPager:Landroidx/viewpager2/widget/ViewPager2;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0e0089

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

    return-object p0
.end method


# virtual methods
.method public abstract setViewModel(Lcom/nothing/launcher/setting/screenlayout/a;)V
    .param p1    # Lcom/nothing/launcher/setting/screenlayout/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
