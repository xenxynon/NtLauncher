.class public final Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$a;
    }
.end annotation


# static fields
.field public static final o:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$a;


# instance fields
.field private final g:Ln5/e;

.field private h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

.field private i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

.field private j:Lcom/google/android/material/appbar/AppBarLayout;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:F

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->o:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-class v0, Lg4/g;

    invoke-static {v0}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$e;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$f;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$g;

    invoke-direct {v3, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$g;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->g:Ln5/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(IIILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->g(IIILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    return-object p0
.end method

.method public static final synthetic c(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->k:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic d(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)Lg4/g;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->f()Lg4/g;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h(I)V

    return-void
.end method

.method private final f()Lg4/g;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->g:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg4/g;

    return-object p0
.end method

.method private static final g(IIILandroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p4

    iget p4, p4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p3, p0, p1, p2, p4}, Landroid/view/View;->setPadding(IIII)V

    sget-object p0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p0
.end method

.method private final h(I)V
    .locals 2

    int-to-float p1, p1

    iget v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->l:F

    div-float/2addr p1, v0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->m:I

    float-to-int p1, p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iget v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->n:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->n:I

    iget-object p0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->j:Lcom/google/android/material/appbar/AppBarLayout;

    if-nez p0, :cond_0

    const-string p0, "appBar"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "lookupContext(context)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    iput-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    invoke-direct {p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->f()Lg4/g;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg4/g;->l(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07018f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->l:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060368

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->m:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const p3, 0x7f0e00eb

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b02aa

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view.findViewById(R.id.n\u2026hide_apps_edit_container)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    iput-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    iget-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    if-nez p2, :cond_0

    const-string p2, "activityContext"

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    const p3, 0x7f0b0086

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "activityContext.findView\u2026pBarLayout>(R.id.app_bar)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->j:Lcom/google/android/material/appbar/AppBarLayout;

    return-object p1
.end method

.method public onStop()V
    .locals 9

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->k:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "appsView"

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getHiddenApps()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "EditHiddenAppsFragment"

    const-string v1, "onStop hiddenApps has changed, save to db"

    invoke-static {v0, v1}, Ly2/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;

    invoke-direct {v6, p0, v2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$b;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    const-string p2, "activityContext"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lo4/a;->getDeviceProfile()Lj3/a;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    iget-object v1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->i:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsActivity;

    if-nez v1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1
    invoke-virtual {v1}, Lo4/a;->getDeviceProfile()Lj3/a;

    move-result-object p2

    iget p2, p2, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    const-string v3, "appsView"

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    invoke-virtual {v2}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getRecyclerView()Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    move-result-object v2

    new-instance v4, Lo4/d;

    invoke-direct {v4, p1, v1, p2}, Lo4/d;-><init>(III)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;->h:Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;

    if-nez p1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    invoke-virtual {p1}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsContainerView;->getRecyclerView()Lcom/nothing/launcher/hiddenapps/HiddenAppsRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$c;

    invoke-direct {p2, p0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$c;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d;

    invoke-direct {v4, p0, v0}, Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment$d;-><init>(Lcom/nothing/launcher/setting/hiddenapps/EditHiddenAppsFragment;Lq5/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method
