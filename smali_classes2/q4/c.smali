.class public final Lq4/c;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq4/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lr4/a;",
        "Lq4/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ly5/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly5/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/view/animation/PathInterpolator;

.field private final d:J

.field private e:Z

.field private f:I

.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lq4/a;

    invoke-direct {v0}, Lq4/a;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    iput-object p1, p0, Lq4/c;->a:Landroid/content/Context;

    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lq4/c;->c:Landroid/view/animation/PathInterpolator;

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lq4/c;->d:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lq4/c;->e:Z

    return-void
.end method

.method public static synthetic a(Lq4/c;ILq4/c$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lq4/c;->g(Lq4/c;ILq4/c$a;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lq4/c;Lr4/a;)I
    .locals 0

    invoke-direct {p0, p1}, Lq4/c;->d(Lr4/a;)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lq4/c;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lq4/c;->j(II)V

    return-void
.end method

.method private final d(Lr4/a;)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static final g(Lq4/c;ILq4/c$a;Landroid/view/View;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$holder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/a;

    invoke-virtual {v0}, Lr4/a;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "it"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Landroidx/lifecycle/ViewKt;->findViewTreeLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Li6/b1;->b()Li6/i0;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lq4/c$b;

    invoke-direct {v5, p0, p1, v0, v1}, Lq4/c$b;-><init>(Lq4/c;ILr4/a;Lq5/d;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Li6/h;->b(Li6/m0;Lq5/g;Li6/o0;Ly5/p;ILjava/lang/Object;)Li6/v1;

    :cond_0
    iget-object p1, p0, Lq4/c;->g:Landroid/view/View;

    if-eqz p1, :cond_3

    const-string p3, "lastSelectedItemView"

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lq4/c;->g:Landroid/view/View;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/n;->t(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v1, p1}, Lq4/c;->i(Landroid/view/View;Landroid/view/View;)V

    :cond_3
    return-void

    :cond_4
    sget-object p1, Lz4/a;->a:Lz4/a;

    iget-object p0, p0, Lq4/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lz4/a;->m(Landroid/content/Context;)V

    return-void
.end method

.method private final i(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const v0, 0x7f0b00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v6

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v0, v2, v6

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-wide v2, p0, Lq4/c;->d:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object p1, p0, Lq4/c;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iput-object p2, p0, Lq4/c;->g:Landroid/view/View;

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final j(II)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public final e()Ly5/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly5/l<",
            "Ljava/lang/Integer;",
            "Ln5/t;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lq4/c;->b:Ly5/l;

    return-object p0
.end method

.method public f(Lq4/c$a;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/a;

    const-string v1, "item"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lq4/c$a;->a(Lr4/a;)V

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-boolean v2, p0, Lq4/c;->e:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lr4/a;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v4, "holder.itemView"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, p0, Lq4/c;->g:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :goto_0
    iget v2, p0, Lq4/c;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lq4/c;->f:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getItemCount()I

    move-result v4

    if-ne v2, v4, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lq4/c;->e:Z

    :cond_1
    invoke-virtual {v0}, Lr4/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lq4/b;

    invoke-direct {v1, p0, p2, p1}, Lq4/b;-><init>(Lq4/c;ILq4/c$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lq4/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method public h(Landroid/view/ViewGroup;I)Lq4/c$a;
    .locals 2

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lq4/c$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0e0139

    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    const-string p2, "inflate(\n               \u2026      false\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;

    invoke-direct {p0, p1}, Lq4/c$a;-><init>(Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;)V

    return-object p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lq4/c$a;

    invoke-virtual {p0, p1, p2}, Lq4/c;->f(Lq4/c$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq4/c;->h(Landroid/view/ViewGroup;I)Lq4/c$a;

    move-result-object p0

    return-object p0
.end method
