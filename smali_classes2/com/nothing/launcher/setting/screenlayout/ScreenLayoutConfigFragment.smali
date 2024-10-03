.class public final Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;
.super Lcom/nothing/launcher/setting/BaseHomePreviewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$a;


# instance fields
.field private l:Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

.field private m:J

.field private n:Li6/v1;

.field private final o:Lcom/android/launcher3/util/RunnableList;

.field private final p:F

.field private final q:F

.field private final r:Ln5/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$a;-><init>(Lkotlin/jvm/internal/i;)V

    sput-object v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->s:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->o:Lcom/android/launcher3/util/RunnableList;

    const v0, 0x3eeb851f    # 0.46f

    iput v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->p:F

    const v0, 0x3f07ae14    # 0.53f

    iput v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->q:F

    sget-object v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$b;->g:Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$b;

    const-class v1, Lcom/nothing/launcher/setting/screenlayout/a;

    invoke-static {v1}, Lkotlin/jvm/internal/b0;->b(Ljava/lang/Class;)Lf6/c;

    move-result-object v1

    new-instance v2, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$c;

    invoke-direct {v2, p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$c;-><init>(Landroidx/fragment/app/Fragment;)V

    new-instance v3, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$d;

    const/4 v4, 0x0

    invoke-direct {v3, v4, p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$d;-><init>(Ly5/a;Landroidx/fragment/app/Fragment;)V

    if-nez v0, :cond_0

    new-instance v0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$e;

    invoke-direct {v0, p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$e;-><init>(Landroidx/fragment/app/Fragment;)V

    :cond_0
    invoke-static {p0, v1, v2, v3, v0}, Landroidx/fragment/app/FragmentViewModelLazyKt;->createViewModelLazy(Landroidx/fragment/app/Fragment;Lf6/c;Ly5/a;Ly5/a;Ly5/a;)Ln5/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->r:Ln5/e;

    return-void
.end method

.method public static final synthetic n(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Li6/v1;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->n:Li6/v1;

    return-object p0
.end method

.method public static final synthetic o(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Lcom/android/launcher3/util/RunnableList;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->o:Lcom/android/launcher3/util/RunnableList;

    return-object p0
.end method

.method public static final synthetic p(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->t()Z

    move-result p0

    return p0
.end method

.method public static final synthetic q(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/v1;)V
    .locals 0

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->n:Li6/v1;

    return-void
.end method

.method public static final synthetic r(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;J)V
    .locals 0

    iput-wide p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->m:J

    return-void
.end method

.method private final t()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->m:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public c(I)Lcom/nothing/launcher/setting/PreviewItemFragment;
    .locals 0

    sget-object p0, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;->k:Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;

    invoke-virtual {p0, p1}, Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment$a;->a(I)Lcom/nothing/launcher/setting/screenlayout/LayoutConfigPreviewItemFragment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic e()Ln4/d;
    .locals 0

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->s()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p0

    return-object p0
.end method

.method public f()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->l:Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->previewViewPager:Landroidx/viewpager2/widget/ViewPager2;

    const-string v0, "binding.previewViewPager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->q:F

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->p:F

    return p0
.end method

.method public m()V
    .locals 10

    invoke-super {p0}, Lcom/nothing/launcher/setting/BaseHomePreviewFragment;->m()V

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/util/Themes;->getActivityThemeRes(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    sget-object v1, Li6/j0;->c:Li6/j0$a;

    new-instance v2, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$f;

    invoke-direct {v2, v1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$f;-><init>(Li6/j0$a;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v3, "viewLifecycleOwner"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v4

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v5

    new-instance v7, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g;

    const/4 v1, 0x0

    invoke-direct {v7, p0, v2, v0, v1}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment$g;-><init>(Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;Li6/j0;Landroid/view/ContextThemeWrapper;Lq5/d;)V

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->s()Lcom/nothing/launcher/setting/screenlayout/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;->setViewModel(Lcom/nothing/launcher/setting/screenlayout/a;)V

    const-string p2, "it"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->l:Lcom/android/launcher3/databinding/FragmentScreenLayoutConfigBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "inflate(inflater).let {\n\u2026 it\n        it.root\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->n:Li6/v1;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "onDestroyView"

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Li6/v1;->b(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->o:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    return-void
.end method

.method public s()Lcom/nothing/launcher/setting/screenlayout/a;
    .locals 0

    iget-object p0, p0, Lcom/nothing/launcher/setting/screenlayout/ScreenLayoutConfigFragment;->r:Ln5/e;

    invoke-interface {p0}, Ln5/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/nothing/launcher/setting/screenlayout/a;

    return-object p0
.end method
