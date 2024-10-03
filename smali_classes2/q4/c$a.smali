.class public final Lq4/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lq4/c$a;->a:Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;

    return-void
.end method


# virtual methods
.method public final a(Lr4/a;)V
    .locals 3

    const-string v0, "displayedIconEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lq4/c$a;->a:Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;

    new-instance v0, Ls4/c;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "root.context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/n;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ls4/c;-><init>(Landroid/content/Context;Lr4/a;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/databinding/SingleIconPackItemLayoutBinding;->setViewModel(Ls4/c;)V

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->executePendingBindings()V

    return-void
.end method
