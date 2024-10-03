.class public final Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;
.super Lcom/nothing/launcher/setting/BaseHomePreviewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$a;
    }
.end annotation


# static fields
.field public static final v:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$a;


# instance fields
.field private final l:F

.field private final m:F

.field private final n:Ln5/e;

.field private final o:Ln5/e;

.field private p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

.field private q:Lq4/c;

.field private r:Lq4/g;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lt4/g;",
            ">;"
        }
    .end annotation
.end field

.field private t:Li6/v1;

.field private final u:Ljava/util/concurrent/CancellationException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->v:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;-><init>()V

    const v0, 0x3f051eb8    # 0.52f

    iput v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->l:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->m:F

    const-class v0, Ls4/a;

    invoke-static {v0}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$d;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$d;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v2, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$e;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    new-instance v4, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$f;

    invoke-direct {v4, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$f;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {p0, v0, v1, v2, v4}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->n:Ln5/e;

    sget-object v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;->g:Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$c;

    new-instance v1, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$g;

    invoke-direct {v1, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$g;-><init>(Landroidx/fragment/app/Fragment;)V

    sget-object v2, Ln5/i;->i:Ln5/i;

    new-instance v4, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;

    invoke-direct {v4, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$h;-><init>(Ly5/a;)V

    invoke-static {v2, v4}, Ln5/f;->a(Ln5/i;Ly5/a;)Ln5/e;

    move-result-object v1

    const-class v2, Ls4/b;

    invoke-static {v2}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v2

    new-instance v4, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;

    invoke-direct {v4, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$i;-><init>(Ln5/e;)V

    new-instance v5, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;

    invoke-direct {v5, v3, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$j;-><init>(Ly5/a;Ln5/e;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$k;

    invoke-direct {v0, p0, v1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$k;-><init>(Landroidx/fragment/app/Fragment;Ln5/e;)V

    :cond_0
    invoke-static {p0, v2, v4, v5, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->o:Ln5/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->s:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->u:Ljava/util/concurrent/CancellationException;

    return-void
.end method

.method private final A()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->iconPackListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Lq4/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lq4/c;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->q:Lq4/c;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3, v1}, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/i;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final B()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->containerIconPackSwitch:Landroid/widget/LinearLayout;

    sget-object v3, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {v3}, Lo3/b$b;->a()Lo3/b;

    move-result-object v3

    invoke-virtual {v3}, Lo3/b;->C()Z

    move-result v3

    iget-object v4, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    iget-object v1, v1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->switchSettings:Lcom/nothing/ui/support/NtCustSwitch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v1, Lq4/e;

    invoke-direct {v1, p0}, Lq4/e;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final C(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->switchSettings:Lcom/nothing/ui/support/NtCustSwitch;

    invoke-virtual {p1}, Lcom/nothing/ui/support/NtCustSwitch;->toggle()V

    iget-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, v0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->switchSettings:Lcom/nothing/ui/support/NtCustSwitch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->E(Z)V

    return-void
.end method

.method private final D()V
    .locals 5

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->previewRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    new-instance v2, Lq4/g;

    invoke-direct {v2}, Lq4/g;-><init>()V

    iput-object v2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->r:Lq4/g;

    new-instance v2, Lq4/i;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lq4/i;-><init>(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v2, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->r:Lq4/g;

    if-nez v2, :cond_1

    const-string v2, "previewListAdapter"

    invoke-static {v2}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v2, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v3, "requireContext()"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4, v3, v1}, Lcom/nothing/launcher/widget/recyclerview/CenterLinearLayoutManager;-><init>(Landroid/content/Context;IILkotlin/jvm/internal/i;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final E(Z)V
    .locals 0

    sget-object p0, Lo3/b;->p:Lo3/b$b;

    invoke-virtual {p0}, Lo3/b$b;->a()Lo3/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lo3/b;->B(Z)V

    return-void
.end method

.method private static final F(Ly5/l;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic n(Ly5/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->F(Ly5/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic o(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->C(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic p(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    return-object p0
.end method

.method public static final synthetic q(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ljava/util/concurrent/CancellationException;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->u:Ljava/util/concurrent/CancellationException;

    return-object p0
.end method

.method public static final synthetic r(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Li6/v1;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->t:Li6/v1;

    return-object p0
.end method

.method public static final synthetic s(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lq4/c;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->q:Lq4/c;

    return-object p0
.end method

.method public static final synthetic t(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->s:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic u(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Ls4/b;
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->z()Ls4/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic v(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)Lq4/g;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->r:Lq4/g;

    return-object p0
.end method

.method public static final synthetic w(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Li6/v1;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->t:Li6/v1;

    return-void
.end method

.method private final x()V
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$b;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$b;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Lq5/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method private final z()Ls4/b;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->o:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/b;

    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/nothing/launcher/setting/PreviewItemFragment;
    .locals 0

    sget-object p0, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;->k:Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment$a;->a(I)Lcom/nothing/launcher/setting/iconpack/IconPackPreviewItemFragment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Ln4/d;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->y()Ls4/a;

    move-result-object p0

    return-object p0
.end method

.method public f()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->previewViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v0, "binding.previewViewPager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->m:F

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->l:F

    return p0
.end method

.method public m()V
    .locals 8

    invoke-super {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->m()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->z()Ls4/b;

    move-result-object v0

    invoke-virtual {v0}, Ls4/b;->j()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$l;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;)V

    new-instance v3, Lq4/f;

    invoke-direct {v3, v2}, Lq4/f;-><init>(Ly5/l;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    new-instance v5, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment$m;-><init>(Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;Lq5/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->p:Lcom/android/launcher3/databinding/FragmentIconPackPickerBinding;

    if-nez p1, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "binding.root"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->t:Li6/v1;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Li6/v1;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Li6/v1;->A()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->u:Ljava/util/concurrent/CancellationException;

    invoke-interface {v0, v1}, Li6/v1;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->D()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->A()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->B()V

    invoke-direct {p0}, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->x()V

    return-void
.end method

.method public y()Ls4/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/iconpack/IconPackPickerFragment;->n:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/a;

    return-object p0
.end method
