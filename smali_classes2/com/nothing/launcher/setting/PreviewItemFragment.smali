.class public abstract Lcom/nothing/launcher/setting/PreviewItemFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/PreviewItemFragment$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/nothing/launcher/setting/PreviewItemFragment$a;


# instance fields
.field private g:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

.field private h:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/PreviewItemFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/PreviewItemFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/PreviewItemFragment;->i:Lcom/nothing/launcher/setting/PreviewItemFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Ly5/l;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment;->k(Ly5/l;Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic b(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment;->g(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment;->h(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment;->i(Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Lcom/nothing/launcher/setting/PreviewItemFragment;)Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment;->g:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    return-object p0
.end method

.method public static final synthetic f(Lcom/nothing/launcher/setting/PreviewItemFragment;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/PreviewItemFragment;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method private final g(Lq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->j()Ln4/d;

    move-result-object v0

    invoke-virtual {v0}, Ln4/d;->c()Lkotlinx/coroutines/flow/c0;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/PreviewItemFragment$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nothing/launcher/setting/PreviewItemFragment$b;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final h(Lq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->j()Ln4/d;

    move-result-object v0

    invoke-virtual {v0}, Ln4/d;->d()Lkotlinx/coroutines/flow/c0;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/PreviewItemFragment$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nothing/launcher/setting/PreviewItemFragment$c;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private final i(Lq5/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq5/d<",
            "-",
            "Ln5/t;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->j()Ln4/d;

    move-result-object v0

    instance-of v1, v0, Ls4/a;

    if-eqz v1, :cond_0

    check-cast v0, Ls4/a;

    invoke-virtual {v0}, Ls4/a;->m()Lkotlinx/coroutines/flow/y;

    move-result-object v0

    new-instance v1, Lcom/nothing/launcher/setting/PreviewItemFragment$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nothing/launcher/setting/PreviewItemFragment$d;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    invoke-static {v0, v1, p1}, Lkotlinx/coroutines/flow/g;->i(Lkotlinx/coroutines/flow/e;Ly5/p;Lq5/d;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lr5/b;->c()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ln5/t;->a:Ln5/t;

    return-object p0
.end method

.method private static final k(Ly5/l;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ly5/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract j()Ln4/d;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    const-string v1, "adapter_item_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/nothing/launcher/setting/PreviewItemFragment;->h:Ljava/lang/Integer;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0e013a

    const/4 v0, 0x0

    invoke-static {p1, p3, p2, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/nothing/launcher/setting/PreviewItemFragment$e;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/PreviewItemFragment$e;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const-string p3, "inflate<SinglePreviewIte\u2026}\n            }\n        }"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/nothing/launcher/setting/PreviewItemFragment;->g:Lcom/android/launcher3/databinding/SinglePreviewItemLayoutBinding;

    if-nez p2, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "binding.root"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->j()Ln4/d;

    move-result-object v0

    invoke-virtual {v0}, Ln4/d;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/PreviewItemFragment;->j()Ln4/d;

    move-result-object p1

    invoke-virtual {p1}, Ln4/d;->e()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    new-instance v0, Lcom/nothing/launcher/setting/PreviewItemFragment$f;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/PreviewItemFragment$f;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;)V

    new-instance v1, Ln4/i;

    invoke-direct {v1, v0}, Ln4/i;-><init>(Ly5/l;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    new-instance v3, Lcom/nothing/launcher/setting/PreviewItemFragment$g;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/nothing/launcher/setting/PreviewItemFragment$g;-><init>(Lcom/nothing/launcher/setting/PreviewItemFragment;Lq5/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method
