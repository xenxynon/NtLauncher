.class public abstract Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "SourceFile"


# instance fields
.field public final containerIconPackSwitch:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final iconPackListView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final previewRecyclerview:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final previewViewPager:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final switchSettings:Lcom/nothing/ui/support/NtCustSwitch;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/viewpager2/widget/ViewPager2;Lcom/nothing/ui/support/NtCustSwitch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    iput-object p4, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->containerIconPackSwitch:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->iconPackListView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p6, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->previewRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p7, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->previewViewPager:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p8, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->switchSettings:Lcom/nothing/ui/support/NtCustSwitch;

    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;
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

    const v0, 0x7f0e0088

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    return-object p0
.end method
